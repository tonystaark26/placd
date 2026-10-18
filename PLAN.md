# ChaiCase: Product Plan

> Name changed from PLACED to ChaiCase on 18 Oct 2026 (another app already uses PLACED on the Play Store). A daily app that gets MBA students placement-ready by linking
> first-year concepts to today's business news, then testing them on both.

Last updated: 16 Oct 2026

---

## 1. The one-line promise

**"It helps me crack placement interviews."**

Everything in the app has to serve this. News, revision, quizzes and streaks
are how we deliver it. They aren't the goal on their own.

## 2. Who it's for (first)

- MBA students at **Tier-2/3 B-schools in India**, starting with our own college.
- Second-year students heading into placements are the most urgent users.
  First-year students are a secondary audience.

## 3. The problem

Seen first-hand at St Xavier's, Kolkata. There are two problems:

**Problem 1: forgotten basics.** Students study the basics in year 1,
specialise in year 2, and then face placement interviews mid-year-2 that ask
year-1 basics. They *felt* they understood those basics when they heard them in
class, but never came back to them, so they forget. On interview day this adds
to the anxiety they already have. Today they revise from WhatsApp PDFs and
seniors' notes, or by pasting material into AI chatbots. All of that is
scattered, unverified, and has no habit built in.

**Problem 2: not reading the news.** Most students don't read newspapers
regularly and aren't up to date on what's happening globally, in India, locally,
or at the companies that could be their recruiters.

**Our answer:** news told in an attractive, logical, jargon-free way, so it
hooks students and makes them curious, with every story linked back to an MBA
concept they've studied. Theory they can see happening in real life is theory
they won't forget.

## 4. What makes us different

1. **News ↔ concept linking (core feature).** For example, an RBI repo rate hike
   in the news opens the "Repo Rate" concept card with a simple ₹100 example,
   followed by quiz questions.
   Students learn to *relate* theory to real events, which is exactly what
   interviewers test.
2. **Verified content.** Every concept card is drafted from our own notes and
   ebooks, checked by us, and escalated to professors when in doubt. One wrong
   explanation loses trust.
3. **Mini case-study questions.** Short, MBA-style case questions instead of
   plain trivia.
4. **Time-boxed daily session.** The student picks 5, 10 or 15 minutes, and
   the session fits that time.

## 5. Features

### MVP (the first 2 months)
| Feature | Notes |
|---|---|
| Sign up + onboarding | Pick subjects, pick daily time (5/10/15 min), choose an anonymous display name |
| Daily news feed | 8–10 stories across four lanes: **Global · India · Local (Kolkata / West Bengal) · Recruiter Watch** (companies that hire from our campus). Plain language, no jargon. **We write our own short summaries and link to the source. We never copy articles.** |
| Concept cards | Short, logical explanation + one simple example (the ₹100 style). Linked to news stories. Format: [content/CARD_FORMAT.md](content/CARD_FORMAT.md) |
| Subjects (v1) | **Managerial Economics first** (materials in hand), then Finance, Marketing |
| End-of-day quiz | Mix of today's news + older concepts due for revision (spaced repetition) + 1 mini case question |
| Streaks | A day counts once the quiz is done |
| App-wide leaderboard | Anonymous names, whole app (not per college) |
| Works on phones | Built as a web app that installs to the home screen (PWA) |

### Later (after we see real usage)
- Interview mode ("How an interviewer would ask this")
- Company-specific question sets (Deloitte, HUL, banks…). These must come from
  **real, sourced interview experiences** (seniors, alumni, public interview
  reports) and be labelled as such. Never invented.
- More subjects: HR, Operations, Strategy
- College dashboard for placement cells ("we'll make your batch placement-ready")
- Native Android/iOS app in the Play Store/App Store

## 6. Money

**Phase 1: completely free (first few months, decided 17 Oct 2026).**
No trial, no countdown, no prices anywhere in the app. Students should simply
feel it's free and build the daily habit.

**Phase 2: subscription, once the habit is proven.** We switch on payments when the numbers
show students depend on it. A suggested signal: about 40% of users still active after
4 weeks.

How we make the switch fair, so people don't feel tricked:
- Early users get an **"Early member"** badge now (already in the mock-up),
  and later a **lifetime discount** as thanks.
- Give **at least a month's notice** before any payment starts.
- Keep a **useful free tier** (for example, the daily news brief) so nobody is cut off overnight.

Colleges come later, once we have usage numbers to show them.

## 7. How we'll build it (tech, in plain words)

