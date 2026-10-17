import type { Metadata } from "next";
import Link from "next/link";
import { redirect } from "next/navigation";
import { Suspense } from "react";
import { getAccount } from "@/lib/account";
import { getDailyQuiz } from "@/lib/quiz";
import { QuizRunner } from "./QuizRunner";

export const metadata: Metadata = { title: "Today's quiz · PLACED" };

async function TodaysQuiz() {
  const account = await getAccount();
  if (!account) redirect("/");

  const quiz = await getDailyQuiz(account.id, account.isGuest);

  if (quiz.done) {
    return (
      <div className="mt-4">
        <div className="rounded-[10px] bg-coffee px-5 py-6 text-center text-cream">
          <p className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-crema">Already done today</p>
          <p className="mt-2 text-[40px] font-bold leading-none">
            {quiz.result.score}/{quiz.result.total}
          </p>
          <p className="mt-2 font-sans text-[14px] text-crema">+{quiz.result.xpEarned} XP</p>
        </div>
        {!quiz.stats.isGuest && (
          <p className="mt-4 text-center font-sans text-[14px]">
            🔥 {quiz.stats.streak}-day streak · {quiz.stats.xp} XP
          </p>
        )}
        <p className="mt-6 text-center text-[15px] text-mocha">A fresh quiz unlocks at midnight. Meanwhile, revise a card or two.</p>
        <Link
          href="/library"
          className="mt-4 flex h-12 w-full items-center justify-center rounded-[10px] border border-line bg-foam font-sans text-[15px] font-semibold"
        >
          Back to the Library
        </Link>
      </div>
    );
  }

  if (quiz.questions.length === 0) {
    return <p className="mt-6 text-[15px] text-mocha">No questions are ready yet. Please check back soon.</p>;
  }

  return <QuizRunner questions={quiz.questions} answered={quiz.answered} isGuest={quiz.stats.isGuest} />;
}

export default function QuizPage() {
  return (
    <main className="mx-auto w-full max-w-md px-5 pb-14 pt-6">
      <nav className="font-sans text-[13px]">
        <Link href="/library" className="font-medium text-coffee">
          ← Library
        </Link>
      </nav>
      <h1 className="mt-5 text-[22px] font-bold leading-snug">Today&apos;s quiz</h1>
      <div className="mt-5">
        <Suspense fallback={<div className="h-72 animate-pulse rounded-[10px] bg-foam" />}>
          <TodaysQuiz />
        </Suspense>
      </div>
    </main>
  );
}
