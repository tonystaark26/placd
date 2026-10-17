import { createClient } from "@supabase/supabase-js";
import { cacheLife } from "next/cache";

// Concept cards are the same for every student, so we read them without a login
// and keep a copy for an hour instead of asking the database on every visit.

export type Practice = { kind: "concept" | "application" | "case"; question: string; answer: string };

export type Card = {
  id: string;
  subject_id: string;
  num: number;
  title: string;
  one_line: string;
  explain: string;
  example: string;
  news_label: string | null;
  news: string | null;
  interview_q: string;
  interview_a: string;
  trap: string | null;
  practice: Practice[] | null;
  source: string | null;
  status: "draft" | "reviewed" | "verified";
};

export type CardSummary = Pick<Card, "id" | "subject_id" | "num" | "title" | "one_line" | "status">;

export const SUBJECT_NAMES: Record<string, string> = {
  econ: "Managerial Economics",
  fin: "Finance",
  mkt: "Marketing",
  acct: "Cost & Financial Accounting",
};

function db() {
  return createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY!,
    { auth: { persistSession: false } },
  );
}

export async function getCardList(): Promise<CardSummary[]> {
  "use cache";
  cacheLife("hours");
  const { data, error } = await db()
    .from("concept_cards")
    .select("id, subject_id, num, title, one_line, status")
    .order("subject_id")
    .order("num");
  if (error) throw new Error(`Could not load cards: ${error.message}`);
  return data;
}

export async function getCard(id: string): Promise<Card | null> {
  "use cache";
  cacheLife("hours");
  const { data, error } = await db().from("concept_cards").select("*").eq("id", id).maybeSingle();
  if (error) throw new Error(`Could not load card ${id}: ${error.message}`);
  return data;
}
