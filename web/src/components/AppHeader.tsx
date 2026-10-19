import Link from "next/link";
import { Suspense } from "react";
import { AccountBar } from "@/components/AccountBar";
import { LogoMark } from "@/components/Logo";

// The ChaiCase mark plus who's signed in, at the top of the main screens
export function AppHeader() {
  return (
    <div className="flex min-h-8 items-center justify-between">
      <Link href="/desk" className="flex items-center gap-2">
        <LogoMark className="h-8 w-8" />
        <span className="font-bookman text-[15px] font-bold tracking-[0.01em]">ChaiCase</span>
      </Link>
      <Suspense fallback={null}>
        <AccountBar />
      </Suspense>
    </div>
  );
}
