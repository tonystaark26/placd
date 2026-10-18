"use client";

import { useFormStatus } from "react-dom";

// A form button that shows "Please wait…" while the form is being sent
export function SubmitButton({
  children,
  pendingText = "Please wait…",
  variant = "primary",
}: {
  children: React.ReactNode;
  pendingText?: string;
  variant?: "primary" | "outline" | "text" | "light";
}) {
  const { pending } = useFormStatus();
  const styles = {
    primary: "h-12 w-full rounded-[10px] bg-coffee text-cream",
    light: "h-11 w-full rounded-[10px] bg-cream text-coffee", // on a coffee background

    outline: "h-12 w-full rounded-[10px] border border-line bg-foam text-espresso",
    text: "h-11 w-full text-coffee underline underline-offset-4",
  }[variant];
  return (
    <button
      type="submit"
      disabled={pending}
      className={`flex items-center justify-center gap-2.5 font-sans text-[15px] font-semibold disabled:opacity-60 ${styles}`}
    >
      {pending ? pendingText : children}
    </button>
  );
}
