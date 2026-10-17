import { createClient } from "@/lib/supabase/client";

// Called from the student's browser straight to the database in Mumbai (no detour via
// the web server), so answers come back fast. Safe: the scoring functions inside the
// database (supabase/003_quiz_rules.sql) check every answer and only trust the signed-in user.

export type AnswerResult =
  | { ok: true; correct: boolean; answerIndex: number; explanation: string }
  | { ok: false; message: string };

export async function submitAnswer(questionId: number, choice: number): Promise<AnswerResult> {
  const { data, error } = await createClient().rpc("answer_question", { p_question_id: questionId, p_choice: choice });
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
  const { data, error } = await createClient().rpc("finish_daily_quiz");
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
