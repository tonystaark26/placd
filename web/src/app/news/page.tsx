import type { Metadata } from "next";
import Link from "next/link";
import { connection } from "next/server";
import { Suspense } from "react";
import { StoryCard } from "@/components/StoryCard";
import { getCardList } from "@/lib/cards";
import { getBrief, LANES, prettyDate, todaysPick } from "@/lib/news";
import { istToday } from "@/lib/quiz";

export const metadata: Metadata = { title: "Chai & Charts · ChaiCase" };

async function Brief() {
  await connection(); // "today" depends on when the student opens the page
  const [{ date, stories }, cards] = await Promise.all([getBrief(istToday()), getCardList()]);
  const titles = new Map(cards.map((c) => [c.id, c.title]));
  const pick = todaysPick(stories);
  const top = stories.slice(0, 3); // already in order of news value
  const rest = stories.slice(3);
  const laneName = (id: string) => LANES.find((l) => l.id === id)?.name ?? id;

  if (!date || stories.length === 0) {
    return (
      <p className="mt-6 rounded-[10px] border border-line bg-foam px-4 py-5 text-[15px] text-mocha">
        Today&apos;s Chai &amp; Charts is still brewing. Check back a little later.
      </p>
    );
  }

  return (
    <>
      <p className="mt-1.5 font-sans text-[13px] text-mocha-2">
        {prettyDate(date)} · {stories.length} {stories.length === 1 ? "story" : "stories"}
      </p>

      {/* jump links: the day's top stories, then each lane that has more */}
      <nav className="mt-4 flex flex-wrap gap-2 font-sans text-[12px]">
        <a href="#top" className="rounded-full bg-coffee px-3 py-1.5 font-semibold text-cream">
          Top stories
        </a>
        {LANES.filter((l) => rest.some((s) => s.lane === l.id)).map((l) => (
          <a key={l.id} href={`#${l.id}`} className="rounded-full border border-crema-line bg-latte px-3 py-1.5 font-semibold text-coffee">
            {l.name}
          </a>
        ))}
      </nav>

      {/* Stories arrive ranked by that day's news value, so the biggest ones lead */}
      <section id="top" className="mt-8 scroll-mt-4">
        <h2 className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-coffee">Top stories today</h2>
        <div className="mt-3 space-y-3">
          {top.map((s) => (
            <StoryCard
              key={s.id}
              story={s}
              pick={s.id === pick?.id}
              lane={laneName(s.lane)}
              cardTitle={s.card_id ? titles.get(s.card_id) : undefined}
            />
          ))}
        </div>
      </section>

      {LANES.map((lane) => {
        const list = rest.filter((s) => s.lane === lane.id);
        if (list.length === 0) return null;
        return (
          <section key={lane.id} id={lane.id} className="mt-8 scroll-mt-4">
            <h2 className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-mocha-2">{lane.name}</h2>
            <div className="mt-3 space-y-3">
              {list.map((s) => (
                <StoryCard
                  key={s.id}
                  story={s}
                  pick={s.id === pick?.id}
                  cardTitle={s.card_id ? titles.get(s.card_id) : undefined}
                />
              ))}
            </div>
          </section>
        );
      })}

      <Link
        href="/quiz"
        className="mt-10 flex h-12 w-full items-center justify-center rounded-[10px] bg-coffee font-sans text-[15px] font-semibold text-cream"
      >
        Now test yourself: today&apos;s quiz
      </Link>
    </>
  );
}

export default function NewsPage() {
  return (
    <main className="mx-auto w-full max-w-md px-5 pb-14 pt-6">
      <nav className="font-sans text-[13px]">
        <Link href="/desk" className="font-medium text-coffee">
          ← Study Desk
        </Link>
      </nav>
      <h1 className="mt-5 text-[30px] leading-snug">☕ Chai &amp; Charts</h1>
      <p className="mt-1 text-[15px] text-mocha">
        Today&apos;s business news over a cup of chai, and the concept behind every story.
      </p>
      <Suspense fallback={<div className="mt-6 h-64 animate-pulse rounded-[10px] bg-foam" />}>
        <Brief />
      </Suspense>
    </main>
  );
}
