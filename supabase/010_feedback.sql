-- =====================================================================
-- ChaiCase database, version 10: feedback from students
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Safe to run again.
--
-- Every screen has a "Feedback" button. Anyone using the app (signed-in
-- students, guests, and visitors on the welcome page) can SEND a message;
-- only admins can READ messages or mark them done, on the app's Feedback page.
-- =====================================================================

create table if not exists feedback (
  id          bigint generated always as identity primary key,
  created_at  timestamptz not null default now(),
  user_id     uuid default auth.uid() references auth.users(id) on delete set null,
  kind        text not null default 'idea' check (kind in ('idea', 'problem', 'content', 'other')),
  message     text not null check (char_length(btrim(message)) between 3 and 2000),
  page        text check (char_length(page) <= 200),       -- which screen it was sent from
  status      text not null default 'new' check (status in ('new', 'done'))
);
alter table feedback enable row level security;

-- Anyone can send feedback, as themselves only (user_id is filled in by the database)
drop policy if exists "Anyone can send feedback" on feedback;
create policy "Anyone can send feedback" on feedback
  for insert to anon, authenticated
  with check (user_id is not distinct from auth.uid() and status = 'new');

-- Only admins can read it and mark it done
drop policy if exists "Admins read feedback" on feedback;
drop policy if exists "Admins update feedback" on feedback;
create policy "Admins read feedback" on feedback
  for select to authenticated using (is_admin());
create policy "Admins update feedback" on feedback
  for update to authenticated using (is_admin()) with check (is_admin());

-- Students may only write these columns (the rest come from the database)
revoke insert on feedback from anon, authenticated;
grant insert (kind, message, page) on feedback to anon, authenticated;
grant select, update (status) on feedback to authenticated;

-- Check: the table exists
select count(*) as feedback_messages from feedback;
