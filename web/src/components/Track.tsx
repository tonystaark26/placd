"use client";

import Link from "next/link";
import { useEffect } from "react";
import { recordOpen, type OpenKind } from "@/lib/track";

// Records that this page was opened. Renders nothing.
export function TrackOpen({ kind, item }: { kind: OpenKind; item?: string }) {
  useEffect(() => {
    recordOpen(kind, item);
  }, [kind, item]);
  return null;
}

// A link that records the tap before going on. External links open in a new tab.
export function TrackedLink({
  href,
  kind,
  item,
  external = false,
  className,
  children,
}: {
  href: string;
  kind: OpenKind;
  item?: string;
  external?: boolean;
  className?: string;
  children: React.ReactNode;
}) {
  const onClick = () => recordOpen(kind, item);
  return external ? (
    <a href={href} target="_blank" rel="noreferrer" className={className} onClick={onClick}>
      {children}
    </a>
  ) : (
    <Link href={href} className={className} onClick={onClick}>
      {children}
    </Link>
  );
}
