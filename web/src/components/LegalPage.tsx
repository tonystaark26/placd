import Link from "next/link";

export const CONTACT_EMAIL = "tonystaark26@gmail.com";
export const LAST_UPDATED = "18 October 2026";

// Shared look for the Privacy Policy and Terms pages
export function LegalPage({ title, intro, children }: { title: string; intro: string; children: React.ReactNode }) {
  return (
    <main className="mx-auto w-full max-w-2xl px-6 pb-16 pt-8">
      <Link href="/" className="font-sans text-[13px] font-medium text-coffee">
        ← ChaiCase
      </Link>
      <h1 className="mt-8 text-[30px] leading-snug">{title}</h1>
      <p className="mt-2 font-sans text-[12px] text-mocha-2">Last updated: {LAST_UPDATED}</p>
      <p className="mt-5 text-[15px] leading-relaxed text-mocha">{intro}</p>
      <div className="legal mt-8 space-y-8 text-[15px] leading-relaxed">{children}</div>
    </main>
  );
}

export function Section({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <section>
      <h2 className="font-sans text-[13px] font-semibold uppercase tracking-[1.5px] text-coffee">{title}</h2>
      <div className="mt-3 space-y-3 [&_li]:ml-5 [&_li]:list-disc [&_li]:pl-1 [&_li]:marker:text-coffee [&_ul]:space-y-1.5">
        {children}
      </div>
    </section>
  );
}

export function Mail() {
  return (
    <a href={`mailto:${CONTACT_EMAIL}`} className="text-coffee underline underline-offset-2">
      {CONTACT_EMAIL}
    </a>
  );
}