| Piece | What it is | Tool (proposed) |
|---|---|---|
| Frontend | The screens students see and tap | Next.js (a popular web framework) |
| Backend + database | Stores users, cards, quiz results, streaks | Supabase (database + login, free to start) |
| Hosting | Puts the site on the internet | Vercel (free to start) |
| Content drafting | Drafts concept cards & questions from our notes, which we then check | Claude API |
| Phone app (later) | Wraps the same web app for app stores | Capacitor or PWA, with no rewrite needed |

## 8. Timeline (8 weeks)

| Week | Goal | You'll learn |
|---|---|---|
| 1 | Finalise screens & user flow; set up accounts and tools | Wireframes, user flows |
| 2 | Content system: turn notes into concept cards; review process | Content pipelines, data structure |
| 3 | Build concept cards + news feed screens | How a web page is built |
| 4 | Quiz + spaced repetition + streaks | App logic, databases |
| 5 | Login, onboarding, leaderboard | Authentication, user data |
| 6 | Put it online; test on phones | Deployment, hosting |
| 7 | **Pilot with 20–30 classmates** | User testing, reading usage data |
| 8 | Fix what the pilot shows; open to more colleges (still free) | Iteration, growth |

**Risk to watch:** content takes longer than code. Writing and checking ~150
concept cards for 3 subjects is the real workload, so it should start in week 1,
running alongside the building.

## 9. Where we are (16 Oct 2026)

**Done**
- [x] Product plan
- [x] Concept card format, approved after review
- [x] Batch 1: 5 Managerial Economics cards, news examples fact-checked
- [x] Recruiter Watch starter list + company profile template (draft)
- [x] User flow ([design/USER_FLOW.md](design/USER_FLOW.md)); decisions: quiz open any time, 1 streak freeze/week, 14-day trial
- [x] Clickable phone mock-up (17 Oct): https://claude.ai/artifact/5z3gLpbuCHxpQnHpmnfzoQ
- [x] Visual style: clean minimal (too plain) → bright & playful (too loud) → black & gold → now **café colours** (warm grey and coffee brown) with a Bookman-style serif and smaller, professional type ([design/DESIGN_SYSTEM.md](design/DESIGN_SYSTEM.md))
- [x] Batch 2: 6 more Economics cards (11 total), news examples fact-checked
- [x] Folders ready for new subjects: `materials/FINANCE`, `materials/MARKETING`
- [x] Marketing Batch 1: 6 cards (needs/wants/demands, customer value, satisfaction & CLV,
      orientations & myopia, marketing environment/PESTLE, Five Forces). **17 cards in total.**
- [x] Marketing Batch 2: 6 cards (buying behaviour types, decision process, B2B buying centre,
      market measurement, research & insight, ethics & dark patterns). All 7 Marketing files used.
      **23 cards in total** (11 Economics + 12 Marketing).
- [ ] Read the 2 large Economics reference PDFs (they need converting first, see chat) → Batch 3

**Content rules (from review)**
- News and examples must be from **2024 onwards**, never older.
- Small, digestible ₹ numbers; relatable (Indian / Kolkata) situations.

**Phase 1 (design & plan): done, 17 Oct.** Design tweaks can happen any time later.

**Phase 2: build the real app (weeks 3–6)**
1. ✅ **Set up tools & accounts** (17 Oct): Node.js 24, Git 2.56, GitHub/Supabase/Vercel accounts.
2. ✅ **Project skeleton** (17 Oct): Next.js app in `web/` with the café design and welcome page.
   Code on GitHub (private): github.com/tonystaark26/placd. **Live at https://placd-delta.vercel.app**,
   which updates automatically every time we upload to GitHub.
   Note: `placd.vercel.app` belongs to an unrelated app ("PlaceMe", a placement-drive management tool).
3. ✅ **Database** (17 Oct): Supabase project "placed" (Mumbai) with 8 tables and security
   rules ([supabase/001_schema.sql](supabase/001_schema.sql)). Connected on your computer
   (`web/.env.local`, never uploaded) and on Vercel. Connection tested: the 3 subjects can be read,
   and student profiles stay hidden from outsiders.
   ✅ **All 23 concept cards loaded** (17 Oct) from [supabase/002_cards.sql](supabase/002_cards.sql),
   which [scripts/cards-to-sql.mjs](scripts/cards-to-sql.mjs) makes from the card files. After
   editing cards, run `node scripts/cards-to-sql.mjs` and paste the new file into the SQL Editor again.
