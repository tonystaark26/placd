import Link from "next/link";
import { redirect } from "next/navigation";
import { Suspense } from "react";
import { continueWithGoogle, tryAsGuest } from "@/app/actions/auth";
import { SubmitButton } from "@/components/SubmitButton";
import { getAccount, homeFor } from "@/lib/account";

const promises = [
  "Daily business news with your chai",
  "The concept behind every story",
  "A quiz that keeps your basics sharp",
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

export default function Welcome({ searchParams }: PageProps<"/">) {
  return (
    <main className="mx-auto flex min-h-dvh w-full max-w-md flex-col justify-between px-6 pb-9 pt-16">
      <Suspense fallback={null}>
        <SendSignedInStudentsOn />
      </Suspense>

      <div className="flex flex-col gap-7">
        <div className="flex items-center gap-2.5">
          <span className="h-2.5 w-2.5 rounded-full bg-coffee" aria-hidden="true" />
          <span className="font-sans text-xs font-semibold tracking-[3px]">PLACED</span>
        </div>

        <h1 className="text-3xl font-bold leading-snug">
          Ten minutes a day.
          <br />
          <span className="text-coffee">Ready for any interview.</span>
        </h1>

        <p className="text-[15px] leading-relaxed text-mocha">
          Today&apos;s business news, explained simply and linked to the MBA concept
          behind it. Then a short quiz to keep your basics sharp.
        </p>

        <ol className="border-t border-line">
          {promises.map((text, i) => (
            <li key={text} className="flex gap-3.5 border-b border-line py-3.5">
              <span className="pt-0.5 font-sans text-xs font-semibold text-coffee">
                {String(i + 1).padStart(2, "0")}
              </span>
              <span className="text-sm leading-normal">{text}</span>
            </li>
          ))}
        </ol>
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

        <Link
          href="/login"
          className="flex h-12 w-full items-center justify-center rounded-[10px] bg-coffee font-sans text-[15px] font-semibold text-cream"
        >
          Sign up with email
        </Link>

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
