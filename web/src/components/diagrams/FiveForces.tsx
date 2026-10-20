// Card mkt-06: Five Forces, using the photocopy shop from "The everyday example".
// A strong force is bad for the shop's profits, so "strong" is shown in red, "weak" in green.

type Box = { x: number; y: number; w: number; name: string; strong: boolean; lines: string[] };

const H = 80;

const BOXES: Box[] = [
  { x: 105, y: 30, w: 150, name: "New entrants", strong: true, lines: ["Anyone with a printer", "can open a shop"] },
  { x: 2, y: 136, w: 102, name: "Suppliers", strong: false, lines: ["Paper & toner", "sold everywhere"] },
  { x: 256, y: 136, w: 102, name: "Buyers", strong: true, lines: ["Students switch", "to save ₹1"] },
  { x: 105, y: 242, w: 150, name: "Substitutes", strong: true, lines: ["PDFs on phones:", "no printing needed"] },
];

function ForceBox({ x, y, w, name, strong, lines, centre = false }: Box & { centre?: boolean }) {
  return (
    <g transform={`translate(${x} ${y})`}>
      <rect width={w} height={H} rx="10" className={centre ? "fill-coffee" : "fill-foam stroke-line"} />
      <text x="10" y="19" className={`font-sans ${centre ? "fill-cream" : "fill-espresso"}`} fontSize="11.5" fontWeight="600">
        {name}
      </text>
      <rect x="10" y="27" width="48" height="16" rx="8" className={strong ? "fill-bad-bg" : "fill-good-bg"} />
      <text x="34" y="38.5" textAnchor="middle" className={`font-sans ${strong ? "fill-bad" : "fill-good"}`} fontSize="9" fontWeight="600" letterSpacing="0.8">
        {strong ? "STRONG" : "WEAK"}
      </text>
      {lines.map((line, i) => (
        <text key={line} x="10" y={58 + i * 14} className={`font-sans ${centre ? "fill-crema" : "fill-mocha"}`} fontSize="10">
          {line}
        </text>
      ))}
    </g>
  );
}

function Arrow({ d, head }: { d: string; head: string }) {
  return (
    <g className="stroke-mocha-2" fill="none" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round">
      <path d={d} />
      <path d={head} />
    </g>
  );
}

export function FiveForces() {
  return (
    <svg viewBox="0 0 360 366" role="img" aria-labelledby="ff-title" className="h-auto w-full">
      <title id="ff-title">
        Five forces for the photocopy shop at the college gate. Rivalry is strong: three shops side by side.
        New entrants are a strong threat: anyone with a printer can open one. Suppliers are weak: paper and toner
        are sold everywhere. Buyers are strong: students switch to save ₹1. Substitutes are strong: PDFs on phones.
        Four strong forces make it a hard place to earn profits.
      </title>
      <text x="180" y="16" textAnchor="middle" className="fill-espresso font-sans" fontSize="12.5" fontWeight="600">
        The photocopy shop at the college gate
      </text>

      {/* arrows pointing in to rivalry */}
      <Arrow d="M180 112 V134" head="M175 128 L180 134 L185 128" />
      <Arrow d="M180 240 V218" head="M175 224 L180 218 L185 224" />
      <Arrow d="M106 176 H126" head="M120 171 L126 176 L120 181" />
      <Arrow d="M254 176 H234" head="M240 171 L234 176 L240 181" />

      <ForceBox x={128} y={136} w={104} name="Rivalry" strong lines={["3 shops side by", "side, ₹1–2 a page"]} centre />
      {BOXES.map((b) => (
        <ForceBox key={b.name} {...b} />
      ))}

      <rect x="2" y="332" width="356" height="30" rx="15" className="fill-bad-bg" />
      <text x="180" y="351" textAnchor="middle" className="fill-bad font-sans" fontSize="11" fontWeight="600">
        4 of 5 forces strong → hard to earn profits here
      </text>
    </svg>
  );
}
