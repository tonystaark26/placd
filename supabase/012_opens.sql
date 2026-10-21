-- =====================================================================
-- ChaiCase database, version 12: what students open
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Safe to run again.
--
-- Records, once per person per day, which cards and news they open, so the
-- pilot can see what students actually use (not just the quiz):
--   card           opened a concept card         (item = card id)
--   news           opened Chai & Charts          (no item)
--   story_concept  tapped "Concept behind this"  (item = story id)
--   story_source   tapped a story's source link  (item = story id)
-- Students can only add their own opens, through record_open(). Nobody can
-- read them from the app; you see them as totals in pilot_numbers.sql.
-- =====================================================================

create table if not exists opens (
  user_id    uuid not null references auth.users(id) on delete cascade,
  kind       text not null check (kind in ('card', 'news', 'story_concept', 'story_source')),
  item_id    text not null default '' check (char_length(item_id) <= 64),
  opened_on  date not null,                         -- Indian date
  first_at   timestamptz not null default now(),    -- first time that day
  primary key (user_id, kind, item_id, opened_on)
);
alter table opens enable row level security;     -- no policies: the app can't read or write it directly
revoke all on opens from anon, authenticated;

create or replace function record_open(p_kind text, p_item text default '')
returns void
language sql
security definer
set search_path = public
as $$
  insert into opens (user_id, kind, item_id, opened_on)
  select auth.uid(), p_kind, left(coalesce(p_item, ''), 64), (now() at time zone 'Asia/Kolkata')::date
  where auth.uid() is not null
    and p_kind in ('card', 'news', 'story_concept', 'story_source')
  on conflict do nothing;
$$;
revoke execute on function record_open(text, text) from public, anon;
grant execute on function record_open(text, text) to authenticated;

-- Check: the table exists (0 until students start opening things)
select count(*) as opens_recorded from opens;
