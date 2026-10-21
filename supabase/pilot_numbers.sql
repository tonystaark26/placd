-- =====================================================================
-- ChaiCase pilot numbers
--
-- Read-only: it changes nothing, so run it as often as you like.
-- Supabase → SQL Editor → New snippet → paste all of this → Run.
--
-- Counts only people who joined on or after the pilot start date, and
-- leaves out admin accounts (you). Before the pilot starts, change the
-- date below to its first day. All dates are Indian time.
-- =====================================================================

with settings as (
  select date '2026-10-26' as start_day,
         (now() at time zone 'Asia/Kolkata')::date as today
),
pilot_users as (
  select u.id,
         coalesce(u.is_anonymous, false) as is_guest,
         (u.created_at at time zone 'Asia/Kolkata')::date as joined_day
  from auth.users u, settings s
  where (u.created_at at time zone 'Asia/Kolkata')::date >= s.start_day
    and u.id not in (select user_id from admins)
),
sessions as (
  select d.user_id, d.session_date, d.score, d.total, p.joined_day
  from daily_sessions d
  join pilot_users p on p.id = d.user_id
),
per_user as (
  select user_id,
         count(*)          as quiz_days,
         max(session_date) as last_day,
         max(joined_day)   as joined_day
  from sessions
  group by user_id
)
select 1 as n, 'Joined with Google' as measure,
       (select count(*) from pilot_users where not is_guest)::text as value
union all select 2, 'Tried as a guest',
       (select count(*) from pilot_users where is_guest)::text
union all select 3, 'Did at least one quiz',
       (select count(*) from per_user)::text
union all select 4, 'Came back for a quiz on a 2nd day',
       (select count(*) from per_user where quiz_days >= 2)::text
union all select 5, 'Did the quiz on 5+ different days',
       (select count(*) from per_user where quiz_days >= 5)::text
union all select 6, 'Did today''s quiz',
       (select count(*) from per_user, settings where last_day = today)::text
union all select 7, 'Did a quiz in the last 7 days',
       (select count(*) from per_user, settings where last_day > today - 7)::text
union all select 8, 'Still doing quizzes a week after joining',
       (select count(*) from per_user where last_day >= joined_day + 7)::text
union all select 9, 'Average quiz score',
       (select coalesce(round(100.0 * sum(score) / nullif(sum(total), 0)) || '%', 'none yet') from sessions)
union all select 10, 'Feedback messages',
       (select count(*) from feedback, settings
        where (created_at at time zone 'Asia/Kolkata')::date >= start_day)::text
order by n;
