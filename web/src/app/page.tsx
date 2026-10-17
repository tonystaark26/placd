import Link from "next/link";

const promises = [
  "The news, without the jargon",
  "The concept behind every story",
  "A quiz that keeps your basics sharp",
];

export default function Welcome() {
  return (
    <main className="mx-auto flex min-h-dvh w-full max-w-md flex-col justify-between px-6 pb-9 pt-20">
      <div className="flex flex-col gap-7">
        <div className="flex items-center gap-2.5">
          <span className="h-2.5 w-2.5 rounded-full bg-coffee" aria-hidden="true" />
          <span className="font-sans text-xs font-semibold tracking-[3px]">PLACED</span>
        </div>

        <h1 className="text-3xl font-bold leading-snug">
          Ten minutes a day.
          <br />
          <span className="text-coffee">Ready for any interview.</span>
        </h1>

        <p className="text-[15px] leading-relaxed text-mocha">
          Today&apos;s business news, explained simply and linked to the MBA concept
          behind it. Then a short quiz to keep your basics sharp.
        </p>

        <ol className="border-t border-line">
          {promises.map((text, i) => (
            <li key={text} className="flex gap-3.5 border-b border-line py-3.5">
              <span className="pt-0.5 font-sans text-xs font-semibold text-coffee">
                {String(i + 1).padStart(2, "0")}
              </span>
              <span className="text-sm leading-normal">{text}</span>
            </li>
          ))}
        </ol>
      </div>

      <div className="mt-10 flex flex-col items-center gap-3">
        <Link
          href="/library"
          className="flex h-12 w-full items-center justify-center rounded-[10px] bg-coffee font-sans text-[15px] font-semibold text-cream"
        >
          Explore the concept cards
        </Link>
        <span className="font-sans text-xs text-mocha-2">
          Built by MBA students, for MBA students
        </span>
      </div>
    </main>
  );
}
