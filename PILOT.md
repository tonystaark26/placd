# ChaiCase: Classmate Pilot

> Two weeks with 20–30 classmates at St Xavier's, Kolkata, before we change
> anything else. Written 22 Oct 2026.

---

## 1. What the pilot has to answer

1. **Do they come back?** Opening the app once means little. The question is whether they're still using it in week 2.
2. **What do they actually use?** The news, the cards, the quiz, the leaderboard: which do they open first, and which do they skip?
3. **Does the news-to-concept link work?** Does a story ever make a first-year concept click for them? That's the idea the whole app rests on.

## 2. Who and when

| | |
|---|---|
| **Who** | Invite about **35 classmates** to end up with 20–30. Mostly **second-years heading into placements**, plus a few first-years. Pick people who will actually tell you what they think, not just close friends. |
| **Invite** | The weekend before it starts |
| **Pilot runs** | **14 days, starting on a Monday.** Dates to be decided. |
| **Fix week** | The week after: fix what the pilot showed |

When you pick the dates, avoid exam weeks and big holidays (Diwali is on
8 Nov), or expect those days to be quieter.

## 3. Before you send the invite

- [ ] Use the app yourself for one full day on your phone: today's news, a few cards, the quiz.
- [ ] Send the link to yourself on WhatsApp, tap it, and sign in with Google **from inside WhatsApp**. Try it on one Android phone and one iPhone if you can borrow one.
- [ ] Try **Try it first, no account** once, so you know what a guest sees. Guests can read and do the quiz, but their streak and XP aren't saved, which is why the invite asks people to sign in with Google.
- [ ] Check the morning news is up that day (the cloud job publishes it before 8 am).
- [ ] Make a list of the people you're inviting (name, year, specialisation), so you know who joined.

## 4. The invite message

Send it one by one, not to a big group. A personal message gets far more replies.

> Hey [name]! I've been building an app called **ChaiCase** for placement prep, and I'd love you to try it for 2 weeks.
>
> 10 minutes a day: today's business news explained simply, linked to the first-year concepts interviewers ask about (economics, marketing, accounting, OB, law), then a short quiz to make it stick. There's also a leaderboard.
>
> It's completely free. Sign in with Google: placd-delta.vercel.app
> Tip: add it to your home screen so it opens like an app.
>
> If anything feels confusing or broken, tap **Send feedback** in the app, or just message me. Honest opinions help me the most 🙏

## 5. Day by day

| When | What you do |
|---|---|
| **Day 1** | Check who joined. Thank each person in one line. |
| **Day 2** | One gentle reminder to anyone who hasn't joined. Only one; don't chase further. |
| **Day 3** | Run the numbers query (below). Have 2 quick chats: "What did you open first? Anything confusing?" |
| **Every day** | Check feedback on the admin page (`/admin/feedback`). Fix real bugs straight away; write ideas down for the fix week. |
| **Day 7** | Run the numbers. Talk to 5 people, using the questions below. |
| **Day 14** | Final numbers. Talk to 10 people, including some who stopped using the app. Bring it all to me and we decide the fix week. |

**Rule for the two weeks:** fix bugs straight away, but no new features or
redesigns. If the app keeps changing, we can't tell what's working.

## 6. Numbers to watch

Run [supabase/pilot_numbers.sql](supabase/pilot_numbers.sql) in Supabase's SQL
Editor whenever you want a snapshot. It changes nothing and leaves out your own
account.

| Signal | Good result |
|---|---|
| Joined (Google + guest) | 20 or more |
| Did at least one quiz | 60% of those who joined with Google |
| Still doing quizzes a week after joining | **40% or more.** This is the habit signal from the plan. |
| Feedback messages | 5 or more, which shows people care enough to say something |
| News-to-concept link (from chats) | At least half say a story helped a concept make sense |

Quiz numbers count Google sign-ins only, because guest quizzes aren't saved. The app also doesn't yet record which cards or stories people open. The
chats fill that gap.

## 7. What to ask (10 minutes each)

Ask, listen, and don't defend the app:

1. "What did you open first each day? Why?"
2. "Was there a news story that made a concept make sense? Which one?"
3. "What made you skip a day?" (or, if they stopped: "What made you stop?")
4. "What's one thing that annoyed or confused you?"
5. "Would you tell a junior about it? What would you say?"
6. "If this cost money one day, what would make it worth it?" Just listen; no prices yet.

Write down their words, not your summary of them. Their exact phrases are
what we'll use later in the app and the invite.

## 8. After the pilot

Bring me the Day 14 numbers, the feedback and your chat notes. We then decide:

- what to fix in the fix week
- which subjects need more cards (Finance is still empty, and Economics has only 11)
- whether it's ready to share with more colleges, and when the domain becomes worth buying
