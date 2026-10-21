import type { Metadata } from "next";
import { LegalPage, Mail, Section } from "@/components/LegalPage";

export const metadata: Metadata = { title: "Privacy Policy · ChaiCase" };

export default function Privacy() {
  return (
    <LegalPage
      title="Privacy Policy"
      intro="ChaiCase is a free study app built by MBA students in Kolkata to help students prepare for placement interviews. This page explains, in plain language, what information we keep, why, and how you can see or delete it."
    >
      <Section title="What we collect">
        <ul>
          <li>
            <strong>If you sign in with Google:</strong> your name, email address and profile picture, as shared by
            Google. We never see your Google password.
          </li>
          <li>
            <strong>If you sign in with email:</strong> your email address, used only to send you sign-in links.
          </li>
          <li>
            <strong>If you try it as a guest:</strong> no name or email. We create an anonymous account that is linked
            to your browser by a login cookie.
          </li>
          <li>
            <strong>Your display name:</strong> the name you choose for the app, such as on the leaderboard.
          </li>
          <li>
            <strong>Your learning activity:</strong> which concept cards you&apos;ve studied, which cards and news
            stories you open, your quiz answers and scores, your streak and XP.
          </li>
          <li>
            <strong>Basic technical data:</strong> a login cookie that keeps you signed in, and the standard records
            our hosting providers keep when any website is visited (such as IP address and browser type).
          </li>
        </ul>
        <p>We do not collect payment details, phone numbers, contacts or location.</p>
      </Section>

      <Section title="Why we use it">
        <ul>
          <li>To sign you in and keep you signed in.</li>
          <li>To save your progress, schedule your revision and show your streak.</li>
          <li>
            To show the leaderboard. <strong>Other students only see your display name and XP</strong>, never your
            real name or email.
          </li>
          <li>
            To find out which concepts students find hard and which parts of the app they use, so we can improve it
            (as overall numbers).
          </li>
        </ul>
        <p>
          We do <strong>not</strong> sell your information, show ads, or use your data to market other products.
        </p>
      </Section>

      <Section title="Who helps us run the app">
        <p>We use a few trusted services that process data only to run ChaiCase for us:</p>
        <ul>
          <li>
            <strong>Supabase</strong>: our database and sign-in system. Your data is stored on servers in Mumbai,
            India. Supabase also sends our sign-in emails.
          </li>
          <li>
            <strong>Vercel</strong>: hosts the website.
          </li>
          <li>
            <strong>Google</strong>: only if you choose &ldquo;Continue with Google&rdquo;.
          </li>
        </ul>
        <p>We will share information with authorities only if Indian law requires it.</p>
      </Section>

      <Section title="How long we keep it">
        <p>
          We keep your information while your account is active. If you ask us to delete your account, we delete your
          profile and learning activity within 30 days. Guest accounts that haven&apos;t been used for a long time may
          be removed.
        </p>
      </Section>

      <Section title="Your rights">
        <p>Under India&apos;s Digital Personal Data Protection Act, 2023, you can ask us to:</p>
        <ul>
          <li>tell you what information we hold about you,</li>
          <li>correct or update it,</li>
          <li>delete it, and</li>
          <li>stop using it (by deleting your account).</li>
        </ul>
        <p>
          Email <Mail /> from the address you signed in with. We&apos;ll reply within 30 days. This address is also
          our contact for any complaint about how we handle your data.
        </p>
      </Section>

      <Section title="Who can use ChaiCase">
        <p>ChaiCase is meant for college students aged 18 and over.</p>
      </Section>

      <Section title="Changes to this policy">
        <p>
          If we change this policy in a way that matters, we&apos;ll tell you in the app before the change takes effect.
          The date at the top shows the latest version.
        </p>
      </Section>

      <Section title="Contact">
        <p>
          Questions about privacy? Email <Mail />.
        </p>
      </Section>
    </LegalPage>
  );
}
