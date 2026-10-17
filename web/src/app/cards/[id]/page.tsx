import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { Suspense } from "react";
import { DIAGRAMS } from "@/components/diagrams";
import { Prose } from "@/components/Prose";
import { getCard, getCardList, SUBJECT_NAMES } from "@/lib/cards";

// Build every card page ahead of time, so they open instantly
export async function generateStaticParams() {
  const cards = await getCardList();
  return cards.map((c) => ({ id: c.id }));
}

export async function generateMetadata({ params }: PageProps<"/cards/[id]">): Promise<Metadata> {
  const card = await getCard((await params).id);
  return { title: card ? `${card.title} · PLACED` : "Card not found · PLACED" };
}

const QUIZ_LABELS = { concept: "Concept", application: "Application", case: "Mini case" };

function Label({ children }: { children: React.ReactNode }) {
  return (
    <h2 className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-mocha-2">{children}</h2>
  );
}

export default function CardPage({ params }: PageProps<"/cards/[id]">) {
  // Show a light placeholder straight away, then the card as soon as it's ready
  return (
    <Suspense fallback={<CardPlaceholder />}>
      {params.then(({ id }) => (
        <CardBody id={id} />
      ))}
    </Suspense>
  );
}

function CardPlaceholder() {
  return (
    <main className="mx-auto w-full max-w-md animate-pulse px-5 pb-14 pt-6" aria-busy="true">
      <div className="h-4 w-20 rounded bg-line" />
      <div className="mt-8 h-3 w-40 rounded bg-line" />
      <div className="mt-3 h-7 w-3/4 rounded bg-line" />
      <div className="mt-6 h-24 rounded-[10px] bg-crema" />
      <div className="mt-8 h-40 rounded-[10px] bg-foam" />
    </main>
  );
}

async function CardBody({ id }: { id: string }) {
  const [card, list] = await Promise.all([getCard(id), getCardList()]);
  if (!card) notFound();

  const Diagram = DIAGRAMS[card.id];
  const sameSubject =list.filter((c) => c.subject_id === card.subject_id);
  const at = sameSubject.findIndex((c) => c.id === card.id);
  const prev = sameSubject[at - 1];
  const next = sameSubject[at + 1];

  return (
    <main className="mx-auto w-full max-w-md px-5 pb-14 pt-6">
      <nav className="flex items-center justify-between font-sans text-[13px]">
        <Link href="/library" className="font-medium text-coffee">
          ← Library
        </Link>
        <span className="text-mocha-2">
          {at + 1} of {sameSubject.length}
        </span>
      </nav>

      <header className="mt-6">
        <p className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-coffee">
          {SUBJECT_NAMES[card.subject_id] ?? card.subject_id} · Card {card.num}
        </p>
        <h1 className="mt-2 text-[22px] font-bold leading-snug">{card.title}</h1>
        {card.status !== "verified" && (
          <p className="mt-2.5 inline-block rounded-full border border-crema-line bg-crema px-2.5 py-0.5 font-sans text-[11px] font-medium text-mocha">
            {card.status === "draft" ? "Draft · being checked" : "Reviewed · awaiting final check"}
          </p>
        )}
      </header>

      {Diagram && (
        <figure className="mt-5 rounded-[10px] border border-line bg-cream px-3 py-4">
          <Diagram />
        </figure>
      )}

      <Prose
        text={card.one_line}
        className="mt-5 rounded-[10px] bg-coffee px-4 py-3.5 text-cream [&_strong]:text-cream"
      />

      <section className="mt-8">
        <Label>Explain it simply</Label>
        <Prose text={card.explain} className="mt-3" />
      </section>

      <section className="mt-8 rounded-[10px] border border-crema-line bg-latte px-4 py-4">
        <Label>The ₹100 example</Label>
        <Prose text={card.example} className="mt-3" />
      </section>

      {card.news && (
        <section className="mt-8">
          <div className="flex flex-wrap items-baseline justify-between gap-2">
            <Label>Seen in the news</Label>
            {card.news_label && (
              <span className="rounded-full bg-good-bg px-2.5 py-0.5 font-sans text-[11px] font-medium text-good">
                {card.news_label}
              </span>
            )}
          </div>
          <Prose text={card.news} className="mt-3" />
        </section>
      )}

      <section className="mt-8 rounded-[10px] border border-line bg-foam px-4 py-4">
        <Label>How interviewers ask it</Label>
        <p className="mt-3 text-[17px] italic leading-snug">“{card.interview_q}”</p>
        <details className="group mt-4">
          <summary className="flex h-12 cursor-pointer list-none items-center justify-center rounded-[10px] border border-coffee font-sans text-[14px] font-semibold text-coffee group-open:hidden">
            Show a strong answer
          </summary>
          <Prose text={card.interview_a} />
        </details>
      </section>

      {card.trap && (
        <section className="mt-8 rounded-[10px] bg-bad-bg px-4 py-4">
          <h2 className="font-sans text-[11px] font-semibold uppercase tracking-[2px] text-bad">Common trap</h2>
          <Prose text={card.trap} className="mt-3" />
        </section>
      )}

      {card.practice && card.practice.length > 0 && (
        <section className="mt-8">
          <Label>Test yourself</Label>
          <ol className="mt-3 space-y-3">
            {card.practice.map((q, i) => (
              <li key={i} className="rounded-[10px] border border-line bg-foam px-4 py-3.5">
                <p className="font-sans text-[11px] font-semibold uppercase tracking-[1.5px] text-coffee">
                  {i + 1} · {QUIZ_LABELS[q.kind] ?? q.kind}
                </p>
                <Prose text={q.question} className="mt-1.5" />
                <details className="mt-2.5">
                  <summary className="cursor-pointer font-sans text-[13px] font-semibold text-coffee">
                    Show answer
                  </summary>
                  <Prose text={q.answer} className="mt-2 border-t border-line pt-2.5" />
                </details>
              </li>
            ))}
          </ol>
        </section>
      )}

      {card.source && (
        <p className="mt-8 font-sans text-[12px] leading-snug text-mocha-2">From our course notes: {card.source}</p>
      )}

      <nav className="mt-8 grid grid-cols-2 gap-3 font-sans text-[13px]">
        {prev ? (
          <Link href={`/cards/${prev.id}`} className="rounded-[10px] border border-line px-3.5 py-3">
            <span className="block text-mocha-2">← Previous</span>
            <span className="mt-0.5 block font-medium leading-snug">{prev.title}</span>
          </Link>
        ) : (
          <span />
        )}
        {next && (
          <Link href={`/cards/${next.id}`} className="rounded-[10px] border border-line px-3.5 py-3 text-right">
            <span className="block text-mocha-2">Next →</span>
            <span className="mt-0.5 block font-medium leading-snug">{next.title}</span>
          </Link>
        )}
      </nav>
    </main>
  );
}
