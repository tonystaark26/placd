-- =====================================================================
-- PLACED database, version 5: the daily news brief and the admin role
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Safe to run again.
--
-- Students only ever see APPROVED stories. Admins (you) can see drafts,
-- approve them, edit them and delete them, from the app's approval page.
-- =====================================================================


-- ---------------------------------------------------------------------
-- PART A · ADMINS
-- ---------------------------------------------------------------------

-- Who may approve news. Rows are added only from the SQL Editor, never from the app.
create table if not exists admins (
  user_id uuid primary key references auth.users(id) on delete cascade,
  added_at timestamptz not null default now()
);
alter table admins enable row level security;
drop policy if exists "Admins can see their own row" on admins;
create policy "Admins can see their own row" on admins
  for select to authenticated using (auth.uid() = user_id);

-- True when the signed-in person is an admin
create or replace function public.is_admin()
returns boolean
language sql stable security definer set search_path = public
as $$
  select exists (select 1 from admins where user_id = auth.uid())
$$;
grant execute on function public.is_admin() to authenticated;


-- ---------------------------------------------------------------------
-- PART B · NEWS STORIES
-- ---------------------------------------------------------------------

-- One line explaining how the story connects to its concept card
alter table news_stories add column if not exists concept_note text;
-- A stable name for each story (e.g. '2026-10-18-gst-collections'), so re-running the file
-- updates stories instead of duplicating them
alter table news_stories add column if not exists slug text unique;

-- Students: approved stories only (this rule already exists from version 1).
-- Admins: everything, plus the right to approve, edit and delete.
drop policy if exists "Admins read all news" on news_stories;
drop policy if exists "Admins add news" on news_stories;
drop policy if exists "Admins change news" on news_stories;
drop policy if exists "Admins delete news" on news_stories;
create policy "Admins read all news" on news_stories
  for select to authenticated using (is_admin());
create policy "Admins add news" on news_stories
  for insert to authenticated with check (is_admin());
create policy "Admins change news" on news_stories
  for update to authenticated using (is_admin()) with check (is_admin());
create policy "Admins delete news" on news_stories
  for delete to authenticated using (is_admin());
