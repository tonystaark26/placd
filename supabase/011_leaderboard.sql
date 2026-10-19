-- =====================================================================
-- ChaiCase database, version 11: the leaderboard
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Safe to run again.
--
-- Two boards: THIS WEEK (XP earned since Monday, India time; everyone starts
-- level each week, so newcomers can climb) and ALL TIME (total XP).
-- Only real accounts appear (guests have no profile), and only by their
-- display name. Students can't read each other's daily results directly;
-- this function returns just the ranked names, XP and streaks.
-- =====================================================================

create or replace function public.leaderboard(p_period text default 'week')
returns table (rank int, alias text, xp int, streak int, is_me boolean)
language sql stable security definer set search_path = public
as $$
  with week_start as (
    select date_trunc('week', ist_today()::timestamp)::date as d   -- Monday of this week
  ),
  scores as (
    select
      p.id,
      p.alias,
      -- the same "live" streak the app shows: kept if active yesterday or today,
      -- or the day before that when a streak freeze is available
      case
        when p.last_active_date >= ist_today() - 1 then p.streak
        when p.last_active_date = ist_today() - 2 and p.freezes_left > 0 then p.streak
        else 0
      end as streak,
      case
        when p_period = 'all' then p.xp
        else coalesce((
          select sum(s.xp_earned) from daily_sessions s
          where s.user_id = p.id and s.session_date >= (select d from week_start)
        ), 0)::int
      end as xp
    from profiles p
  ),
  ranked as (
    select id, alias, xp, streak, (rank() over (order by xp desc))::int as rank
    from scores
    where xp > 0
  )
  select rank, alias, xp, streak, id = auth.uid() as is_me
  from ranked
  where rank <= 25 or id = auth.uid()   -- the top 25, plus you wherever you are
  order by rank, alias;
$$;

revoke all on function public.leaderboard(text) from public;
grant execute on function public.leaderboard(text) to authenticated;

-- Check: this week's top of the board
select * from leaderboard('week') limit 5;
