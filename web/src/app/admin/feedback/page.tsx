import type { Metadata } from "next";
import Link from "next/link";
import { notFound, redirect } from "next/navigation";
import { Suspense } from "react";
import { markFeedbackDone } from "@/app/actions/feedback";
import { getAccount } from "@/lib/account";
import { createClient } from "@/lib/supabase/server";

export const metadata: Metadata = { title: "Feedback · ChaiCase" };

type Feedback = {
  id: number;
  created_at: string;
  user_id: string | null;
  kind: "idea" | "problem" | "content" | "other";
  message: string;
  page: string | null;
  status: "new" | "done";
};

const KIND_LABEL = { idea: "Idea", problem: "Something's broken", content: "Content", other: "Other" };
const KIND_STYLE = {
  idea: "bg-good-bg text-good",
  problem: "bg-bad-bg text-bad",
  content: "bg-crema text-coffee",
  other: "bg-latte text-mocha",
};

const when = (iso: string) =>
  new Intl.DateTimeFormat("en-IN", { day: "numeric", month: "short", hour: "numeric", minute: "2-digit", timeZone: "Asia/Kolkata" }).format(
    new Date(iso),
  );

async function FeedbackList() {
  const account = await getAccount();
  if (!account) redirect("/");

  const supabase = await createClient();
  const { data: isAdmin } = await supabase.rpc("is_admin");
  if (!isAdmin) notFound(); // students never learn this page exists

  const { data } = await supabase
    .from("feedback")
    .select("id, created_at, user_id, kind, message, page, status")
    .order("created_at", { ascending: false })
    .limit(200);
  const items = (data ?? []) as Feedback[];

  // Who sent it: the display name, "Guest" for guests, "Visitor" when not signed in
  const ids = [...new Set(items.map((f) => f.user_id).filter(Boolean))] as string[];
  const { data: profiles } = ids.length
    ? await supabase.from("profiles").select("id, alias").in("id", ids)
    : { data: [] as { id: string; alias: string }[] };
  const names = new Map((profiles ?? []).map((p) => [p.id, p.alias]));
  const who = (f: Feedback) => (f.user_id ? (names.get(f.user_id) ?? "Guest") : "Visitor (not signed in)");

  const fresh = items.filter((f) => f.status === "new");
  const done = items.filter((f) => f.status === "done");

  if (items.length === 0) {
    return <p className="mt-6 rounded-[10px] border border-line bg-foam px-4 py-5 text-[15px] text-mocha">No feedback yet.</p>;
  }

  const Item = ({ f }: { f: Feedback }) => (
    <li className={`rounded-[10px] border border-line px-4 py-3.5 ${f.status === "done" ? "bg-latte/60" : "bg-foam"}`}>
      <div className="flex flex-wrap items-center justify-between gap-2 font-sans text-[12px]">
        <span className={`rounded-full px-2.5 py-0.5 font-semibold ${KIND_STYLE[f.kind]}`}>{KIND_LABEL[f.kind]}</span>
        <span className="text-mocha-2">{when(f.created_at)}</span>
      </div>
      <p className="mt-2 whitespace-pre-wrap text-[15px] leading-relaxed">{f.message}</p>
      <div className="mt-2.5 flex flex-wrap items-center justify-between gap-2 font-sans text-[12px] text-mocha-2">
        <span>
          {who(f)}
          {f.page && <> · on {f.page}</>}
        </span>
        <form action={markFeedbackDone}>
          <input type="hidden" name="id" value={f.id} />
          {f.status === "done" && <input type="hidden" name="undo" value="1" />}
          <button className="rounded-full border border-line bg-cream px-3 py-1 font-semibold text-mocha">
            {f.status === "done" ? "Mark as new" : "Mark done ✓"}
          </button>
        </form>
      </div>
    </li>
  );

  return (
    <>
      <h2 className="mt-8 font-sans text-[11px] font-semibold uppercase tracking-[2px] text-coffee">New · {fresh.length}</h2>
      <ul className="mt-3 space-y-3">
        {fresh.map((f) => (
          <Item key={f.id} f={f} />
        ))}
      </ul>
      {done.length > 0 && (
        <>
          <h2 className="mt-8 font-sans text-[11px] font-semibold uppercase tracking-[2px] text-mocha-2">Done · {done.length}</h2>
          <ul className="mt-3 space-y-3">
            {done.map((f) => (
              <Item key={f.id} f={f} />
            ))}
          </ul>
        </>
      )}
    </>
  );
}

export default function AdminFeedbackPage() {
  return (
    <main className="mx-auto w-full max-w-md px-5 pb-20 pt-6">
      <nav className="flex justify-between font-sans text-[13px]">
        <Link href="/desk" className="font-medium text-coffee">
          ← Study Desk
        </Link>
        <Link href="/admin/news" className="font-medium text-coffee">
          Approve news →
        </Link>
      </nav>
      <h1 className="mt-5 text-[30px] leading-snug">Feedback</h1>
      <p className="mt-1 text-[15px] text-mocha">What students and visitors told us, newest first. Only admins see this page.</p>
      <Suspense fallback={<div className="mt-6 h-64 animate-pulse rounded-[10px] bg-foam" />}>
        <FeedbackList />
      </Suspense>
    </main>
  );
}
