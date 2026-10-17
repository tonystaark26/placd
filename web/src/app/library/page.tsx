import type { Metadata } from "next";
import Link from "next/link";
import { getCardList, SUBJECT_NAMES } from "@/lib/cards";

export const metadata: Metadata = { title: "Library · PLACED" };

export default async function Library() {
  const cards = await getCardList();
  const subjects = [...new Set(cards.map((c) => c.subject_id))];

  return (
    <main className="mx-auto w-full max-w-md px-5 pb-14 pt-8">
      <Link href="/" className="flex items-center gap-2.5">
        <span className="h-2.5 w-2.5 rounded-full bg-coffee" aria-hidden="true" />
        <span className="font-sans text-xs font-semibold tracking-[3px]">PLACED</span>
      </Link>

      <h1 className="mt-7 text-[22px] font-bold leading-snug">Library</h1>
      <p className="mt-1.5 text-[15px] text-mocha">
        {cards.length} concept cards, each with a ₹100 example and a real story from the news.
      </p>

      {subjects.map((subject) => {
        const list = cards.filter((c) => c.subject_id === subject);
        return (
          <section key={subject} className="mt-8">
            <h2 className="flex items-baseline justify-between font-sans text-[11px] font-semibold uppercase tracking-[2px] text-mocha-2">
              <span>{SUBJECT_NAMES[subject] ?? subject}</span>
              <span>{list.length} cards</span>
            </h2>
            <ul className="mt-3 overflow-hidden rounded-[10px] border border-line bg-foam">
              {list.map((card) => (
                <li key={card.id} className="border-b border-line last:border-b-0">
                  <Link href={`/cards/${card.id}`} className="flex gap-3.5 px-4 py-3.5 active:bg-latte">
                    <span className="pt-1 font-sans text-xs font-semibold text-coffee">
                      {String(card.num).padStart(2, "0")}
                    </span>
                    <span className="min-w-0">
                      <span className="block text-[15px] font-bold leading-snug">{card.title}</span>
                      <span className="mt-1 line-clamp-2 block text-[13px] leading-snug text-mocha">
                        {card.one_line.replace(/\*+/g, "")}
                      </span>
                    </span>
                  </Link>
                </li>
              ))}
            </ul>
          </section>
        );
      })}
    </main>
  );
}
