import Link from "next/link";
import { signOut } from "@/app/actions/auth";
import { getAccount } from "@/lib/account";

// Small strip showing who's signed in. Guests get a nudge to save their progress.
export async function AccountBar() {
  const account = await getAccount();

  if (!account) {
    return (
      <Link href="/" className="font-sans text-[13px] font-semibold text-coffee">
        Sign in
      </Link>
    );
  }

  if (account.isGuest) {
    return (
      <Link href="/" className="rounded-full bg-crema px-3 py-1.5 font-sans text-[12px] font-semibold text-coffee">
        Guest · Save your progress
      </Link>
    );
  }

  return (
    <form action={signOut} className="flex items-center gap-3 font-sans text-[13px]">
      <span className="font-semibold">{account.alias ?? "You"}</span>
      <button type="submit" className="text-mocha-2 underline underline-offset-2">
        Sign out
      </button>
    </form>
  );
}
