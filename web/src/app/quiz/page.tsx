import type { Metadata } from "next";
import Link from "next/link";
import { redirect } from "next/navigation";
import { Suspense } from "react";
import { GrowthCelebration } from "@/components/GrowthCelebration";
import { getAccount } from "@/lib/account";
import { getDailyQuiz } from "@/lib/quiz";
import { QuizRunner } from "./QuizRunner";

export const metadata: Metadata = { title: "Today's quiz · ChaiCase" };

async function TodaysQuiz() {
  const account = await getAccount();
  if (!account) redirect("/");

  const quiz = await getDailyQuiz(account.id, account.isGuest);

  if (quiz.done) {
    return (
      <div className="mt-4">
        <GrowthCelebration
          score={quiz.result.score}
          total={quiz.result.total}
          xpEarned={quiz.result.xpEarned}
          label="Already done today"
        />
        {!quiz.stats.isGuest && (
          <p className="mt-4 text-center font-sans text-[14px]">
            🔥 {quiz.stats.streak}-day streak · {quiz.stats.xp} XP
          </p>
        )}
        <p className="mt-6 text-center text-[15px] text-mocha">A fresh quiz unlocks at midnight. Meanwhile, revise a card or two.</p>
        <Link
          href="/desk"
          className="mt-4 flex h-12 w-full items-center justify-center rounded-[10px] border border-line bg-foam font-sans text-[15px] font-semibold"
        >
          Back to the Study Desk
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
        <Link href="/desk" className="font-medium text-coffee">
          ← Study Desk
        </Link>
      </nav>
      <h1 className="mt-5 text-[30px] leading-snug">Today&apos;s quiz</h1>
      <div className="mt-5">
        <Suspense fallback={<div className="h-72 animate-pulse rounded-[10px] bg-foam" />}>
          <TodaysQuiz />
        </Suspense>
      </div>
    </main>
  );
}
