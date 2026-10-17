import Link from "next/link";
import { connection } from "next/server";
import { getBrief } from "@/lib/news";
import { istToday } from "@/lib/quiz";

// "Today's brief" entry in the Library
export async function BriefLink() {
  await connection();
  const today = istToday();
  const { date, stories } = await getBrief(today);
  const fresh = date === today;
  return (
    <Link href="/news" className="mt-3 flex items-center justify-between gap-3 rounded-[10px] border border-crema-line bg-latte px-4 py-3.5">
      <span>
        <span className="block font-sans text-[11px] font-semibold uppercase tracking-[2px] text-coffee">Today&apos;s brief</span>
        <span className="mt-0.5 block text-[15px] font-bold leading-snug">
          {stories.length === 0
            ? "Coming soon"
            : `${stories.length} ${stories.length === 1 ? "story" : "stories"}${fresh ? ", explained simply" : " from the latest brief"}`}
        </span>
      </span>
      <span className="font-sans text-[18px] text-coffee" aria-hidden="true">
        →
      </span>
    </Link>
  );
}
