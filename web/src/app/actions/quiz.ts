"use server";

import { createClient } from "@/lib/supabase/server";

// Both actions call scoring functions that live inside the database (supabase/003_quiz_rules.sql),
// so the browser never decides what's right or how much XP is earned.

export type AnswerResult =
  | { ok: true; correct: boolean; answerIndex: number; explanation: string }
  | { ok: false; message: string };

export async function submitAnswer(questionId: number, choice: number): Promise<AnswerResult> {
  const supabase = await createClient();
  const { data, error } = await supabase.rpc("answer_question", { p_question_id: questionId, p_choice: choice });
  if (error || !data) return { ok: false, message: "Couldn't check that answer. Please try again." };
  return { ok: true, correct: data.correct, answerIndex: data.answer_index, explanation: data.explanation };
}

export type FinishResult =
  | {
      ok: true;
      score: number;
      total: number;
      xpEarned: number;
      xpTotal: number;
      streak: number;
      freezeUsed: boolean;
      saved: boolean;
    }
  | { ok: false; message: string };

export async function finishQuiz(): Promise<FinishResult> {
  const supabase = await createClient();
  const { data, error } = await supabase.rpc("finish_daily_quiz");
  if (error || !data) return { ok: false, message: "Couldn't save your result. Please try again." };
  return {
    ok: true,
    score: data.score,
    total: data.total,
    xpEarned: data.xp_earned,
    xpTotal: data.xp_total,
    streak: data.streak,
    freezeUsed: data.freeze_used,
    saved: data.saved,
  };
}
