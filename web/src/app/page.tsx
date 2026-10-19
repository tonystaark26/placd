import Link from "next/link";
import { redirect } from "next/navigation";
import { connection } from "next/server";
import { Suspense } from "react";
import { continueWithGoogle, tryAsGuest } from "@/app/actions/auth";
import { LogoMark } from "@/components/Logo";
import { SubmitButton } from "@/components/SubmitButton";
import { getAccount, homeFor } from "@/lib/account";
import { EMAIL_SIGN_IN } from "@/lib/features";
import { getBrief, todaysPick } from "@/lib/news";
import { istToday } from "@/lib/quiz";

// Each step of the blueprint, paired with what the app does for it
const blueprint = [
  { goal: "Know the news.", step: "The story", detail: "What happened in the business world, explained simply." },
  {
    goal: "Understand business.",
    step: "The MBA connection",
    detail: "Connect real-world events to concepts you can use in exams and interviews.",
  },
  {
    goal: "Own the interview.",
    step: "The quick challenge",
    detail: "Answer a few questions. Find your gaps. Make the learning stick.",
  },
];

const ERRORS: Record<string, string> = {
  google: "Google sign-in isn't available right now. Try email instead.",
  guest: "Couldn't start a guest session. Please try again.",
  link: "That sign-in link has expired or was already used. Please ask for a new one.",
};

function GoogleIcon() {
  return (
    <svg viewBox="0 0 48 48" className="h-5 w-5" aria-hidden="true">
      <path fill="#FFC107" d="M43.6 20.1H42V20H24v8h11.3C33.7 32.7 29.2 36 24 36c-6.6 0-12-5.4-12-12s5.4-12 12-12c3.1 0 5.8 1.2 7.9 3.1l5.7-5.7C34 6.1 29.3 4 24 4 13 4 4 13 4 24s9 20 20 20 20-9 20-20c0-1.3-.1-2.6-.4-3.9z" />
      <path fill="#FF3D00" d="M6.3 14.7l6.6 4.8C14.7 15.1 19 12 24 12c3.1 0 5.8 1.2 7.9 3.1l5.7-5.7C34 6.1 29.3 4 24 4 16.3 4 9.7 8.3 6.3 14.7z" />
      <path fill="#4CAF50" d="M24 44c5.2 0 9.9-2 13.4-5.2l-6.2-5.2C29.2 35.1 26.7 36 24 36c-5.2 0-9.6-3.3-11.3-7.9l-6.5 5C9.5 39.6 16.2 44 24 44z" />
      <path fill="#1976D2" d="M43.6 20.1H42V20H24v8h11.3c-.8 2.2-2.2 4.2-4.1 5.6l6.2 5.2C37 39.2 44 34 44 24c0-1.3-.1-2.6-.4-3.9z" />
    </svg>
  );
}

// Students who are already signed in skip this page. Guests stay, so they can create an account.
async function SendSignedInStudentsOn() {
  const account = await getAccount();
  if (account && !account.isGuest) redirect(homeFor(account));
  return null;
}

async function ErrorNote({ searchParams }: { searchParams: PageProps<"/">["searchParams"] }) {
  const { error } = await searchParams;
  const message = typeof error === "string" ? ERRORS[error] : undefined;
  if (!message) return null;
  return (
    <p role="alert" className="rounded-[10px] bg-bad-bg px-4 py-3 font-sans text-[13px] text-bad">
      {message}
    </p>
  );
}

// Today's pick, told as a story, to give newcomers a taste. Reading it starts a free guest session.
async function TodaysStory() {
  await connection(); // "today" depends on when the visitor opens the page
  const today = istToday();
  const { date, stories } = await getBrief(today); // yesterday's edition until today's arrives
  const pick = todaysPick(stories);
  if (!pick) return null;
  return (
    <section className="rounded-[12px] bg-coffee px-5 py-5 text-cream">
      <p className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-crema">☕ {date === today ? "Today" : "Yesterday"} on ChaiCase</p>
      <h2 className="mt-3 font-serif text-[23px] leading-tight">{pick.teaser_title}</h2>
      <p className="mt-2.5 text-[14px] leading-relaxed text-cream/90">{pick.teaser}</p>
      <form action={tryAsGuest} className="mt-4">
        <input type="hidden" name="next" value={`/news#story-${pick.id}`} />
        <SubmitButton variant="light" pendingText="Opening the story…">
          Read the full story, free →
        </SubmitButton>
      </form>
    </section>
  );
}

