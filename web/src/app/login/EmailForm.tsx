"use client";

import { useActionState } from "react";
import { sendSignInLink, type EmailState } from "@/app/actions/auth";
import { SubmitButton } from "@/components/SubmitButton";

export function EmailForm() {
  const [state, action] = useActionState<EmailState, FormData>(sendSignInLink, { status: "idle" });

  if (state.status === "sent") {
    return (
      <div className="rounded-[10px] border border-crema-line bg-latte px-4 py-5">
        <p className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-coffee">Check your inbox</p>
        <p className="mt-2 text-[15px] leading-relaxed">
          We sent a sign-in link to <strong>{state.email}</strong>. Open it <strong>on this phone or computer</strong> to
          continue.
        </p>
        <p className="mt-3 font-sans text-[13px] text-mocha">Not there after a minute? Check Spam or Promotions.</p>
      </div>
    );
  }

  return (
    <form action={action} className="flex flex-col gap-3">
      <label htmlFor="email" className="font-sans text-[13px] font-semibold">
        Your email
      </label>
      <input
        id="email"
        name="email"
        type="email"
        inputMode="email"
        autoComplete="email"
        required
        defaultValue={state.email}
        placeholder="you@example.com"
        className="h-12 rounded-[10px] border border-line bg-foam px-4 font-sans text-[15px] outline-none focus:border-coffee"
      />
      {state.status === "error" && (
        <p role="alert" className="font-sans text-[13px] text-bad">
          {state.message}
        </p>
      )}
      <SubmitButton pendingText="Sending…">Email me a sign-in link</SubmitButton>
    </form>
  );
}
