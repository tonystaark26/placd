"use client";

import Link from "next/link";
import { useState, useTransition } from "react";
import { finishQuiz, submitAnswer, type FinishResult } from "@/app/actions/quiz";
import type { QuizQuestion } from "@/lib/quiz";

const KIND_LABEL = { concept: "Concept", application: "Application", case: "Mini case", news: "In the news" };

type Feedback = { chosen: number; correct: boolean; answerIndex: number; explanation: string };

export function QuizRunner({
  questions,
  answered,
  isGuest,
}: {
  questions: QuizQuestion[];
  answered: Record<number, boolean>;
  isGuest: boolean;
}) {
  // Pick up where the student left off if they reloaded mid-quiz
  const firstOpen = questions.findIndex((q) => !(q.id in answered));
  const [step, setStep] = useState(firstOpen === -1 ? questions.length : firstOpen);
  const [correctSoFar, setCorrectSoFar] = useState(Object.values(answered).filter(Boolean).length);
  const [feedback, setFeedback] = useState<Feedback | null>(null);
  const [result, setResult] = useState<FinishResult | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [pending, startTransition] = useTransition();

  const finished = step >= questions.length;
  const q = questions[step];

  function choose(index: number) {
    if (feedback || pending) return;
    setError(null);
    startTransition(async () => {
      const r = await submitAnswer(q.id, index);
      if (!r.ok) return setError(r.message);
      setFeedback({ chosen: index, correct: r.correct, answerIndex: r.answerIndex, explanation: r.explanation });
      if (r.correct) setCorrectSoFar((n) => n + 1);
    });
  }

  function next() {
    setFeedback(null);
    const nextStep = step + 1;
    setStep(nextStep);
    if (nextStep >= questions.length) finish();
  }

  function finish() {
    setError(null);
    startTransition(async () => {
      const r = await finishQuiz();
      if (!r.ok) return setError(r.message);
      setResult(r);
    });
  }

  if (finished) {
    if (result?.ok) return <ResultCard result={result} isGuest={isGuest} />;
    return (
      <div className="mt-10 text-center">
        {error ? (
          <>
            <p className="font-sans text-[14px] text-bad">{error}</p>
            <button onClick={finish} className="mt-4 h-12 w-full rounded-[10px] bg-coffee font-sans text-[15px] font-semibold text-cream">
              Try again
            </button>
          </>
        ) : pending ? (
          <p className="font-sans text-[14px] text-mocha">Adding up your score…</p>
        ) : (
          <button onClick={finish} className="h-12 w-full rounded-[10px] bg-coffee font-sans text-[15px] font-semibold text-cream">
            See my result
          </button>
        )}
      </div>
    );
  }

  return (
    <div>
      {/* progress */}
      <div className="flex items-center justify-between font-sans text-[12px] text-mocha-2">
        <span>
          Question {step + 1} of {questions.length}
        </span>
        <span>{correctSoFar} right so far</span>
      </div>
      <div className="mt-2 h-1.5 overflow-hidden rounded-full bg-line">
        <div className="h-full rounded-full bg-coffee transition-all" style={{ width: `${(step / questions.length) * 100}%` }} />
      </div>

      <p className="mt-6 font-sans text-[11px] font-semibold uppercase tracking-[2px] text-coffee">
        {KIND_LABEL[q.kind]} · {q.cardTitle}
      </p>
      <h2 className="mt-2 text-[18px] font-bold leading-snug">{q.question}</h2>

      <ul className="mt-5 space-y-2.5">
        {q.options.map((o) => {
          const isAnswer = feedback && o.index === feedback.answerIndex;
          const isWrongPick = feedback && o.index === feedback.chosen && !feedback.correct;
          const style = isAnswer
            ? "border-good bg-good-bg text-good"
            : isWrongPick
              ? "border-bad bg-bad-bg text-bad"
              : feedback
                ? "border-line bg-foam text-mocha-2"
                : "border-line bg-foam active:bg-latte";
          return (
            <li key={o.index}>
              <button
                type="button"
                disabled={!!feedback || pending}
                onClick={() => choose(o.index)}
                className={`w-full rounded-[10px] border px-4 py-3.5 text-left font-sans text-[15px] leading-snug transition-colors ${style}`}
              >
                {isAnswer ? "✓ " : isWrongPick ? "✗ " : ""}
                {o.text}
              </button>
            </li>
          );
        })}
      </ul>

      {error && <p className="mt-4 font-sans text-[13px] text-bad">{error}</p>}

      {feedback && (
        <div className={`mt-5 rounded-[10px] px-4 py-4 ${feedback.correct ? "bg-good-bg" : "bg-bad-bg"}`}>
          <p className={`font-sans text-[14px] font-semibold ${feedback.correct ? "text-good" : "text-bad"}`}>
            {feedback.correct ? "Right! +10 XP" : "Not quite."}
          </p>
          <p className="mt-1.5 text-[15px] leading-relaxed">{feedback.explanation}</p>
          {!feedback.correct && (
            <Link href={`/cards/${q.cardId}`} className="mt-3 inline-block font-sans text-[13px] font-semibold text-coffee underline underline-offset-2">
              Review the card: {q.cardTitle} →
            </Link>
          )}
        </div>
      )}

      {feedback && (
        <button onClick={next} className="mt-5 h-12 w-full rounded-[10px] bg-coffee font-sans text-[15px] font-semibold text-cream">
          {step + 1 < questions.length ? "Next question" : "See my result"}
        </button>
      )}
    </div>
  );
}

