import type { Metadata } from "next";
import { redirect } from "next/navigation";
import { Suspense } from "react";
import { getAccount } from "@/lib/account";
import { NameForm } from "./NameForm";

export const metadata: Metadata = { title: "Choose your name · ChaiCase" };

// Only signed-in students without a name belong here
async function OnlyNewStudents() {
  const account = await getAccount();
  if (!account) redirect("/");
  if (account.alias || account.isGuest) redirect("/desk");
  return <NameForm />;
}

export default function Onboarding() {
  return (
    <main className="mx-auto w-full max-w-md px-6 pb-12 pt-14">
      <p className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-coffee">Welcome to ChaiCase</p>
      <h1 className="mt-3 text-[27px] leading-snug">Pick a display name</h1>
      <p className="mt-2 text-[15px] leading-relaxed text-mocha">
        This is the only name other students see, for example on the leaderboard. Make it anything you like. Your real
        name and email stay private.
      </p>

      <div className="mt-7">
        <Suspense fallback={<div className="h-48 animate-pulse rounded-[10px] bg-foam" />}>
          <OnlyNewStudents />
        </Suspense>
      </div>
    </main>
  );
}
