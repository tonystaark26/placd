# Supabase setup: your steps

About 15 minutes. You do these steps yourself, because they involve your account and
secret keys. Tick each box as you go.

---

## Step 1 · Create the project (3 min)

- [ ] Go to **supabase.com** → sign in → **New project**.
- [ ] **Name:** `placed`
- [ ] **Database password:** click **Generate a password**, then **save it in a password
      manager or a safe note**. You'll rarely need it, but it can't be shown again.
      **Never paste it in chat or in any file.**
- [ ] **Region:** **South Asia (Mumbai)**, the closest to your students, so the app is faster.
- [ ] Click **Create new project** and wait 1–2 minutes while it sets up.

## Step 2 · Build the tables (2 min)

- [ ] In the left menu, open **SQL Editor** → **New query**.
- [ ] Open [`supabase/001_schema.sql`](001_schema.sql) on your computer, select everything
      (Ctrl+A), copy it, and paste it into the editor.
- [ ] Click **Run**. You should see **"Success. No rows returned."**
- [ ] Check: open **Table Editor** in the left menu. You should see 8 tables:
      `subjects`, `concept_cards`, `news_stories`, `quiz_questions`, `profiles`,
      `card_progress`, `quiz_attempts`, `daily_sessions`.

## Step 3 · Connect the app on your computer (3 min)

- [ ] In Supabase, click **Connect** (top of the project page), or go to
      **Project Settings → API Keys**. Find:
  - the **Project URL** (looks like `https://abcdefgh.supabase.co`). If the copied
    address ends in `/rest/v1/`, delete that part.
  - the **Publishable key** (starts with `sb_publishable_`). If you only see older
    "anon public" keys, use the **anon** one.
- [ ] In your project folder, open the `web` folder, copy `.env.example` and rename the
      copy to **`.env.local`**.
- [ ] Open `.env.local` in Notepad and replace the two example values with yours. Save.

> **Which keys are safe?** The *publishable / anon* key is meant to be public: it's
> limited by the security rules we wrote. The **secret key** (`sb_secret_…` or
> "service_role") and the **database password** are like master keys. Never put
> those in the app, in chat, or on GitHub.

## Step 4 · Connect the live website (3 min)

- [ ] Go to **vercel.com** → your **placd** project → **Settings → Environment Variables**.
- [ ] Add two variables, with the same names and values as in your `.env.local`:
  - `NEXT_PUBLIC_SUPABASE_URL`
  - `NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY`
- [ ] Save. (They take effect on the next update we upload.)

## Step 5 · Tell Claude

- [ ] Come back to the chat and say **"Supabase is set up"**. Don't paste any keys;
      I'll check the connection myself by reading the public tables.
