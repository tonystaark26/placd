# ChaiCase

A free daily study app that gets MBA students placement-ready. Each day it explains the business news in plain
language, links every story to a first-year MBA concept, and tests both with a short quiz.

- **Live app:** https://placd-delta.vercel.app (the address still carries the app's first name, PLACED)
- **Code:** https://github.com/tonystaark26/placd (private)
- **Why it exists and who it's for:** [PLAN.md](PLAN.md)

This README is the house blueprint: what's in each room, how to run it on your computer, and how changes reach the
live app. It's written for a developer who has never seen the project.

---

## 1. The house at a glance

```
  Student's phone (browser, or installed to the home screen)
        │
        ▼
  ┌────────────────────────────┐        ┌──────────────────────────────┐
  │  Vercel  (Mumbai region)   │        │  Supabase  (Mumbai)          │
  │  The Next.js app in web/   │ ─────▶ │  Postgres database + sign-in │
  │  Builds pages, runs code   │        │  Security rules and scoring  │
  └────────────────────────────┘        │  live inside the database    │
        ▲                               └──────────────────────────────┘
        │ every push to main                     ▲
        │ deploys automatically                  │ publishes the news brief
  ┌─────┴──────┐                        ┌─────────┴────────────────────┐
  │   GitHub   │ ◀── archives each ──── │  Morning news job            │
  │   (code)   │     day's brief        │  (scheduled Claude routine,  │
  └────────────┘                        │   about 6 AM India time)     │
                                        └──────────────────────────────┘
```

Three ideas run through the whole design:

1. **The database is in charge.** Supabase's row-level security decides what each student may read or write. Quiz
   scoring, XP, streaks, the leaderboard and the news upload all happen inside database functions, so a student
   can't cheat by editing what their browser sends.
2. **Content lives in plain files.** Concept cards are Markdown, quiz questions are JSON and each day's news is
   JSON. Small scripts turn them into SQL, and that SQL is what loads them into the database.
3. **Database changes are run by hand.** Code reaches the live app automatically when it's pushed. SQL never does:
   someone pastes it into Supabase's SQL Editor. (See [section 7](#7-deploying-changes).)

## 2. Folder map

```
PLACED PROJECT/
├── README.md            ← you are here
├── PLAN.md              product plan: the problem, audience, features, money
├── PILOT.md             plan for the first classmate pilot
├── web/                 THE APP (Next.js). Everything Vercel builds lives here.
├── supabase/            database: numbered SQL files, setup guides, daily news SQL
├── content/             the study material, as plain files
│   ├── CARD_FORMAT.md   how a concept card is written (read before adding cards)
│   ├── <subject>/       concept cards in Markdown, one folder per subject
│   ├── quiz/questions.json   every quiz question
│   └── news/YYYY-MM-DD.json  each day's news brief (archive)
├── scripts/             turn content files into SQL (cards, quiz, news)
├── design/              design system, user flow, logo files
└── MATERIALS/           course notes and e-books. NEVER uploaded to GitHub (copyright).
```

## 3. Inside the app (`web/`)

Built with **Next.js 16** (App Router), **React 19**, **TypeScript** and **Tailwind CSS 4**, using
**`@supabase/ssr`** to talk to the database.

> ⚠️ Next.js 16 changed several APIs. Read [web/AGENTS.md](web/AGENTS.md), and check the docs bundled in
> `web/node_modules/next/dist/docs/` before relying on memory. For example, `middleware.ts` is now
> [`proxy.ts`](web/src/proxy.ts), and caching uses `cacheComponents`.

### Pages (`web/src/app/`)

| Address | File | What it is |
|---|---|---|
| `/` | `page.tsx` | Welcome page: logo, today's story teaser, Google sign-in, "Try it first, no account" |
| `/onboarding` | `onboarding/` | Choose a display name (shown on the leaderboard) |
| `/desk` | `desk/` | **Study Desk**, the home screen once signed in: today's pick, quiz card, the four sections |
| `/learn/[section]` | `learn/[section]/` | One section (Marketing, Finance, People, Law & Ethics) and its cards |
| `/cards/[id]` | `cards/[id]/` | One concept card, with its picture. Pre-built for every card, so it opens instantly. |
| `/news` | `news/` | **Chai & Charts**, the daily news brief |
| `/quiz` | `quiz/` | The daily quiz (`QuizRunner.tsx` runs it in the browser) |
| `/leaderboard` | `leaderboard/` | Weekly and all-time boards |
| `/admin/news` | `admin/news/` | Admins only: check the day's stories, change today's pick, take a story down |
| `/admin/feedback` | `admin/feedback/` | Admins only: read feedback and mark it done |
| `/privacy`, `/terms` | | Legal pages |
| `/auth/callback` | `auth/callback/route.ts` | Where Google sign-in returns to |

