import Link from "next/link";
import { signOut } from "@/app/actions/auth";
import { getAccount } from "@/lib/account";
import { createClient } from "@/lib/supabase/server";

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

  const supabase = await createClient();
  const { data: isAdmin } = await supabase.rpc("is_admin");

  return (
    <form action={signOut} className="flex items-center gap-3 font-sans text-[13px]">
      {isAdmin && (
        <>
          <Link href="/admin/news" className="rounded-full bg-coffee px-3 py-1 text-[12px] font-semibold text-cream">
            News
          </Link>
          <Link href="/admin/feedback" className="rounded-full bg-coffee px-3 py-1 text-[12px] font-semibold text-cream">
            Feedback
          </Link>
        </>
      )}
      <span className="font-semibold">{account.alias ?? "You"}</span>
      <button type="submit" className="text-mocha-2 underline underline-offset-2">
        Sign out
      </button>
    </form>
  );
}
