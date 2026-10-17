# Login setup: your steps

The login pages are built. These switches live in your Supabase and Google accounts,
so you turn them on yourself. Parts A–C take about 5 minutes; Part D (Google) about 15.

**Golden rule:** the Google **Client secret** goes only into Supabase. Never paste it in chat,
in a file, or on GitHub.

---

## Part A · Tell Supabase where the app lives (2 min)

So that sign-in links send students back to *our* site and nowhere else.

- [ ] Supabase → your **placed** project → **Authentication** (left menu, person icon) → **URL Configuration**.
- [ ] **Site URL:** `https://placd-delta.vercel.app` → **Save**.
- [ ] Under **Redirect URLs**, click **Add URL** and add these two, one at a time:
  - `https://placd-delta.vercel.app/**`
  - `http://localhost:3000/**`
- [ ] **Save**.

## Part B · Turn on "Try it first, no account" (1 min)

- [ ] **Authentication** → **Sign In / Providers** (sometimes under **Configuration**).
- [ ] Find **Allow anonymous sign-ins** → switch it **on** → **Save**.

## Part C · Email sign-in (nothing to do)

- [ ] Check that **Email** is listed as **Enabled** under **Sign In / Providers**. It is on by default.

> Supabase's built-in email sender only sends a few emails per hour. That's fine for testing.
> Before the classmate pilot we'll connect a free email service (I'll guide you).

## Part D · "Continue with Google" (15 min)

**D1. Copy Supabase's callback address**
- [ ] Supabase → **Authentication** → **Sign In / Providers** → click **Google**.
- [ ] Find **Callback URL (for OAuth)** and click its **copy** button. Keep this panel open.
      It looks like `https://xxxxxxxx.supabase.co/auth/v1/callback`.

**D2. Create a Google project**
- [ ] Open **console.cloud.google.com** and sign in with the Google account that should own the app.
- [ ] Top bar: the project picker → **New project** → name it `PLACED` → **Create**. Make sure it's selected.

**D3. Set up the sign-in screen students will see**
- [ ] Search bar: type **Google Auth Platform** → open it → **Get started**.
- [ ] **App name:** `PLACED` · **User support email:** your email → **Next**.
- [ ] **Audience:** **External** → **Next**.
- [ ] **Contact email:** your email → **Next** → tick the agreement → **Create**.

**D4. Create the sign-in key**
- [ ] In Google Auth Platform → **Clients** → **Create client**.
- [ ] **Application type:** **Web application** · **Name:** `PLACED web`.
- [ ] **Authorized JavaScript origins** → **Add URI** twice:
  - `https://placd-delta.vercel.app`
  - `http://localhost:3000`
- [ ] **Authorized redirect URIs** → **Add URI** → paste the Supabase callback address from D1.
- [ ] **Create**. A box shows a **Client ID** and a **Client secret**.

**D5. Give the key to Supabase**
- [ ] Back in the Supabase Google panel: paste the **Client ID** and the **Client secret** into their boxes.
- [ ] Switch **Enable Sign in with Google** on → **Save**.

**D6. Let everyone sign in, not just you**
- [ ] Google Auth Platform → **Audience** → **Publish app** → **Confirm**.
      (While it says "Testing", only emails you add as test users can sign in. We only ask Google
      for name and email, so publishing doesn't need Google's review.)

> The Google screen will say "continue to xxxxxxxx.supabase.co". That's normal for now; we can
> show "PLACED" there later with a custom domain.

## Part E · Tell Claude

- [ ] Come back and say **"Login is set up"**, or tell me which parts you finished. I'll test each
      button. Don't paste any keys or secrets.
