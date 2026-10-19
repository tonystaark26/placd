"use client";

import { useEffect, useState, useSyncExternalStore } from "react";
import { LogoMark } from "@/components/Logo";

// "Add ChaiCase to your home screen", on the Study Desk. Android Chrome offers a one-tap install;
// iPhones can't, so they get the two-step instruction. Hidden once installed or dismissed.

type InstallEvent = Event & { prompt: () => Promise<void>; userChoice: Promise<{ outcome: string }> };

const DISMISS_KEY = "chaicase-install-hint-dismissed";
const noop = () => () => {};

function readDevice() {
  const standalone =
    window.matchMedia("(display-mode: standalone)").matches ||
    (navigator as Navigator & { standalone?: boolean }).standalone === true;
  let dismissed = false;
  try {
    dismissed = localStorage.getItem(DISMISS_KEY) === "1";
  } catch {}
  const ios = /iphone|ipad|ipod/i.test(navigator.userAgent);
  return standalone || dismissed ? "hide" : ios ? "ios" : "other";
}

export function InstallHint() {
  // What the device is: read in the browser only, so the server render shows nothing
  const device = useSyncExternalStore(noop, readDevice, () => "hide");
  const [installEvent, setInstallEvent] = useState<InstallEvent | null>(null);
  const [closed, setClosed] = useState(false);

  useEffect(() => {
    const onPrompt = (e: Event) => {
      e.preventDefault(); // show our own button instead of the browser's mini-bar
      setInstallEvent(e as InstallEvent);
    };
    const onInstalled = () => setClosed(true);
    window.addEventListener("beforeinstallprompt", onPrompt);
    window.addEventListener("appinstalled", onInstalled);
    return () => {
      window.removeEventListener("beforeinstallprompt", onPrompt);
      window.removeEventListener("appinstalled", onInstalled);
    };
  }, []);

  if (closed || device === "hide") return null;
  if (device !== "ios" && !installEvent) return null; // nothing useful to offer on this browser

  const dismiss = () => {
    try {
      localStorage.setItem(DISMISS_KEY, "1");
    } catch {}
    setClosed(true);
  };

  return (
    <section className="cc-fade-up mt-6 flex gap-3 rounded-[12px] border border-crema-line bg-foam px-4 py-3.5">
      <LogoMark className="h-11 w-11 shrink-0" />
      <div className="min-w-0 flex-1">
        <p className="text-[15px] font-bold leading-snug">Put ChaiCase on your home screen</p>
        {device === "ios" ? (
          <p className="mt-1 font-sans text-[12px] leading-relaxed text-mocha">
            In Safari, tap the Share button <span aria-hidden="true">⬆︎</span>, then &quot;Add to Home Screen&quot;. It opens
            like an app, one tap from your daily habit.
          </p>
        ) : (
          <p className="mt-1 font-sans text-[12px] leading-relaxed text-mocha">
            It opens like an app, one tap away from your daily 10 minutes.
          </p>
        )}
        <div className="mt-2.5 flex items-center gap-3 font-sans text-[13px]">
          {installEvent && (
            <button
              type="button"
              onClick={async () => {
                await installEvent.prompt();
                const { outcome } = await installEvent.userChoice;
                if (outcome === "accepted") setClosed(true);
                setInstallEvent(null);
              }}
              className="h-9 rounded-full bg-coffee px-4 font-semibold text-cream"
            >
              Install
            </button>
          )}
          <button type="button" onClick={dismiss} className="text-mocha-2 underline underline-offset-2">
            Not now
          </button>
        </div>
      </div>
    </section>
  );
}
