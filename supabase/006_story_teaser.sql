-- =====================================================================
-- ChaiCase database, version 6: "today's pick", one story told as a story
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Safe to run again.
--
-- Each day, one story can be FEATURED. It gets a short teaser in story language
-- that appears on the Study Desk and on the welcome page to pull readers in.
-- The existing rules still apply: students and visitors only ever see APPROVED
-- stories, and only admins can change anything.
-- =====================================================================

alter table news_stories add column if not exists teaser_title text;   -- the hook line
alter table news_stories add column if not exists teaser text;         -- two or three sentences
alter table news_stories add column if not exists featured boolean not null default false;

-- At most one featured story per day
create unique index if not exists news_one_featured_per_day
  on news_stories (publish_date) where featured;

-- Check: the new columns exist
select column_name from information_schema.columns
where table_name = 'news_stories' and column_name in ('teaser_title', 'teaser', 'featured')
order by column_name;
