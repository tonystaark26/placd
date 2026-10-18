-- =====================================================================
-- PLACED database, version 8: rank each day's stories by news value
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Safe to run again.
--
-- Chai & Charts carries at least 10 stories a day. Each gets a rank (1 = the
-- most important story of the day); the app shows the top stories first, so
-- the split between Global, India, Kolkata and Recruiter Watch follows what
-- actually mattered that day.
-- =====================================================================

alter table news_stories add column if not exists rank int;

-- Check: the new column exists
select column_name, data_type from information_schema.columns
where table_name = 'news_stories' and column_name = 'rank';