4. **Build the screens** one by one in the café design: onboarding → home →
   news → concept card → quiz → result → tabs.
   ✅ **Library + concept card screens live** (17 Oct): https://placd-delta.vercel.app/library.
   They read all 23 cards from the database, with hidden answers to tap open and Previous/Next.
   ✅ **Pictures on all 23 cards** (17 Oct), drawn from each card's ₹100 example.
5. **Login** (Google sign-in) and saving each student's streak and XP.
   ✅ **Login pages built** (17 Oct): welcome page with Continue with Google, Sign up with email
   (one-tap email link, no password), Try it first (guest), then Pick a display name.
   ✅ **Login switched on** (18 Oct): Google sign-in tested end to end (published in Google, with
   Branding done), guest mode tested. Privacy Policy and Terms live at /privacy and /terms.
   Signed-out visitors always land on the welcome page.
   **Before the pilot:** connect a free email service (Supabase's built-in one sends only a few
   emails an hour); only real accounts can take display names / appear on the leaderboard.
   Later: keep a guest's progress when they sign up.
6. ✅ **Daily quiz, streaks and XP** (18 Oct): 69 multiple-choice questions (3 per card,
   [content/quiz/questions.json](content/quiz/questions.json)); 4/7/10 questions by daily time;
   due-for-revision cards first, always ending with a mini case; 10 XP per right answer + 20 for
   finishing; 1 streak freeze a week; Leitner revision (3/7/14/30 days). Scoring runs inside the
   database ([supabase/003_quiz_rules.sql](supabase/003_quiz_rules.sql)), answers stay hidden until
   answered, and only real accounts can claim names. After editing questions:
   `node scripts/quiz-to-sql.mjs`, then paste `supabase/004_quiz_questions.sql` into the SQL Editor.
   **Next ideas:** leaderboard, choosing subjects and daily time, news screen.
7. ✅ **Cost & Financial Accounting** (18 Oct): 13 cards (7 cost: stock levels, EOQ, FIFO/LIFO,
   ABC, inventory turnover, Halsey/Rowan, labour turnover; 6 financial: users, accounting
   equation, statements, concepts I & II, conventions), each with a picture and 3 quiz questions.
   Overtime follows the notes (1.5×).
8. ✅ **Daily news brief** (18 Oct): "Today's brief" screen in 4 lanes, each story linked to a card;
   admin-only approval page (/admin/news) where drafts are approved before students see them.
   First brief: 8 stories (content/news/2026-10-18.json → `node scripts/news-to-sql.mjs 2026-10-18`).
   **Decide later:** automate daily drafting (needs a paid AI key) vs Claude drafting in-session.
9. ✅ **ICAI CA Foundation accounting batch** (from materials/CHART ACCOUNTS, 18 Oct): 10 cards
   (debit/credit, trial balance & errors, subsidiary books & petty cash, GST & ITC, capital vs revenue,
   contingent liabilities, standards/policies/estimates, measurement bases, depreciation, bills of exchange),
   each with a picture and 3 quiz questions. **Totals: 46 cards, 138 quiz questions.**

**Decide soon: how does daily news get made?** Proposed: each morning a script
collects headlines from reliable sources, AI drafts plain-language summaries, concept
links and quiz questions, and **you approve them in about 10 minutes** on a simple
admin page before students see them.

**Running alongside (founder tasks)**
- Share the mock-up and talk to 10 classmates (script below)
- Convert the 2 big Economics PDFs to .txt → Batch 3 cards
- Add Finance and Marketing notes to `materials/` when ready

### Classmate conversation script (10 minutes each)
Ask, listen, and don't pitch the app until the end:
1. "Think about your last placement or internship interview. What did they ask that you weren't ready for?"
2. "How do you revise first-year subjects now? How often?"
3. "How do you keep up with business news? Which app or paper?"
4. "If you had 10 minutes a day for placement prep, what would you want to use it on?"
5. *(Now show one concept card.)* "Would this help? What's missing?"
6. "If something like this cost money one day, what would feel like a fair price?" (This is research for us only; the app itself never mentions price in Phase 1.)

Write down their exact words. Patterns across 10 people matter more than any one opinion.

## 10. Open questions

- [ ] Final app name
- [x] Which notes/ebooks to start with: Managerial Economics, in `materials/`
- [ ] Review concept cards batch 1 (`content/managerial-economics/`)
- [x] Recruiter list: general reputable companies, not Xavier's-only ([content/recruiter-watch.md](content/recruiter-watch.md))
- [ ] Price point for the subscription (decide in Phase 2, using classmate answers and usage data)
- [ ] Who in our batch will be the first 20–30 pilot users
