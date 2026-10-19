// The ChaiCase mark: a cup of chai with short steam, rising bars and an upward trend arrow
// on the cup (growth is the hook), sitting on two books (study). Chosen by the user on 19 Oct 2026.
// The same drawing is in src/app/icon.svg (the browser-tab icon); keep the two in step.

const COFFEE = "#6f4e37";
const ESPRESSO = "#2b1e16";
const CARAMEL = "#b08a68";
const CREMA = "#eadbc8";
const CREAM = "#fbf7f1";

export function LogoMark({ className = "h-10 w-10" }: { className?: string }) {
  return (
    <svg viewBox="305 96 104 104" className={className} aria-hidden="true">
      {/* steam */}
      <path d="M349 121 q-4 -5 0 -10 q4 -5 0 -9" fill="none" stroke={CARAMEL} strokeWidth="3" strokeLinecap="round" />
      <path d="M357 119 q-4.5 -5.5 0 -11 q4.5 -5.5 0 -10" fill="none" stroke={COFFEE} strokeWidth="3.5" strokeLinecap="round" />
      <path d="M365 121 q-4 -5 0 -10 q4 -5 0 -9" fill="none" stroke={CARAMEL} strokeWidth="3" strokeLinecap="round" />
      {/* cup and handle */}
      <path d="M381 137 a8.5 8.5 0 0 1 0 17" fill="none" stroke={COFFEE} strokeWidth="5" strokeLinecap="round" />
      <path d="M332 128 H382 L377 158 Q375 167 366 167 H348 Q339 167 337 158 Z" fill={COFFEE} />
      {/* rising bars and the trend arrow */}
      <rect x="345" y="151" width="5" height="8" rx="1" fill={CREMA} />
      <rect x="353" y="147" width="5" height="12" rx="1" fill={CREMA} />
      <rect x="361" y="143" width="5" height="16" rx="1" fill={CREMA} />
      <path d="M343 146 L351 140 L357 143 L368 133" fill="none" stroke={CREAM} strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round" />
      <path d="M363 133 L368.5 132.5 L368 138" fill="none" stroke={CREAM} strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round" />
      {/* two books */}
      <rect x="318" y="170" width="78" height="11" rx="2" fill={ESPRESSO} />
      <rect x="324" y="172.5" width="66" height="2" fill={CREMA} />
      <rect x="312" y="182" width="86" height="12" rx="2" fill={CARAMEL} />
      <rect x="318" y="185" width="74" height="2" fill={CREAM} />
    </svg>
  );
}
