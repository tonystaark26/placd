import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { Suspense } from "react";
import { AppHeader } from "@/components/AppHeader";
import { getCardList, SECTIONS, SUBJECT_NAMES } from "@/lib/cards";

const SUBJECT_BLURBS: Record<string, string> = {
  econ: "Demand, elasticity, supply, costs of choices, how consumers decide",
  mkt: "Customers, value, research, buying behaviour, strategy and ethics",
  acct: "Cost control, the accounting process and reading financial statements",
  fin: "Money, markets and corporate finance",
};

export function generateStaticParams() {
  return SECTIONS.map((s) => ({ section: s.id }));
}

export async function generateMetadata({ params }: PageProps<"/learn/[section]">): Promise<Metadata> {
  const { section: id } = await params;
  const section = SECTIONS.find((s) => s.id === id);
  return { title: section ? `${section.name} · PLACED` : "PLACED" };
}

export default function SectionPage({ params }: PageProps<"/learn/[section]">) {
  return (
    <main className="mx-auto w-full max-w-md px-5 pb-14 pt-8">
      <AppHeader />
      <nav className="mt-6 font-sans text-[13px]">
        <Link href="/desk" className="font-medium text-coffee">
          ← Study Desk
        </Link>
      </nav>
      <Suspense fallback={<div className="mt-6 h-64 animate-pulse rounded-[12px] bg-foam" />}>
        {params.then(({ section }) => (
          <Section id={section} />
        ))}
      </Suspense>
    </main>
  );
}

async function Section({ id }: { id: string }) {
  const section = SECTIONS.find((s) => s.id === id);
  if (!section) notFound();

  const cards = await getCardList();
  const subjects = section.subjects.filter((sub) => cards.some((c) => c.subject_id === sub));

  return (
    <>
      <h1 className="mt-4 text-[30px] leading-snug">{section.name}</h1>
      <p className="mt-1 text-[15px] text-mocha">{section.blurb}. Tap a subject to see its concepts.</p>

      <div className="mt-6 space-y-3">
        {subjects.map((sub) => {
          const list = cards.filter((c) => c.subject_id === sub);
          return (
            <details key={sub} open={subjects.length === 1} className="group overflow-hidden rounded-[12px] border border-line bg-foam">
              <summary className="flex cursor-pointer list-none items-center justify-between gap-3 px-4 py-4">
                <span>
                  <span className="block text-[17px] font-bold leading-snug">{SUBJECT_NAMES[sub] ?? sub}</span>
                  <span className="mt-1 block font-sans text-[12px] leading-snug text-mocha">{SUBJECT_BLURBS[sub]}</span>
                </span>
                <span className="font-sans text-[18px] text-coffee transition-transform group-open:rotate-90" aria-hidden="true">
                  ›
                </span>
              </summary>
              <ul className="border-t border-line">
                {list.map((card) => (
                  <li key={card.id} className="border-b border-line last:border-b-0">
                    <Link href={`/cards/${card.id}`} className="flex gap-3.5 px-4 py-3.5 active:bg-latte">
                      <span className="pt-1 font-sans text-xs font-semibold text-coffee">{String(card.num).padStart(2, "0")}</span>
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
            </details>
          );
        })}
      </div>
    </>
  );
}
