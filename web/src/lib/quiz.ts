import { getCardList } from "@/lib/cards";
import { createClient } from "@/lib/supabase/server";

// Builds today's quiz for one student: cards due for revision first, then new cards,
// one question per card, always ending with a mini case.

export type QuizOption = { text: string; index: number };
export type QuizQuestion = {
  id: number;
  cardId: string;
  cardTitle: string;
  kind: "concept" | "application" | "case" | "news";
  question: string;
  options: QuizOption[]; // shuffled; `index` is the original position the database knows
};
export type DayResult = { score: number; total: number; xpEarned: number };
export type Stats = { streak: number; xp: number; freezesLeft: number; isGuest: boolean };

export type DailyQuiz =
  | { done: true; result: DayResult; stats: Stats }
  | { done: false; questions: QuizQuestion[]; answered: Record<number, boolean>; stats: Stats };

/** Today's date in India as YYYY-MM-DD */
export function istToday(offsetDays = 0) {
  const d = new Date(Date.now() + offsetDays * 86_400_000);
  return new Intl.DateTimeFormat("en-CA", { timeZone: "Asia/Kolkata" }).format(d);
}

/** Repeatable "random" numbers, so a student sees the same quiz if they reload */
function seeded(seedText: string) {
  let h = 1779033703;
  for (const ch of seedText) h = Math.imul(h ^ ch.charCodeAt(0), 3432918353);
  return () => {
    h = Math.imul(h ^ (h >>> 16), 2246822507);
    h = Math.imul(h ^ (h >>> 13), 3266489909);
    return ((h ^= h >>> 16) >>> 0) / 4294967296;
  };
}

function shuffle<T>(list: T[], rand: () => number) {
  const a = [...list];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(rand() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

/** The streak as it stands today: it lapses if the student missed more days than a freeze covers */
export function liveStreak(p: { streak: number; last_active_date: string | null; freezes_left: number }) {
  if (!p.last_active_date) return 0;
  if (p.last_active_date >= istToday(-1)) return p.streak;
  if (p.last_active_date === istToday(-2) && p.freezes_left > 0) return p.streak;
  return 0;
}

export async function getStats(userId: string, isGuest: boolean): Promise<Stats> {
  const supabase = await createClient();
  const { data: p } = await supabase
    .from("profiles")
    .select("streak, xp, last_active_date, freezes_left")
    .eq("id", userId)
    .maybeSingle();
  if (!p) return { streak: 0, xp: 0, freezesLeft: 1, isGuest };
  return { streak: liveStreak(p), xp: p.xp, freezesLeft: p.freezes_left, isGuest };
}

export async function getDailyQuiz(userId: string, isGuest: boolean): Promise<DailyQuiz> {
  const supabase = await createClient();
  const today = istToday();
  const stats = await getStats(userId, isGuest);

  const { data: session } = await supabase
    .from("daily_sessions")
    .select("score, total, xp_earned")
    .eq("session_date", today)
    .maybeSingle();
  if (session) {
    return { done: true, result: { score: session.score, total: session.total, xpEarned: session.xp_earned }, stats };
  }

  const [{ data: profile }, { data: progress }, { data: rows }, cards] = await Promise.all([
    supabase.from("profiles").select("daily_minutes").eq("id", userId).maybeSingle(),
    supabase.from("card_progress").select("card_id, due_date"),
    supabase.from("quiz_questions").select("id, card_id, kind, question, options").eq("status", "approved"),
    getCardList(),
  ]);

  const length = { 5: 4, 10: 7, 15: 10 }[profile?.daily_minutes as 5 | 10 | 15] ?? 7;
  const rand = seeded(`${userId}:${today}`);
  const due = new Map((progress ?? []).map((p) => [p.card_id, p.due_date as string]));
  const titles = new Map(cards.map((c) => [c.id, c.title]));
  const byCard = new Map<string, NonNullable<typeof rows>>();
  for (const q of rows ?? []) byCard.set(q.card_id, [...(byCard.get(q.card_id) ?? []), q]);

  // Order cards: due for revision (oldest first) → never seen → seen but not yet due
  const withQuestions = shuffle([...byCard.keys()], rand);
  const dueNow = withQuestions.filter((id) => due.has(id) && due.get(id)! <= today).sort((a, b) => due.get(a)!.localeCompare(due.get(b)!));
  const fresh = withQuestions.filter((id) => !due.has(id));
  const later = withQuestions.filter((id) => due.has(id) && due.get(id)! > today).sort((a, b) => due.get(a)!.localeCompare(due.get(b)!));
  const chosen = [...dueNow, ...fresh, ...later].slice(0, length);

  // One question per card; the last one is always a mini case
  const questions: QuizQuestion[] = chosen.map((cardId, i) => {
    const pool = byCard.get(cardId)!;
    const last = i === chosen.length - 1;
    const pick = (last && pool.find((q) => q.kind === "case")) || pool[Math.floor(rand() * pool.length)];
    const options = shuffle(
      (pick.options as string[]).map((text, index) => ({ text, index })),
      rand,
    );
    return { id: pick.id, cardId, cardTitle: titles.get(cardId) ?? cardId, kind: pick.kind, question: pick.question, options };
  });

  // If the student reloads mid-quiz, remember what they already answered today
  const { data: attempts } = await supabase
    .from("quiz_attempts")
    .select("question_id, is_correct, answered_at")
    .in(
      "question_id",
      questions.map((q) => q.id),
    )
    .gte("answered_at", `${today}T00:00:00+05:30`)
    .order("answered_at");
  const answered: Record<number, boolean> = {};
  for (const a of attempts ?? []) if (!(a.question_id in answered)) answered[a.question_id] = a.is_correct;

  return { done: false, questions, answered, stats };
}