function ResultCard({ result, isGuest }: { result: Extract<FinishResult, { ok: true }>; isGuest: boolean }) {
  return (
    <div className="mt-4">
      <div className="rounded-[10px] bg-coffee px-5 py-6 text-center text-cream">
        <p className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-crema">Today&apos;s quiz done</p>
        <p className="mt-2 text-[40px] font-bold leading-none">
          {result.score}/{result.total}
        </p>
        <p className="mt-2 font-sans text-[14px] text-crema">+{result.xpEarned} XP</p>
      </div>

      {result.saved && !isGuest ? (
        <div className="mt-4 grid grid-cols-2 gap-3">
          <Stat label="Day streak" value={`🔥 ${result.streak}`} />
          <Stat label="Total XP" value={String(result.xpTotal)} />
        </div>
      ) : (
        <div className="mt-4 rounded-[10px] border border-crema-line bg-latte px-4 py-4">
          <p className="text-[15px] leading-relaxed">
            Nice work! As a guest, your streak and XP aren&apos;t saved. Create a free account to start your streak.
          </p>
          <Link href="/" className="mt-3 inline-block font-sans text-[14px] font-semibold text-coffee underline underline-offset-2">
            Create my account →
          </Link>
        </div>
      )}

      {result.freezeUsed && (
        <p className="mt-4 rounded-[10px] bg-good-bg px-4 py-3 font-sans text-[13px] text-good">
          You missed a day, so this week&apos;s streak freeze kept your streak alive. 🧊
        </p>
      )}

      <p className="mt-6 text-center text-[15px] text-mocha">Come back tomorrow for a fresh quiz.</p>
      <Link
        href="/library"
        className="mt-4 flex h-12 w-full items-center justify-center rounded-[10px] border border-line bg-foam font-sans text-[15px] font-semibold"
      >
        Back to the Library
      </Link>
    </div>
  );
}

function Stat({ label, value }: { label: string; value: string }) {
  return (
    <div className="rounded-[10px] border border-line bg-foam px-4 py-3.5">
      <p className="font-sans text-[11px] font-semibold uppercase tracking-[1.5px] text-mocha-2">{label}</p>
      <p className="mt-1 text-[22px] font-bold">{value}</p>
    </div>
  );
}
