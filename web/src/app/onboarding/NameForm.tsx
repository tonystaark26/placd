"use client";

import { useActionState, useState } from "react";
import { saveDisplayName, type NameState } from "@/app/actions/auth";
import { SubmitButton } from "@/components/SubmitButton";

const IDEAS = ["ChaiAndCharts", "CaseCracker", "SamosaEconomist", "GDP_Gupshup", "MarginOfChai", "BullishBong"];

export function NameForm() {
  const [state, action] = useActionState<NameState, FormData>(saveDisplayName, { status: "idle" });
  const [alias, setAlias] = useState(state.alias ?? "");

  return (
    <form action={action} className="flex flex-col gap-3">
      <label htmlFor="alias" className="font-sans text-[13px] font-semibold">
        Display name
      </label>
      <input
        id="alias"
        name="alias"
        required
        minLength={3}
        maxLength={24}
        pattern="[A-Za-z0-9_]{3,24}"
        autoComplete="off"
        autoCapitalize="off"
        value={alias}
        onChange={(e) => setAlias(e.target.value)}
        placeholder="e.g. ChaiAndCharts"
        className="h-12 rounded-[10px] border border-line bg-foam px-4 font-sans text-[15px] outline-none focus:border-coffee"
      />
      <p className="font-sans text-xs text-mocha-2">3–24 letters, numbers or _ · no spaces</p>

      <div className="flex flex-wrap gap-2">
        {IDEAS.map((idea) => (
          <button
            key={idea}
            type="button"
            onClick={() => setAlias(idea)}
            className="rounded-full border border-crema-line bg-latte px-3 py-1.5 font-sans text-[12px] text-coffee"
          >
            {idea}
          </button>
        ))}
      </div>

      {state.status === "error" && (
        <p role="alert" className="font-sans text-[13px] text-bad">
          {state.message}
        </p>
      )}
      <div className="mt-2">
        <SubmitButton pendingText="Saving…">Continue</SubmitButton>
      </div>
    </form>
  );
}