`web/src/proxy.ts` runs before every request. It keeps the login fresh and sends signed-out visitors to the welcome
page. Guests count as signed in: Supabase gives them an anonymous account.

### Shared code

| Folder | What's in it |
|---|---|
| `web/src/lib/` | Data and logic: `cards.ts` (cards, subjects, the four sections), `news.ts`, `quiz.ts` / `quiz-client.ts`, `account.ts`, `track.ts` (records what students open), `features.ts` (on/off switches) |
| `web/src/lib/supabase/` | Two database connections: `server.ts` for code that runs on the server, `client.ts` for code in the browser. Both use only the public key. |
| `web/src/components/` | Reusable pieces: header, story card, feedback button, install hint, growth celebration |
| `web/src/components/diagrams/` | The picture on each card, drawn in code (SVG), one file per subject. `index.ts` maps card id → picture. |
| `web/src/app/actions/` | Server actions: sign-in, feedback, news approval, settings |
| `web/public/icons/` | App icons for the home-screen install |

**The four sections** on the Study Desk are defined in `SECTIONS` in [web/src/lib/cards.ts](web/src/lib/cards.ts).
Each section groups one or more subjects. A subject with no cards yet is hidden automatically.

## 4. The database (`supabase/`)

The SQL files are numbered and build on each other. On a **fresh** Supabase project, run them **in order**:

| File | What it sets up |
|---|---|
| `001_schema.sql` | Core tables (subjects, cards, quiz questions, profiles, progress) and security rules. **Run once only.** |
| `002_cards.sql` | All concept cards. **Generated by a script; don't edit by hand.** |
| `003_quiz_rules.sql` | Quiz scoring, XP, streaks and spaced repetition, all as database functions |
| `004_quiz_questions.sql` | All quiz questions. **Generated by a script.** |
| `005`–`009` | News: stories, admins, teasers, publish times, ranking, and the secure upload door for the morning job |
| `010_feedback.sql` | Feedback messages |
| `011_leaderboard.sql` | Leaderboard function |
| `012_opens.sql` | Records which cards and news students open (once per person per day) |
| `news/YYYY-MM-DD.sql` | Each day's brief, generated from `content/news/`. Archive and manual fallback. |
| `pilot_numbers.sql`, `pilot_top_opens.sql` | Read-only reports for the pilot |

Apart from `001`, every file is safe to run again.

**Making someone an admin:** this is only ever done in the SQL Editor, never from the app. Find their id under
Authentication → Users, then run `insert into admins (user_id) values ('<their-user-id>');`.

Step-by-step guides for the people setting things up: [supabase/SETUP_GUIDE.md](supabase/SETUP_GUIDE.md) (database
and keys) and [supabase/LOGIN_SETUP.md](supabase/LOGIN_SETUP.md) (guest mode and Google sign-in).

## 5. How content gets in

**Concept cards**
1. Write or edit Markdown in `content/<subject>/`, following [content/CARD_FORMAT.md](content/CARD_FORMAT.md).
2. A new subject also needs: an entry in `SUBJECTS` in `scripts/cards-to-sql.mjs`, a name in `SUBJECT_NAMES` and a
   place in `SECTIONS` in `web/src/lib/cards.ts`, and optionally pictures in `web/src/components/diagrams/`.
3. From the project folder, run `node scripts/cards-to-sql.mjs`. This rewrites `supabase/002_cards.sql`.
4. Run that file in Supabase.

**Quiz questions**
1. Edit `content/quiz/questions.json`. Each question belongs to a card and has 4 options, `answer` (0–3) and `why`.
   Keep right answers spread evenly across the four positions.
2. Run `node scripts/quiz-to-sql.mjs`. It checks every question first, then rewrites `supabase/004_quiz_questions.sql`.
3. Run that file in Supabase.

**Daily news (automatic)**
A scheduled Claude routine runs at about 6 AM India time. It researches the day's stories, sends them to the
database through `ingest_news()` (see `009_news_upload.sql`), and commits the day's JSON and SQL to GitHub as an
archive. The database checks the house rules itself and refuses a brief that breaks them:
- at least 10 stories, ranked by news value
- every source published within the last 24 hours
- a story-style hook for every story
- at most one "today's pick"

The routine and its secret upload key live in the owner's Claude account (claude.ai → routines), not in this
repository. If a morning's brief is missing, an admin can generate it by hand with
`node scripts/news-to-sql.mjs YYYY-MM-DD` and run the result.

