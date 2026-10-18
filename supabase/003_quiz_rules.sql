-- =====================================================================
-- ChaiCase database, version 3: daily quiz, streaks and XP
-- Run in Supabase: SQL Editor → New snippet → paste → Run. Safe to run again after edits.
--
-- The big idea: scoring happens INSIDE the database, never in the browser.
-- Students can read their own progress, but XP, streaks and revision dates
-- can only change through the two functions at the bottom, which check
-- every answer themselves. That keeps the leaderboard fair.
-- =====================================================================


-- ---------------------------------------------------------------------
-- PART A · NEW COLUMNS
-- ---------------------------------------------------------------------

-- Which week the streak freeze was last refilled (e.g. '2026-42'): 1 freeze per week
alter table profiles add column if not exists freeze_week text;

-- A stable name for each quiz question (e.g. 'econ-03-case'), so re-running the
-- question file updates questions instead of duplicating them
alter table quiz_questions add column if not exists slug text unique;


-- ---------------------------------------------------------------------
-- PART B · TIGHTER SECURITY RULES
-- ---------------------------------------------------------------------

-- Profiles: students may set only their name and preferences.
-- XP, streak and freezes can only change through the functions below.
revoke insert, update on profiles from anon, authenticated;
grant insert (id, alias, daily_minutes, subjects) on profiles to authenticated;
grant update (alias, daily_minutes, subjects) on profiles to authenticated;

-- Only real accounts (not guests) can claim a display name and join the leaderboard
drop policy if exists "Users create their own profile" on profiles;
drop policy if exists "Real accounts create their own profile" on profiles;
create policy "Real accounts create their own profile" on profiles
  for insert to authenticated
  with check (auth.uid() = id and coalesce((auth.jwt() ->> 'is_anonymous')::boolean, false) = false);

-- Progress, answers and daily results: students can READ their own, but not write them directly
drop policy if exists "Own card progress" on card_progress;
drop policy if exists "Own quiz attempts" on quiz_attempts;
drop policy if exists "Own daily sessions" on daily_sessions;
drop policy if exists "Read own card progress" on card_progress;
drop policy if exists "Read own quiz attempts" on quiz_attempts;
drop policy if exists "Read own daily sessions" on daily_sessions;
create policy "Read own card progress" on card_progress
  for select to authenticated using (auth.uid() = user_id);
create policy "Read own quiz attempts" on quiz_attempts
  for select to authenticated using (auth.uid() = user_id);
create policy "Read own daily sessions" on daily_sessions
  for select to authenticated using (auth.uid() = user_id);

-- Hide the right answer and explanation until a student has answered
revoke select on quiz_questions from anon, authenticated;
grant select (id, slug, card_id, story_id, kind, question, options, status, created_at)
  on quiz_questions to anon, authenticated;


-- ---------------------------------------------------------------------
-- PART C · THE SCORING FUNCTIONS
-- ---------------------------------------------------------------------

-- Today's date in India, so a "day" ends at midnight IST, not in London
create or replace function public.ist_today()
returns date language sql stable as $$
  select (now() at time zone 'Asia/Kolkata')::date
$$;

-- Called once per answer. Checks it, records it, and schedules the card's next revision.
-- Only the FIRST attempt at a question each day counts.
create or replace function public.answer_question(p_question_id bigint, p_choice int)
returns jsonb
language plpgsql security definer set search_path = public
as $$
declare
  v_user    uuid := auth.uid();
  v_today   date := ist_today();
  v_q       quiz_questions%rowtype;
  v_correct boolean;
  v_first   boolean;
  v_box     int;
  v_gap     int[] := array[1, 3, 7, 14, 30];  -- days until the next revision, by box
begin
  if v_user is null then
    raise exception 'Please sign in first';
  end if;

  select * into v_q from quiz_questions where id = p_question_id and status = 'approved';
  if not found then
    raise exception 'Question not found';
  end if;

  v_correct := (p_choice = v_q.answer_index);

  select not exists (
    select 1 from quiz_attempts
    where user_id = v_user and question_id = p_question_id
      and (answered_at at time zone 'Asia/Kolkata')::date = v_today
  ) into v_first;

  insert into quiz_attempts (user_id, question_id, chosen_index, is_correct)
  values (v_user, p_question_id, p_choice, v_correct);

  -- Spaced repetition (Leitner boxes): right → up a box, comes back later; wrong → box 1, tomorrow
  if v_first then
    select box into v_box from card_progress where user_id = v_user and card_id = v_q.card_id;
    v_box := case when v_correct then least(coalesce(v_box, 1) + 1, 5) else 1 end;

    insert into card_progress (user_id, card_id, box, due_date, correct_count, wrong_count)
    values (v_user, v_q.card_id, v_box, v_today + v_gap[v_box],
            case when v_correct then 1 else 0 end, case when v_correct then 0 else 1 end)
    on conflict (user_id, card_id) do update set
      box = excluded.box,
      due_date = excluded.due_date,
      correct_count = card_progress.correct_count + excluded.correct_count,
      wrong_count = card_progress.wrong_count + excluded.wrong_count;
  end if;

  return jsonb_build_object(
    'correct', v_correct,
    'answer_index', v_q.answer_index,
    'explanation', v_q.explanation,
    'card_id', v_q.card_id
  );
