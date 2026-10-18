import Link from "next/link";
import { Suspense } from "react";
import { AccountBar } from "@/components/AccountBar";

// The PLACED mark plus who's signed in, at the top of the main screens
export function AppHeader() {
  return (
    <div className="flex min-h-8 items-center justify-between">
      <Link href="/desk" className="flex items-center gap-2.5">
        <span className="h-2.5 w-2.5 rounded-full bg-coffee" aria-hidden="true" />
        <span className="font-sans text-xs font-semibold tracking-[3px]">PLACED</span>
      </Link>
      <Suspense fallback={null}>
        <AccountBar />
      </Suspense>
    </div>
  );
}