## 6. Run it on your computer

You need **Node.js 20.9 or newer** (the project is developed on Node 24) and **Git**.

```bash
git clone https://github.com/tonystaark26/placd.git
cd placd/web
npm install
```

Create `web/.env.local` by copying [web/.env.example](web/.env.example), then fill in the two values from
Supabase → Project Settings → API Keys / Data API:

```
NEXT_PUBLIC_SUPABASE_URL=https://<project-id>.supabase.co
NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=sb_publishable_...
```

Both values are public by design: the database's security rules protect the data, not the key. `.env.local` is
still never committed. **No secret keys belong in the app.**

```bash
npm run dev      # the app at http://localhost:3000, refreshing as you edit
npm run build    # a full production build: run this before pushing
npm run lint     # code checks
```

Your local app talks to the **same live database** as everyone else unless you point `.env.local` at a separate
Supabase project. Be careful with anything that writes data.

Google sign-in only returns to addresses listed in Supabase → Authentication → URL Configuration. The live
address and `http://localhost:3000/**` are both already there. Add any new address (such as a future domain) to
that list first.

## 7. Deploying changes

**App code: automatic.** Vercel watches the `main` branch on GitHub. Every push builds and deploys the app within
about a minute. The Vercel project's root directory is `web/`, and [web/vercel.json](web/vercel.json) pins it to the
Mumbai region, next to the database. The two environment variables from section 6 are set in Vercel → Project →
Settings → Environment Variables.

```bash
git push origin main     # this is the deploy
```

GitHub shows a ✓ or ✗ next to the commit when Vercel finishes. Vercel's dashboard has the build log, and can roll
back to any earlier deploy in one click.

**Database changes: by hand.** When a change needs SQL (a new table, function, or regenerated cards or questions),
run that file in Supabase → SQL Editor → New snippet → paste → Run.

**Order matters.** If new code needs something new in the database, run the SQL **first**, then push. Or make the
code tolerate its absence, as the open-tracking code in `lib/track.ts` does. Otherwise the live app can briefly
ask the database for something that isn't there yet.

## 8. Services and accounts

| Service | Used for | Where it's configured |
|---|---|---|
| **GitHub** | Code, and the daily news archive | `tonystaark26/placd` |
| **Vercel** | Hosting the app | Project linked to the repo, root `web/` |
| **Supabase** | Database, sign-in (Google, guest) | Region Mumbai. Auth settings, URL list and SQL Editor live here. |
| **Google Cloud** | "Continue with Google" | OAuth client and Branding page (app name ChaiCase, in production) |
| **Claude** (claude.ai) | The morning news routine | The owner's account |

All are on free tiers for now.

## 9. Things to know before changing anything

- **`MATERIALS/` must never reach GitHub.** It holds copyrighted course notes and e-books, and is in `.gitignore`.
  Cards are written in our own words from them.
- **News has strict rules:** today's news only (the 24-hour rule), at least 10 stories, and written in our own words
  with a source link, never copied. Concept cards may use older news and historic cases.
- **Email sign-in is built but switched off** (`EMAIL_SIGN_IN` in `web/src/lib/features.ts`). Supabase's built-in
  email sends only a few messages an hour. Turn it on once there's a domain and a proper email service in
  Supabase → Authentication → SMTP.
- **Guests' progress isn't saved** (streak, XP). They're nudged to sign in with Google.
- **The design** (café colours, Bookman-style serif, growth imagery) is documented in
  [design/DESIGN_SYSTEM.md](design/DESIGN_SYSTEM.md). Keep new screens consistent with it.
- **Card examples** use amounts that fit the topic, not always ₹100. The format and tone rules are in
  [content/CARD_FORMAT.md](content/CARD_FORMAT.md).
- **There are no automated tests yet.** Before pushing, run `npm run build`, then click through the changed screens on a
  phone-sized window.

## 10. Other documents

| Document | What it covers |
|---|---|
| [PLAN.md](PLAN.md) | Product plan and decisions |
| [PILOT.md](PILOT.md) | Classmate pilot: checklist, invite, numbers |
| [design/USER_FLOW.md](design/USER_FLOW.md) | Screens and how students move between them |
| [design/DESIGN_SYSTEM.md](design/DESIGN_SYSTEM.md) | Colours, type, spacing |
| [content/CARD_FORMAT.md](content/CARD_FORMAT.md) | How to write a concept card |
| [supabase/SETUP_GUIDE.md](supabase/SETUP_GUIDE.md) | Setting up the database from scratch |
| [supabase/LOGIN_SETUP.md](supabase/LOGIN_SETUP.md) | Setting up guest and Google sign-in |
