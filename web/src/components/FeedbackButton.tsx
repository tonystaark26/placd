"use client";

import { usePathname } from "next/navigation";
import { useActionState, useEffect, useState } from "react";
import { type FeedbackState, sendFeedback } from "@/app/actions/feedback";
import { SubmitButton } from "@/components/SubmitButton";

const KINDS = [
  { id: "idea", label: "Idea" },
  { id: "problem", label: "Something's broken" },
  { id: "content", label: "Wrong or unclear content" },
  { id: "other", label: "Other" },
];

// A small "Feedback" pill in the corner of every screen. Messages go to the admin Feedback page.
export function FeedbackButton() {
  const pathname = usePathname();
  const [open, setOpen] = useState(false);
  const [state, action] = useActionState<FeedbackState, FormData>(sendFeedback, { status: "idle" });
  const [formKey, setFormKey] = useState(0);

  // Close by itself a moment after a successful send, ready for next time
  useEffect(() => {
    if (state.status !== "sent") return;
    const t = setTimeout(() => {
      setOpen(false);
      setFormKey((k) => k + 1);
    }, 2200);
    return () => clearTimeout(t);
  }, [state]);

  return (
    <>
      <button
        type="button"
        onClick={() => setOpen(true)}
        className="fixed bottom-4 right-4 z-40 rounded-full border border-crema-line bg-foam px-3.5 py-2 font-sans text-[12px] font-semibold text-coffee shadow-sm active:scale-95"
      >
        Feedback
      </button>

      {open && (
        <div className="fixed inset-0 z-50 flex items-end justify-center bg-espresso/40 sm:items-center" onClick={() => setOpen(false)}>
          <div
            role="dialog"
            aria-modal="true"
            aria-label="Send feedback"
            className="cc-sheet w-full max-w-md rounded-t-[16px] bg-bg px-5 pb-6 pt-5 sm:rounded-[16px]"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="flex items-center justify-between">
              <h2 className="text-[20px] font-bold">Help us improve ChaiCase</h2>
              <button type="button" onClick={() => setOpen(false)} className="font-sans text-[13px] text-mocha-2 underline underline-offset-2">
                Close
              </button>
            </div>

            {state.status === "sent" ? (
              <p className="mt-5 rounded-[10px] bg-good-bg px-4 py-4 font-sans text-[14px] text-good">
                Thank you! Your feedback reached the ChaiCase team.
              </p>
            ) : (
              <form key={formKey} action={action} className="mt-4 space-y-3 font-sans">
                <input type="hidden" name="page" value={pathname} />
                <fieldset className="flex flex-wrap gap-2">
                  <legend className="sr-only">What kind of feedback?</legend>
                  {KINDS.map((k, i) => (
                    <label key={k.id} className="cursor-pointer">
                      <input type="radio" name="kind" value={k.id} defaultChecked={i === 0} className="peer sr-only" />
                      <span className="block rounded-full border border-crema-line bg-foam px-3 py-1.5 text-[12px] font-semibold text-mocha peer-checked:border-coffee peer-checked:bg-coffee peer-checked:text-cream">
                        {k.label}
                      </span>
                    </label>
                  ))}
                </fieldset>
                <textarea
                  name="message"
                  required
                  rows={4}
                  maxLength={2000}
                  placeholder="The quiz answer for question 3 looks wrong…"
                  className="block w-full rounded-[10px] border border-line bg-foam px-3.5 py-3 text-[14px] leading-relaxed text-espresso"
                />
                {state.status === "error" && <p className="text-[13px] text-bad">{state.message}</p>}
                <SubmitButton pendingText="Sending…">Send feedback</SubmitButton>
                <p className="text-[11px] text-mocha-2">We see your display name (or &quot;Guest&quot;) and which screen you were on.</p>
              </form>
            )}
          </div>
        </div>
      )}
    </>
  );
}
