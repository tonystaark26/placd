import type { Metadata } from "next";
import Link from "next/link";
import { EmailForm } from "./EmailForm";

export const metadata: Metadata = { title: "Sign in with email · PLACED" };

export default function Login() {
  return (
    <main className="mx-auto w-full max-w-md px-6 pb-12 pt-8">
      <Link href="/" className="font-sans text-[13px] font-medium text-coffee">
        ← Back
      </Link>

      <h1 className="mt-8 text-[27px] leading-snug">Sign up or sign in with email</h1>
      <p className="mt-2 text-[15px] leading-relaxed text-mocha">
        No password to remember. We&apos;ll email you a link, and one tap signs you in. New here? The same link creates
        your account.
      </p>

      <div className="mt-7">
        <EmailForm />
      </div>

      <p className="mt-8 font-sans text-xs leading-relaxed text-mocha-2">
        We only use your email to sign you in. Other students never see it.
      </p>
    </main>
  );
}
