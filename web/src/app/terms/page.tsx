import type { Metadata } from "next";
import Link from "next/link";
import { LegalPage, Mail, Section } from "@/components/LegalPage";

export const metadata: Metadata = { title: "Terms of Use · PLACED" };

export default function Terms() {
  return (
    <LegalPage
      title="Terms of Use"
      intro="These are the simple rules for using PLACED. By creating an account or using the app as a guest, you agree to them."
    >
      <Section title="What PLACED is">
        <p>
          PLACED helps MBA students revise core concepts and follow business news to prepare for placement interviews.
          It is a study aid.
        </p>
        <p>
          We check our concept cards and news summaries carefully, but they may still contain mistakes. Nothing in the
          app is professional, financial, legal or investment advice, and we can&apos;t promise any interview or
          placement result. If you spot an error, please tell us at <Mail />.
        </p>
      </Section>

      <Section title="Your account">
        <ul>
          <li>Keep your sign-in email or Google account secure. You&apos;re responsible for activity on your account.</li>
          <li>
            Choose a display name that isn&apos;t offensive, hateful, or pretending to be someone else. We may change
            or remove names that break this rule.
          </li>
          <li>A guest account is linked to one browser. Its progress may be lost if you clear that browser&apos;s data or switch devices.</li>
        </ul>
      </Section>

      <Section title="Fair use">
        <p>Please don&apos;t:</p>
        <ul>
          <li>try to cheat the leaderboard, break the app, or access other people&apos;s data,</li>
          <li>copy or republish our content in bulk, or</li>
          <li>use the app for anything illegal.</li>
        </ul>
        <p>We may suspend accounts that do these things.</p>
      </Section>

      <Section title="Our content">
        <p>
          The concept cards, summaries, pictures and quizzes are written by the PLACED team. You&apos;re welcome to use
          them for your own studies. News summaries are written in our own words and link to the original source.
        </p>
      </Section>

      <Section title="Price">
        <p>
          PLACED is free for early members. If we ever introduce paid plans, we&apos;ll give at least one month&apos;s
          notice in the app first, and you&apos;ll never be charged without choosing to pay.
        </p>
      </Section>

      <Section title="Changes and availability">
        <p>
          We&apos;re a small student team, so the app may change, pause, or have downtime. If we change these terms in
          a way that matters, we&apos;ll tell you in the app first.
        </p>
        <p>
          To the extent the law allows, PLACED is provided &ldquo;as is&rdquo;, and we aren&apos;t liable for losses
          from using it.
        </p>
      </Section>

      <Section title="Privacy">
        <p>
          How we handle your data is explained in our{" "}
          <Link href="/privacy" className="text-coffee underline underline-offset-2">
            Privacy Policy
          </Link>
          .
        </p>
      </Section>

      <Section title="Law and contact">
        <p>
          These terms are governed by the laws of India, and courts in Kolkata, West Bengal have jurisdiction.
          Questions? Email <Mail />.
        </p>
      </Section>
    </LegalPage>
  );
}
