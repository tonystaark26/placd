import Link from "next/link";
import { connection } from "next/server";
import { getBrief, LANES, todaysPick } from "@/lib/news";
import { istToday } from "@/lib/quiz";

// "Chai & Charts" (the daily news) at the top of the Study Desk. When a story is picked for the day,
// it's told as a short story to pull students in; otherwise we show a peek at the first headlines.
export async function BriefLink() {
  await connection();
  const today = istToday();
  const { date, stories } = await getBrief(today);
  const fresh = date === today;
  const laneName = (id: string) => LANES.find((l) => l.id === id)?.name ?? id;
  const pick = todaysPick(stories);

  return (
    <Link
      href={pick ? `/news#story-${pick.id}` : "/news"}
      className="mt-6 block rounded-[12px] bg-coffee px-4 pb-4 pt-4 text-cream active:opacity-95"
    >
      <span className="flex items-baseline justify-between gap-3">
        <span className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-crema">
          ☕ Chai &amp; Charts{fresh || stories.length === 0 ? " · today" : " · latest"}
        </span>
        {stories.length > 0 && <span className="font-sans text-[11px] text-crema">5 min read</span>}
      </span>

      {stories.length === 0 ? (
        <span className="mt-2 block text-[17px] font-bold leading-snug">Today&apos;s Chai &amp; Charts is still brewing. Check back soon.</span>
      ) : pick ? (
        <>
          <span className="mt-3 block text-[20px] font-bold leading-snug">{pick.teaser_title}</span>
          <span className="mt-2.5 block text-[14px] leading-relaxed text-cream/90">{pick.teaser}</span>
          <span className="mt-4 flex h-11 items-center justify-center rounded-[10px] bg-cream font-sans text-[15px] font-semibold text-coffee">
            Read the story →
          </span>
          {stories.length > 1 && (
            <span className="mt-2.5 block text-center font-sans text-[12px] text-crema">
              + {stories.length - 1} more {stories.length - 1 === 1 ? "story" : "stories"} in today&apos;s Chai &amp; Charts
            </span>
          )}
        </>
      ) : (
        <>
          <span className="mt-2 block text-[17px] font-bold leading-snug">Today&apos;s news, and why it matters in your interview</span>
          <span className="mt-3 block space-y-2">
            {stories.slice(0, 3).map((s) => (
              <span key={s.id} className="block rounded-[8px] bg-espresso/25 px-3 py-2">
                <span className="block font-sans text-[10px] font-semibold uppercase tracking-[1.5px] text-crema">
                  {laneName(s.lane)}
                </span>
                <span className="mt-0.5 block text-[14px] leading-snug">{s.headline}</span>
              </span>
            ))}
          </span>
          <span className="mt-3 flex h-11 items-center justify-center rounded-[10px] bg-cream font-sans text-[15px] font-semibold text-coffee">
            Grab your chai and read →
          </span>
        </>
      )}
    </Link>
  );
}
