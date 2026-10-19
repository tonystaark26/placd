-- =====================================================================
-- ChaiCase database, version 9: the automatic news "upload door"
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Safe to run again.
--
-- Every morning a scheduled cloud job researches the day's Chai & Charts brief
-- and calls ingest_news() to publish it, with no manual SQL or approval step.
--
-- The door is deliberately narrow:
--   • it needs a secret upload key (only its SHA-256 fingerprint is stored here;
--     the key itself lives in the cloud job's settings, never in GitHub or chat)
--   • it can only replace TODAY's (India time) news, nothing else in the database
--   • it re-checks the brief's rules itself: at least 10 stories, ranks 1..n,
--     every source published within 24 hours (from 7 AM IST the previous day),
--     a hook for every story, https sources, at most one "today's pick"
-- If any rule fails, nothing is changed and the job gets an error back.
-- Stories go live straight away (status 'approved'), as the user decided on
-- 19 Oct 2026; any story can still be taken down on the approval page.
-- =====================================================================

create extension if not exists pgcrypto with schema extensions;

-- Fingerprints of the allowed upload keys. No policies: the API can never read this table.
create table if not exists news_ingest_keys (
  id         int generated always as identity primary key,
  key_hash   text not null unique,     -- sha256 hex of the key
  label      text,
  created_at timestamptz not null default now()
);
alter table news_ingest_keys enable row level security;

create or replace function public.ingest_news(p_key text, p_day date, p_stories jsonb)
returns jsonb
language plpgsql security definer set search_path = public, extensions
as $$
declare
  v_start timestamptz := (((p_day - 1)::timestamp + time '07:00') at time zone 'Asia/Kolkata');
  v_end   timestamptz := ((p_day::timestamp + time '23:59:59') at time zone 'Asia/Kolkata');
  v_n     int;
  s       jsonb;
  v_slugs text[];
begin
  if p_key is null or not exists (
    select 1 from news_ingest_keys where key_hash = encode(digest(p_key, 'sha256'), 'hex')
  ) then
    raise exception 'Upload key not recognised';
  end if;

  if p_day is distinct from ist_today() then
    raise exception 'Only today''s brief (%) can be uploaded, not %', ist_today(), p_day;
  end if;

  if jsonb_typeof(p_stories) <> 'array' then
    raise exception 'Stories must be a list';
  end if;
  v_n := jsonb_array_length(p_stories);
  if v_n < 10 then
    raise exception 'The brief needs at least 10 stories, got %', v_n;
  end if;

  if (select count(*) from jsonb_array_elements(p_stories) e where coalesce((e->>'featured')::boolean, false)) > 1 then
    raise exception 'Only one story can be today''s pick';
  end if;

  if (select array_agg((e->>'rank')::int order by (e->>'rank')::int) from jsonb_array_elements(p_stories) e)
     is distinct from (select array_agg(g order by g) from generate_series(1, v_n) g) then
    raise exception 'Ranks must be 1 to % with no gaps or repeats', v_n;
  end if;

  for s in select value from jsonb_array_elements(p_stories) loop
    if coalesce(s->>'headline', '') = '' or coalesce(s->>'summary', '') = ''
       or coalesce(s->>'source_name', '') = '' or coalesce(s->>'teaser_title', '') = ''
       or coalesce(s->>'teaser', '') = '' then
      raise exception 'Story % is missing its headline, summary, source or hook', s->>'slug';
    end if;
    if left(coalesce(s->>'slug', ''), 10) <> p_day::text then
      raise exception 'Story slug % must start with %', s->>'slug', p_day;
    end if;
    if coalesce(s->>'source_url', '') not like 'https://%' then
      raise exception 'Story % needs an https source link', s->>'slug';
    end if;
    if (s->>'published') is null or (s->>'published')::timestamptz not between v_start and v_end then
      raise exception 'Story % was published outside the 24-hour window', s->>'slug';
    end if;
  end loop;

  select array_agg(e->>'slug') into v_slugs from jsonb_array_elements(p_stories) e;

  -- The upload is the whole day: drop today's stories that aren't in it, and reset the pick
  delete from news_stories where publish_date = p_day and (slug is null or not (slug = any (v_slugs)));
  update news_stories set featured = false where publish_date = p_day and featured;

  insert into news_stories (slug, publish_date, lane, tag, headline, summary, concept_note,
                            source_name, source_url, card_id, status, teaser_title, teaser,
                            featured, published_at, rank)
  select e->>'slug', p_day, e->>'lane', nullif(e->>'tag', ''), e->>'headline', e->>'summary',
         nullif(e->>'concept_note', ''), e->>'source_name', e->>'source_url', nullif(e->>'card', ''),
         'approved', e->>'teaser_title', e->>'teaser', coalesce((e->>'featured')::boolean, false),
         (e->>'published')::timestamptz, (e->>'rank')::int
  from jsonb_array_elements(p_stories) e
  on conflict (slug) do update set
    publish_date = excluded.publish_date, lane = excluded.lane, tag = excluded.tag,
    headline = excluded.headline, summary = excluded.summary, concept_note = excluded.concept_note,
    source_name = excluded.source_name, source_url = excluded.source_url, card_id = excluded.card_id,
    status = 'approved', teaser_title = excluded.teaser_title, teaser = excluded.teaser,
    featured = excluded.featured, published_at = excluded.published_at, rank = excluded.rank;

  return jsonb_build_object('day', p_day, 'stories', v_n, 'status', 'live');
end;
$$;

revoke all on function public.ingest_news(text, date, jsonb) from public;
grant execute on function public.ingest_news(text, date, jsonb) to anon, authenticated;

-- Check: the door exists
select proname from pg_proc where proname = 'ingest_news';