end;
$$;

-- Called at the end of the daily quiz. Works out the score, XP and streak, once per day.
create or replace function public.finish_daily_quiz()
returns jsonb
language plpgsql security definer set search_path = public
as $$
declare
  v_user        uuid := auth.uid();
  v_today       date := ist_today();
  v_week        text := to_char(ist_today(), 'IYYY-IW');
  v_existing    daily_sessions%rowtype;
  v_p           profiles%rowtype;
  v_n           int;
  v_total       int;
  v_score       int;
  v_xp          int;
  v_streak      int := 0;
  v_freezes     int;
  v_freeze_used boolean := false;
begin
  if v_user is null then
    raise exception 'Please sign in first';
  end if;

  select * into v_p from profiles where id = v_user;

  -- Already finished today? Just show the same result again (no extra XP).
  select * into v_existing from daily_sessions where user_id = v_user and session_date = v_today;
  if found then
    return jsonb_build_object(
      'score', v_existing.score, 'total', v_existing.total, 'xp_earned', v_existing.xp_earned,
      'streak', coalesce(v_p.streak, 0), 'xp_total', coalesce(v_p.xp, 0),
      'freeze_used', false, 'already_done', true, 'saved', v_p.id is not null
    );
  end if;

  -- Quiz length depends on the daily time the student chose: 5 → 5, 10 → 7, 15 → 10 questions
  v_n := case coalesce(v_p.daily_minutes, 10) when 5 then 5 when 15 then 10 else 7 end;

  -- Score = first attempts today, capped at the quiz length (so nobody can farm extra XP)
  with firsts as (
    select distinct on (question_id) is_correct
    from quiz_attempts
    where user_id = v_user and (answered_at at time zone 'Asia/Kolkata')::date = v_today
    order by question_id, answered_at
  )
  select count(*), count(*) filter (where is_correct) into v_total, v_score from firsts;

  if v_total = 0 then
    raise exception 'Answer at least one question first';
  end if;
  v_total := least(v_total, v_n);
  v_score := least(v_score, v_total);
  v_xp    := v_score * 10 + 20;  -- 10 XP per right answer + 20 for finishing

  insert into daily_sessions (user_id, session_date, score, total, xp_earned)
  values (v_user, v_today, v_score, v_total, v_xp);

  -- Streaks and XP are only kept for real accounts (guests have no profile)
  if v_p.id is not null then
    v_freezes := case when v_p.freeze_week is distinct from v_week then 1 else v_p.freezes_left end;

    if v_p.last_active_date = v_today - 1 then
      v_streak := v_p.streak + 1;                       -- came back the next day
    elsif v_p.last_active_date = v_today - 2 and v_freezes > 0 then
      v_streak := v_p.streak + 1;                       -- missed one day: the weekly freeze saves it
      v_freezes := v_freezes - 1;
      v_freeze_used := true;
    else
      v_streak := 1;                                    -- first day, or the streak broke
    end if;

    update profiles set
      xp = xp + v_xp,
      streak = v_streak,
      last_active_date = v_today,
      freezes_left = v_freezes,
      freeze_week = v_week
    where id = v_user;
  end if;

  return jsonb_build_object(
    'score', v_score, 'total', v_total, 'xp_earned', v_xp,
    'streak', v_streak, 'xp_total', coalesce(v_p.xp, 0) + v_xp,
    'freeze_used', v_freeze_used, 'already_done', false, 'saved', v_p.id is not null
  );
end;
$$;

-- Only signed-in students (including guests) may call the scoring functions
revoke all on function public.answer_question(bigint, int) from public, anon;
revoke all on function public.finish_daily_quiz() from public, anon;
grant execute on function public.answer_question(bigint, int) to authenticated;
grant execute on function public.finish_daily_quiz() to authenticated;
