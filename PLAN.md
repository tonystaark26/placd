# PLACED: Product Plan

> Working name. A daily app that gets MBA students placement-ready by linking
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
- [ ] Read the 2 large Economics reference PDFs (they need converting first, see chat) → Batch 3

**Content rules (from review)**
- News and examples must be from **2024 onwards**, never older.
- Small, digestible ₹ numbers; relatable (Indian / Kolkata) situations.

**Phase 1 (design & plan): done, 17 Oct.** Design tweaks can happen any time later.

**Phase 2: build the real app (weeks 3–6)**
1. ✅ **Set up tools & accounts** (17 Oct): Node.js 24, Git 2.56, GitHub/Supabase/Vercel accounts.
2. 🟡 **Project skeleton**: ✅ Next.js app created in `web/` with the café design and welcome
   page, saved as the first version. ⏳ Next: put it on GitHub and connect Vercel → a real link.
3. **Database design** (together): tables for cards, stories, questions, students and
   their progress. Move the 11 cards into it.
4. **Build the screens** one by one in the café design: onboarding → home →
   news → concept card → quiz → result → tabs.
5. **Login** (Google sign-in) and saving each student's streak and XP.

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
