-- =====================================================================
-- ChaiCase database, version 7: when each news story was published
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Safe to run again.
--
-- Chai & Charts is today's news only. Each story records when its source
-- published it; scripts/news-to-sql.mjs refuses anything older than 24 hours,
-- and the app shows the time on every story.
-- =====================================================================

alter table news_stories add column if not exists published_at timestamptz;

-- Check: the new column exists
select column_name, data_type from information_schema.columns
where table_name = 'news_stories' and column_name = 'published_at';
