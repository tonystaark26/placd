// Shared building blocks so every card picture looks the same:
// café colours, IBM Plex labels, 360-wide canvas that scales to the phone.

import { useId } from "react";

export type Tone = "espresso" | "mocha" | "mocha2" | "coffee" | "good" | "bad" | "cream" | "crema";

const FILL: Record<Tone, string> = {
  espresso: "fill-espresso",
  mocha: "fill-mocha",
  mocha2: "fill-mocha-2",
  coffee: "fill-coffee",
  good: "fill-good",
  bad: "fill-bad",
  cream: "fill-cream",
  crema: "fill-crema",
};
const STROKE: Record<Tone, string> = {
  espresso: "stroke-espresso",
  mocha: "stroke-mocha",
  mocha2: "stroke-mocha-2",
  coffee: "stroke-coffee",
  good: "stroke-good",
  bad: "stroke-bad",
  cream: "stroke-cream",
  crema: "stroke-crema",
};

/** The whole picture. `label` is read aloud by screen readers. */
export function Figure({ h, label, children }: { h: number; label: string; children: React.ReactNode }) {
  const id = useId();
  return (
    <svg viewBox={`0 0 360 ${h}`} role="img" aria-labelledby={id} className="h-auto w-full">
      <title id={id}>{label}</title>
      {children}
    </svg>
  );
}

export function Txt({
  x,
  y,
  children,
  size = 10,
  bold = false,
  tone = "mocha",
  anchor = "start",
  caps = false,
  italic = false,
}: {
  x: number;
  y: number;
  children: React.ReactNode;
  size?: number;
  bold?: boolean;
  tone?: Tone;
  anchor?: "start" | "middle" | "end";
  caps?: boolean;
  italic?: boolean;
}) {
  return (
    <text
      x={x}
      y={y}
      textAnchor={anchor}
      fontSize={size}
      fontWeight={bold ? 600 : 400}
      fontStyle={italic ? "italic" : undefined}
      letterSpacing={caps ? 1.2 : undefined}
      className={`font-sans ${FILL[tone]}`}
    >
      {children}
    </text>
  );
}

/** Centred heading at the top of a picture */
export function Heading({ children, y = 15 }: { children: React.ReactNode; y?: number }) {
  return (
    <Txt x={180} y={y} size={12.5} bold tone="espresso" anchor="middle">
      {children}
    </Txt>
  );
}

type BoxStyle = "plain" | "warm" | "dark" | "good" | "bad" | "faded";
const BOX: Record<BoxStyle, string> = {
  plain: "fill-foam stroke-line",
  warm: "fill-latte stroke-crema-line",
  dark: "fill-coffee",
  good: "fill-good-bg",
  bad: "fill-bad-bg",
  faded: "fill-cream stroke-line",
};

/** Rounded box with an optional bold title and a few lines of text */
export function Box({
  x,
  y,
  w,
  h,
  title,
  lines = [],
  style = "plain",
  titleSize = 11.5,
  dash = false,
}: {
  x: number;
  y: number;
  w: number;
  h: number;
  title?: string;
  lines?: string[];
  style?: BoxStyle;
  titleSize?: number;
  dash?: boolean;
}) {
  const dark = style === "dark";
  const titleTone: Tone = dark ? "cream" : style === "good" ? "good" : style === "bad" ? "bad" : style === "faded" ? "mocha2" : "espresso";
  const lineTone: Tone = dark ? "crema" : style === "faded" ? "mocha2" : "mocha";
  return (
    <g transform={`translate(${x} ${y})`}>
      <rect width={w} height={h} rx="10" className={BOX[style]} strokeDasharray={dash ? "4 3" : undefined} />
      {title && (
        <Txt x={10} y={18} size={titleSize} bold tone={titleTone}>
          {title}
        </Txt>
      )}
      {lines.map((line, i) => (
        <Txt key={i} x={10} y={(title ? 34 : 18) + i * 13.5} tone={lineTone}>
          {line}
        </Txt>
      ))}
    </g>
  );
}