export default function Welcome({ searchParams }: PageProps<"/">) {
  return (
    <main className="mx-auto flex min-h-dvh w-full max-w-md flex-col justify-between px-6 pb-9 pt-16">
      <Suspense fallback={null}>
        <SendSignedInStudentsOn />
      </Suspense>

      <div className="flex flex-col gap-9">
        {/* The ChaiCase logo: the cup-on-books mark, the name in bold serif, a coffee rule underneath */}
        <div className="flex flex-col items-center">
          <LogoMark className="mb-2 h-24 w-24" />
          <span className="font-bookman text-[46px] font-bold leading-none tracking-[0.01em] text-espresso">ChaiCase</span>
          <span className="mt-3 flex items-center gap-2" aria-hidden="true">
            <span className="h-px w-10 bg-coffee" />
            <span className="h-2 w-2 rotate-45 bg-coffee" />
            <span className="h-px w-10 bg-coffee" />
          </span>
        </div>

        <h1 className="text-center text-[32px] leading-tight">
          10 Minutes here,
          <br />
          <span className="text-coffee">1 Step Up!</span>
        </h1>

        <p className="-mt-3 text-center text-[15px] leading-relaxed text-mocha">
          The business stories worth knowing, the MBA concepts behind them, and a quick daily quiz to keep
          your thinking sharp.
        </p>

        <Suspense fallback={null}>
          <TodaysStory />
        </Suspense>

        <section className="rounded-[12px] border border-crema-line bg-latte px-5 py-5">
          {/* Same Bookman serif as the ChaiCase wordmark, so the two feel like one family */}
          <h2 className="pl-[3px] text-center font-serif text-[11px] uppercase tracking-[3px] text-coffee">
            The Blueprint
          </h2>
          <ol className="mt-5 space-y-5">
            {blueprint.map((b, i) => (
              <li key={b.goal} className="flex gap-4">
                <span className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-coffee font-sans text-[13px] font-semibold text-cream">
                  {i + 1}
                </span>
                <span className="min-w-0">
                  <span className="block text-[18px] font-bold leading-snug">{b.goal}</span>
                  <span className="mt-1 block text-[14px] leading-snug text-mocha">
                    <span className="font-sans text-[12px] font-semibold uppercase tracking-[1.5px] text-coffee">
                      {b.step}
                    </span>
                    <br />
                    {b.detail}
                  </span>
                </span>
              </li>
            ))}
          </ol>
        </section>

        <p className="text-center text-[16px] italic text-coffee">
          Small daily effort. Stronger business thinking.
        </p>
      </div>

      <div className="mt-10 flex flex-col gap-3">
        <Suspense fallback={null}>
          <ErrorNote searchParams={searchParams} />
        </Suspense>

        <form action={continueWithGoogle}>
          <SubmitButton variant="outline" pendingText="Opening Google…">
            <GoogleIcon />
            Continue with Google
          </SubmitButton>
        </form>

        {EMAIL_SIGN_IN && (
          <Link
            href="/login"
            className="flex h-12 w-full items-center justify-center rounded-[10px] bg-coffee font-sans text-[15px] font-semibold text-cream"
          >
            Sign up with email
          </Link>
        )}

        <form action={tryAsGuest}>
          <SubmitButton variant="text" pendingText="Starting…">
            Try it first, no account
          </SubmitButton>
        </form>

        <p className="text-center font-sans text-xs leading-relaxed text-mocha-2">
          Free for early members. Others only ever see the display name you choose.
          <br />
          By continuing you agree to our{" "}
          <Link href="/terms" className="underline underline-offset-2">
            Terms
          </Link>{" "}
          and{" "}
          <Link href="/privacy" className="underline underline-offset-2">
            Privacy Policy
          </Link>
          .
        </p>
      </div>
    </main>
  );
}
