import type { Metadata } from "next";
import Link from "next/link";
import { notFound, redirect } from "next/navigation";
import { Suspense } from "react";
import { approveAllForDay, approveStory, deleteStory, unapproveStory } from "@/app/actions/news";
import { StoryCard } from "@/components/StoryCard";
import { getAccount } from "@/lib/account";
import { getCardList } from "@/lib/cards";
import { LANES, prettyDate, STORY_COLUMNS, type Story } from "@/lib/news";
import { createClient } from "@/lib/supabase/server";

export const metadata: Metadata = { title: "Approve news · PLACED" };

async function ApprovalList() {
  const account = await getAccount();
  if (!account) redirect("/");

  const supabase = await createClient();
  const { data: isAdmin } = await supabase.rpc("is_admin");
  if (!isAdmin) notFound(); // students never learn this page exists

  const [{ data }, cards] = await Promise.all([
    supabase.from("news_stories").select(STORY_COLUMNS).order("publish_date", { ascending: false }).order("id").limit(60),
    getCardList(),
  ]);
  const stories = (data ?? []) as Story[];
  const titles = new Map(cards.map((c) => [c.id, c.title]));
  const days = [...new Set(stories.map((s) => s.publish_date))];
  const laneName = (id: string) => LANES.find((l) => l.id === id)?.name ?? id;

  if (stories.length === 0) {
    return <p className="mt-6 text-[15px] text-mocha">No stories yet.</p>;
  }

  return (
    <>
      {days.map((day) => {
        const list = stories.filter((s) => s.publish_date === day);
        const drafts = list.filter((s) => s.status === "draft");
        return (
          <section key={day} className="mt-8">
            <div className="flex items-center justify-between gap-3">
              <h2 className="text-[17px] font-bold">{prettyDate(day)}</h2>
              <span className="font-sans text-[12px] text-mocha-2">
                {list.length - drafts.length} of {list.length} approved
              </span>
            </div>
            {drafts.length > 0 && (
              <form action={approveAllForDay} className="mt-3">
                <input type="hidden" name="ids" value={drafts.map((s) => s.id).join(",")} />
                <button className="h-11 w-full rounded-[10px] bg-coffee font-sans text-[14px] font-semibold text-cream">
                  Approve all {drafts.length} drafts for this day
                </button>
              </form>
            )}
            <div className="mt-3 space-y-3">
              {list.map((s) => (
                <StoryCard key={s.id} story={s} cardTitle={s.card_id ? titles.get(s.card_id) : undefined}>
                  <div className="mt-3 flex items-center justify-between gap-2 border-t border-line pt-3 font-sans text-[12px]">
                    <span className={s.status === "approved" ? "font-semibold text-good" : "font-semibold text-coffee"}>
                      {laneName(s.lane)} · {s.status === "approved" ? "✓ Live" : "Draft"}
                    </span>
                    <span className="flex gap-2">
                      <form action={s.status === "approved" ? unapproveStory : approveStory}>
                        <input type="hidden" name="id" value={s.id} />
                        <button
                          className={`h-9 rounded-full px-4 font-semibold ${
                            s.status === "approved" ? "border border-line bg-cream text-mocha" : "bg-good text-cream"
                          }`}
                        >
                          {s.status === "approved" ? "Take down" : "Approve"}
                        </button>
                      </form>
                      <form action={deleteStory}>
                        <input type="hidden" name="id" value={s.id} />
                        <button className="h-9 rounded-full border border-bad px-4 font-semibold text-bad">Delete</button>
                      </form>
                    </span>
                  </div>
                </StoryCard>
              ))}
            </div>
          </section>
        );
      })}
    </>
  );
}

export default function AdminNewsPage() {
  return (
    <main className="mx-auto w-full max-w-md px-5 pb-14 pt-6">
      <nav className="flex justify-between font-sans text-[13px]">
        <Link href="/library" className="font-medium text-coffee">
          ← Library
        </Link>
        <Link href="/news" className="font-medium text-coffee">
          See what students see →
        </Link>
      </nav>
      <h1 className="mt-5 text-[22px] font-bold leading-snug">Approve news</h1>
      <p className="mt-1 text-[15px] text-mocha">
        Only approved stories reach students. To fix a typo, edit the story in Supabase&apos;s Table Editor
        (news_stories).
      </p>
      <Suspense fallback={<div className="mt-6 h-64 animate-pulse rounded-[10px] bg-foam" />}>
        <ApprovalList />
      </Suspense>
    </main>
  );
}