/** Small rounded label, e.g. STRONG / Lost ₹1,200 */
export function Pill({
  x,
  y,
  w,
  children,
  tone = "good",
  h = 18,
  size = 9.5,
}: {
  x: number;
  y: number;
  w: number;
  children: React.ReactNode;
  tone?: "good" | "bad" | "coffee" | "crema";
  h?: number;
  size?: number;
}) {
  const bg = { good: "fill-good-bg", bad: "fill-bad-bg", coffee: "fill-coffee", crema: "fill-crema" }[tone];
  const fg: Tone = tone === "coffee" ? "cream" : tone === "crema" ? "coffee" : tone;
  return (
    <g>
      <rect x={x} y={y} width={w} height={h} rx={h / 2} className={bg} />
      <Txt x={x + w / 2} y={y + h / 2 + size * 0.36} size={size} bold tone={fg} anchor="middle">
        {children}
      </Txt>
    </g>
  );
}

/** Straight arrow from (x1,y1) to (x2,y2) */
export function Arrow({
  x1,
  y1,
  x2,
  y2,
  tone = "mocha2",
  width = 1.5,
  dash = false,
}: {
  x1: number;
  y1: number;
  x2: number;
  y2: number;
  tone?: Tone;
  width?: number;
  dash?: boolean;
}) {
  const a = Math.atan2(y2 - y1, x2 - x1);
  const s = 5;
  const head = `M ${x2 - s * Math.cos(a - 0.5)} ${y2 - s * Math.sin(a - 0.5)} L ${x2} ${y2} L ${x2 - s * Math.cos(a + 0.5)} ${y2 - s * Math.sin(a + 0.5)}`;
  return (
    <g className={STROKE[tone]} fill="none" strokeWidth={width} strokeLinecap="round" strokeLinejoin="round">
      <path d={`M ${x1} ${y1} L ${x2} ${y2}`} strokeDasharray={dash ? "4 3" : undefined} />
      <path d={head} />
    </g>
  );
}

export function Line({
  x1,
  y1,
  x2,
  y2,
  tone = "coffee",
  width = 2.5,
  dash = false,
}: {
  x1: number;
  y1: number;
  x2: number;
  y2: number;
  tone?: Tone | "line";
  width?: number;
  dash?: boolean;
}) {
  return (
    <line
      x1={x1}
      y1={y1}
      x2={x2}
      y2={y2}
      className={tone === "line" ? "stroke-line" : STROKE[tone]}
      strokeWidth={width}
      strokeLinecap="round"
      strokeDasharray={dash ? "3 3" : undefined}
    />
  );
}

export function Curve({ d, tone = "coffee", width = 2.5, dash = false }: { d: string; tone?: Tone; width?: number; dash?: boolean }) {
  return (
    <path
      d={d}
      fill="none"
      className={STROKE[tone]}
      strokeWidth={width}
      strokeLinecap="round"
      strokeDasharray={dash ? "5 4" : undefined}
    />
  );
}

export function Dot({ x, y, tone = "coffee", r = 3.5 }: { x: number; y: number; tone?: Tone; r?: number }) {
  return <circle cx={x} cy={y} r={r} className={FILL[tone]} />;
}

/** Graph axes: origin at (x, y), with axis names at the ends */
export function Axes({ x, y, w, h, xName, yName }: { x: number; y: number; w: number; h: number; xName: string; yName: string }) {
  return (
    <g>
      <line x1={x} y1={y - h} x2={x} y2={y} className="stroke-mocha-2" strokeWidth="1" />
      <line x1={x} y1={y} x2={x + w} y2={y} className="stroke-mocha-2" strokeWidth="1" />
      <Txt x={x + 4} y={y - h + 2} size={9} tone="mocha2">
        {yName}
      </Txt>
      <Txt x={x + w} y={y + 24} size={9} tone="mocha2" anchor="end">
        {xName}
      </Txt>
    </g>
  );
}

/** Dashed guide from a point to both axes, with optional tick labels */
export function Guide({
  ox,
  oy,
  x,
  y,
  xLabel,
  yLabel,
}: {
  ox: number;
  oy: number;
  x: number;
  y: number;
  xLabel?: string;
  yLabel?: string;
}) {
  return (
    <g>
      <Line x1={ox} y1={y} x2={x} y2={y} tone="line" width={1} dash />
      <Line x1={x} y1={y} x2={x} y2={oy} tone="line" width={1} dash />
      {yLabel && (
        <Txt x={ox - 4} y={y + 3.5} size={9.5} anchor="end">
          {yLabel}
        </Txt>
      )}
      {xLabel && (
        <Txt x={x} y={oy + 12} size={9.5} anchor="middle">
          {xLabel}
        </Txt>
      )}
    </g>
  );
}
