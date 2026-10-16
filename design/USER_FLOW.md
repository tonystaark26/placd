# User Flow

A user flow is a map of every screen and how a student moves between them.
We draw it before designing screens so no step is forgotten.

Status: **DRAFT v1**, 16 Oct 2026

---

## 1. First visit (once)

```
Sign up ──► Your subjects ──► Daily time ──► Your name ──► Home
(Google     (pick 1–3)        (5 / 10 /      (anonymous
 or phone)                     15 min)        alias)
```

Goal: from download to Home in **under 1 minute**. Ask only what we need to
build the first session; everything else can wait.

## 2. App map (four tabs)

| Tab | What's inside | How often used |
|---|---|---|
| **Today** | The daily session (below) | Every day |
| **Library** | All concept cards, by subject | When revising on their own |
| **Companies** | Recruiter Watch profiles | Before an interview |
| **Profile** | Streak, stats, rank, subscription, settings | Occasionally |

## 3. The daily session (the heart of the app)

```
Daily reminder
      │
      ▼
News brief  ◄──►  Concept card      (tap "concept behind this" on any story)
      │
      ▼
Quick revision    (cards due today: spaced repetition)
      │
      ▼
Daily quiz  ──►  wrong answer opens the concept card
      │           (news + revision + 1 mini case)
      ▼
Result            (score, streak +1, rank)
      │
      ↻ tomorrow: missed cards come back sooner
```

### How the chosen time shapes the session

Rough plan; we'll tune it after the pilot.

| Chosen time | News stories | Revision cards | Quiz questions |
|---|---|---|---|
| 5 min | 3 | 2 | 4 |
| 10 min | 6 | 3 | 7 |
| 15 min | 9 | 4 | 10 |

## 4. Decisions (17 Oct 2026)

- [x] **Quiz unlock:** the quiz is open any time; reading the news is not required first. (The quiz covers today's news, so skipping the reading naturally lowers the score.)
- [x] **Streak freeze:** 1 free freeze per week, so missing one day doesn't break the streak.
- [x] ~~Free trial: 14 days~~ → **Changed 17 Oct:** the app is completely free for the first few months. It shows no trial and no prices; early users get an "Early member" badge. Subscription comes later (see PLAN.md §6).
