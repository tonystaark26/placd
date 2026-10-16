-- =====================================================================
-- PLACED database, version 1
-- Run this ONCE in Supabase: Dashboard → SQL Editor → New query → paste → Run.
--
-- Think of each "table" as an Excel sheet: columns are fields, rows are records.
-- Part A holds CONTENT (same for every student).
-- Part B holds each STUDENT's own data.
-- Part C sets the SECURITY RULES (who can read or change what).
-- =====================================================================


-- ---------------------------------------------------------------------
-- PART A · CONTENT
-- ---------------------------------------------------------------------

-- Subjects: Managerial Economics, Finance, Marketing…
create table subjects (
  id    text primary key,              -- short code, e.g. 'econ'
  name  text not null,                 -- 'Managerial Economics'
  sort  int  not null default 0        -- display order
);

-- Concept cards: one row per card, same parts as content/CARD_FORMAT.md
create table concept_cards (
  id           text primary key,       -- short code, e.g. 'pe' (price elasticity)
  subject_id   text not null references subjects(id),
  num          int  not null,          -- card number shown to students
  title        text not null,
  one_line     text not null,          -- "In one line"
  explain      text not null,          -- "Explain it simply"
  example      text not null,          -- "The ₹100 example"
  interview_q  text not null,          -- "How interviewers ask it"
  interview_a  text not null,          -- the strong answer
  trap         text,                   -- "Common trap"
  source       text,                   -- which file/page in materials/
  status       text not null default 'draft'
               check (status in ('draft', 'reviewed', 'verified')),
  created_at   timestamptz not null default now(),
  unique (subject_id, num)
);

-- News stories: the daily brief. Students only see 'approved' ones.
create table news_stories (
  id           bigint generated always as identity primary key,
  publish_date date not null,          -- which day's brief it belongs to
  lane         text not null check (lane in ('global', 'india', 'local', 'recruiter')),
  tag          text,                   -- 'TAX', 'HUL', 'TELECOM'…
  headline     text not null,          -- written by us, never copied
  summary      text not null,          -- written by us, never copied
  source_name  text not null,          -- e.g. 'Business Standard'
  source_url   text not null,          -- link to the original article
  card_id      text references concept_cards(id),   -- "Concept behind this"
  status       text not null default 'draft' check (status in ('draft', 'approved')),
  created_at   timestamptz not null default now()
);

-- Quiz questions: each one tests a concept card, optionally tied to a news story
create table quiz_questions (
  id            bigint generated always as identity primary key,
  card_id       text not null references concept_cards(id),
  story_id      bigint references news_stories(id),
  kind          text not null check (kind in ('news', 'concept', 'application', 'case')),
  question      text not null,
  options       jsonb not null,        -- list of answer choices, e.g. ["A","B","C","D"]
  answer_index  int  not null,         -- which choice is right (0 = first)
  explanation   text not null,         -- shown after answering
  status        text not null default 'draft' check (status in ('draft', 'approved')),
  created_at    timestamptz not null default now()
);


-- ---------------------------------------------------------------------
-- PART B · EACH STUDENT'S OWN DATA
-- (auth.users is Supabase's built-in list of logged-in accounts)
-- ---------------------------------------------------------------------

-- Profile: what they chose at onboarding + their streak and XP
create table profiles (
  id                uuid primary key references auth.users(id) on delete cascade,
  alias             text not null unique
                    check (char_length(alias) between 3 and 24),   -- leaderboard name
  daily_minutes     int  not null default 10 check (daily_minutes in (5, 10, 15)),
  subjects          text[] not null default '{econ}',
  xp                int  not null default 0,
  streak            int  not null default 0,
  last_active_date  date,
  freezes_left      int  not null default 1,   -- 1 streak freeze per week
  created_at        timestamptz not null default now()
);

-- Card progress: powers spaced repetition.
-- Each card sits in a "box" from 1 to 5. Remembered → it moves up a box and comes
-- back later (1, 3, 7, 14, 30 days). Forgotten → back to box 1, due tomorrow.
create table card_progress (
  user_id        uuid not null references auth.users(id) on delete cascade,
  card_id        text not null references concept_cards(id) on delete cascade,
  box            int  not null default 1 check (box between 1 and 5),
  due_date       date not null default current_date,
  correct_count  int  not null default 0,
  wrong_count    int  not null default 0,
  primary key (user_id, card_id)
);

-- Every quiz answer, so we can see which concepts students struggle with
create table quiz_attempts (
  id            bigint generated always as identity primary key,
  user_id       uuid not null references auth.users(id) on delete cascade,
  question_id   bigint not null references quiz_questions(id) on delete cascade,
  chosen_index  int not null,
  is_correct    boolean not null,
  answered_at   timestamptz not null default now()
);

-- One row per student per day: the daily result screen
create table daily_sessions (
  user_id       uuid not null references auth.users(id) on delete cascade,
  session_date  date not null,
  score         int  not null,
  total         int  not null,
  xp_earned     int  not null default 0,
  primary key (user_id, session_date)
);


-- ---------------------------------------------------------------------
-- PART C · SECURITY RULES ("Row Level Security")
-- Without these, anyone could read or change anything. With them:
--   · content is readable, but only we can change it (from the dashboard)
--   · students can only see and change THEIR OWN progress
--   · the leaderboard shows aliases and XP, never real names or emails
-- ---------------------------------------------------------------------

alter table subjects        enable row level security;
alter table concept_cards   enable row level security;
alter table news_stories    enable row level security;
alter table quiz_questions  enable row level security;
alter table profiles        enable row level security;
alter table card_progress   enable row level security;
alter table quiz_attempts   enable row level security;
alter table daily_sessions  enable row level security;

-- Content: anyone can read; only approved news and questions are visible
create policy "Anyone can read subjects"       on subjects       for select using (true);
create policy "Anyone can read concept cards"  on concept_cards  for select using (true);
create policy "Anyone can read approved news"  on news_stories   for select using (status = 'approved');
create policy "Anyone can read approved quiz"  on quiz_questions for select using (status = 'approved');

-- Profiles: logged-in students can see others' alias/XP (leaderboard), but only edit their own
create policy "Logged-in users can read profiles" on profiles
  for select to authenticated using (true);
create policy "Users create their own profile" on profiles
  for insert to authenticated with check (auth.uid() = id);
create policy "Users update their own profile" on profiles
  for update to authenticated using (auth.uid() = id) with check (auth.uid() = id);

-- Progress, answers, sessions: strictly private to each student
create policy "Own card progress" on card_progress
  for all to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Own quiz attempts" on quiz_attempts
  for all to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Own daily sessions" on daily_sessions
  for all to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);


-- Helpful indexes (make common lookups fast)
create index on news_stories (publish_date, status);
create index on quiz_questions (card_id);
create index on card_progress (user_id, due_date);

-- Starting subjects
insert into subjects (id, name, sort) values
  ('econ', 'Managerial Economics', 1),
  ('fin',  'Finance',              2),
  ('mkt',  'Marketing',            3);
