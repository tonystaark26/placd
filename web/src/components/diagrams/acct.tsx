// Pictures for the Cost & Financial Accounting cards. Every number comes from that card's everyday example.

import { Axes, Box, Curve, Dot, Figure, Heading, Line, Pill, Txt } from "./parts";

function plot(from: number, to: number, f: (t: number) => [number, number], steps = 48) {
  return Array.from({ length: steps + 1 }, (_, i) => {
    const [x, y] = f(from + ((to - from) * i) / steps);
    return `${i === 0 ? "M" : "L"} ${x.toFixed(1)} ${y.toFixed(1)}`;
  }).join(" ");
}

// acct-01 ──────────────────────────────────────────────────────────────
export function StockLevels() {
  const y = (packets: number) => 270 - packets * 0.8; // 0–300 packets → 270–30
  const levels = [
    { q: 270, name: "Maximum · 270", note: "more = cash wasted", tone: "bad" as const },
    { q: 160, name: "Reorder · 160", note: "order 150 now", tone: "coffee" as const },
    { q: 70, name: "Minimum · 70", note: "warning sign", tone: "mocha" as const },
    { q: 30, name: "Danger · 30", note: "emergency buy", tone: "bad" as const },
  ];
  return (
    <Figure
      h={304}
      label="Milk packets at the canteen. Maximum level 270 packets, reorder level 160 (order 150 now), average stock 145, minimum level 70, danger level 30. The canteen uses 20 to 40 packets a day and delivery takes 2 to 4 days."
    >
      <Heading>Canteen milk packets</Heading>
      {/* the stock "tank" */}
      <rect x={80} y={y(300)} width={70} height={240} rx="8" className="fill-foam stroke-line" />
      <rect x={80} y={y(30)} width={70} height={24} className="fill-bad-bg" />
      <rect x={80} y={y(160)} width={70} height={y(30) - y(160)} className="fill-crema" />
      <Txt x={115} y={y(95)} size={10} bold tone="coffee" anchor="middle">stock now</Txt>
      <Txt x={115} y={y(95) + 13} size={10} tone="coffee" anchor="middle">160</Txt>
      {levels.map((l) => (
        <g key={l.name}>
          <Line x1={74} y1={y(l.q)} x2={168} y2={y(l.q)} tone={l.tone === "mocha" ? "mocha2" : l.tone} width={1.8} dash={l.q !== 160} />
          <Txt x={174} y={y(l.q) - 1} size={10.5} bold tone={l.tone === "mocha" ? "espresso" : l.tone}>{l.name}</Txt>
          <Txt x={174} y={y(l.q) + 12} size={9.5}>{l.note}</Txt>
        </g>
      ))}
      <Line x1={74} y1={y(145)} x2={80} y2={y(145)} tone="mocha2" width={1.5} />
      <Txt x={70} y={y(145) + 3.5} size={9.5} tone="mocha2" anchor="end">avg 145</Txt>
      <Txt x={115} y={288} size={9.5} anchor="middle">packets in store</Txt>
      <Txt x={180} y={300} size={9.5} anchor="middle" tone="mocha2">
        Uses 20–40 a day · delivery takes 2–4 days
      </Txt>
    </Figure>
  );
}

// acct-02 ──────────────────────────────────────────────────────────────
export function EOQ() {
  const x = (q: number) => 50 + q * 0.3; // 0–900 notebooks
  const y = (cost: number) => 205 - cost * 0.07; // ₹0–2,500
  const holding = (q: number) => (q / 2) * 4;
  const ordering = (q: number) => (3600 / q) * 50;
  return (
    <Figure
      h={250}
      label="Notebooks: holding cost rises with order size, ordering cost falls. Total cost is lowest at the economic order quantity of 300 notebooks, where ordering and holding cost are both ₹600, a total of ₹1,200 a year with 12 orders."
    >
      <Heading>Stationery shop: how many notebooks per order?</Heading>
      <Axes x={50} y={205} w={280} h={175} xName="notebooks per order →" yName="₹ a year" />
      <Curve d={plot(90, 900, (q) => [x(q), y(ordering(q))])} tone="mocha2" width={2} />
      <Curve d={plot(0, 900, (q) => [x(q), y(holding(q))])} tone="mocha2" width={2} dash />
      <Curve d={plot(90, 900, (q) => [x(q), y(ordering(q) + holding(q))])} />
      <Line x1={x(300)} y1={y(1200)} x2={x(300)} y2={205} tone="line" width={1} dash />
      <Line x1={50} y1={y(1200)} x2={x(300)} y2={y(1200)} tone="line" width={1} dash />
      <Dot x={x(300)} y={y(1200)} tone="good" r={5} />
      <Txt x={46} y={y(1200) + 3.5} size={9.5} anchor="end">₹1,200</Txt>
      <Txt x={x(300)} y={217} size={9.5} bold tone="good" anchor="middle">EOQ 300</Txt>
      <Txt x={x(760)} y={y(ordering(760) + holding(760)) - 12} size={10} bold tone="coffee" anchor="middle">Total cost</Txt>
      <g transform={`rotate(-25 ${x(700)} ${y(holding(700)) + 14})`}>
        <Txt x={x(700)} y={y(holding(700)) + 14} size={9.5} tone="mocha2" anchor="middle">Holding cost</Txt>
      </g>
      <Txt x={x(900) - 2} y={y(ordering(900)) - 6} size={9.5} tone="mocha2" anchor="end">Ordering cost</Txt>
      <Box x={100} y={32} w={142} h={46} style="good" title="Lowest total: ₹1,200" lines={["12 orders a year"]} titleSize={11} />
    </Figure>
  );
}

// acct-03 ──────────────────────────────────────────────────────────────
export function StockValuation() {
  // 20 pens: first 10 bought at ₹10 (old), next 10 at ₹14 (new). 12 are sold.
  const panel = (px: number, title: string, sub: string, soldOldFirst: boolean) => (
    <g>
      <Txt x={px} y={36} size={11.5} bold tone="espresso">{title}</Txt>
      <Txt x={px} y={50} size={9.5}>{sub}</Txt>
      {[0, 1].map((row) => {
        const isOld = row === 1; // old batch on the bottom row
        return Array.from({ length: 10 }, (_, i) => {
          const soldCount = soldOldFirst ? (isOld ? 10 : 2) : isOld ? 2 : 10;
          const sold = i < soldCount;
          return (
            <rect
              key={`${row}-${i}`}
              x={px + i * 14}
              y={60 + row * 30}
              width={11}
              height={24}
              rx="3"
              className={sold ? (isOld ? "fill-none stroke-coffee" : "fill-none stroke-mocha-2") : isOld ? "fill-coffee" : "fill-crema stroke-crema-line"}
              strokeDasharray={sold ? "3 2" : undefined}
            />
          );
        });
      })}
    </g>
  );
  const bars = [
    { name: "FIFO", profit: 112, tone: "fill-good" },
    { name: "Weighted avg", profit: 96, tone: "fill-coffee" },
    { name: "LIFO", profit: 80, tone: "fill-mocha-2" },
  ];
  return (
    <Figure
      h={262}
      label="Ten pens bought at ₹10, then ten at ₹14; twelve sold at ₹20. FIFO sells the old ₹10 pens first, LIFO the new ₹14 pens first. Profit: FIFO ₹112, weighted average ₹96, LIFO ₹80."
    >
      <Heading>12 of 20 pens sold at ₹20</Heading>
      {panel(10, "FIFO", "oldest out first", true)}
      {panel(213, "LIFO", "newest out first", false)}
      <Txt x={170} y={78} size={9} tone="mocha2" anchor="middle">new ₹14</Txt>
      <Txt x={170} y={108} size={9} tone="coffee" anchor="middle">old ₹10</Txt>
      <Txt x={180} y={134} size={9.5} anchor="middle">dashed = sold · filled = still in stock</Txt>

      <Txt x={10} y={160} size={9.5} bold caps tone="mocha2">PROFIT ON THE SAME SALE</Txt>
      {bars.map((b, i) => (
        <g key={b.name}>
          <Txt x={10} y={184 + i * 26} size={10.5} bold tone="espresso">{b.name}</Txt>
          <rect x={100} y={171 + i * 26} width={b.profit * 2} height={18} rx="4" className={b.tone} />
          <Txt x={106 + b.profit * 2} y={184 + i * 26} size={10.5} bold tone="espresso">{`₹${b.profit}`}</Txt>
        </g>
      ))}
      <Txt x={180} y={254} size={9.5} anchor="middle">Rising prices → FIFO shows most profit · Ind AS 2 bans LIFO</Txt>
    </Figure>
  );
}

// acct-04 ──────────────────────────────────────────────────────────────
export function ABCAnalysis() {
  const W = 290;
  const x0 = 60;
  const rows = [
    { label: "Items", parts: [10, 30, 60] },
    { label: "Value", parts: [75, 18, 7] },
  ];
  const fills = ["fill-coffee", "fill-crema-line", "fill-latte stroke-crema-line"];
  const text: ("cream" | "espresso")[] = ["cream", "espresso", "espresso"];
  return (
    <Figure
      h={236}
      label="The canteen's 50 monthly items worth ₹1,00,000. A items: 10% of items but 75% of value. B items: 30% of items, 18% of value. C items: 60% of items, 7% of value. Low value isn't low risk: a cheap but vital item needs a VED check."
    >
      <Heading>The canteen&apos;s ₹1,00,000 of monthly purchases</Heading>
      {rows.map((r, ri) => {
        let left = x0;
        return (
          <g key={r.label}>
            <Txt x={6} y={52 + ri * 46} size={11} bold tone="espresso">{r.label}</Txt>
            {r.parts.map((p, i) => {
              const w = (p / 100) * W;
              const el = (
                <g key={i}>
                  <rect x={left} y={36 + ri * 46} width={w} height={26} className={fills[i]} />
                  {w > 40 ? (
                    <Txt x={left + w / 2} y={53 + ri * 46} size={10} bold tone={text[i]} anchor="middle">{`${"ABC"[i]} ${p}%`}</Txt>
                  ) : (
                    <Txt x={i === 2 ? left + w : left} y={73 + ri * 46} size={9} bold tone="mocha" anchor={i === 2 ? "end" : "start"}>{`${"ABC"[i]} ${p}%`}</Txt>
                  )}
                </g>
              );
              left += w;
              return el;
            })}
          </g>
        );
      })}

      <Box x={4} y={124} w={114} h={56} style="dark" title="A · 5 items" lines={["gas, paneer, oil…", "check daily"]} titleSize={11} />
      <Box x={123} y={124} w={114} h={56} title="B · 15 items" lines={["veg, bread…", "weekly review"]} titleSize={11} />
      <Box x={242} y={124} w={114} h={56} title="C · 30 items" lines={["napkins, spices…", "bulk, monthly"]} titleSize={11} />
      <Pill x={4} y={194} w={352} h={30} size={10} tone="bad">Cheap but vital (a ₹50 sensor)? Add a VED check</Pill>
    </Figure>
  );
}

// acct-05 ──────────────────────────────────────────────────────────────
export function InventoryTurnover() {
  const x0 = 10;
  const W = 340;
  const shop = (y: number, name: string, turns: number, days: number, tone: string) => (
    <g>
      <Txt x={x0} y={y} size={11} bold tone="espresso">{name}</Txt>
      <Txt x={x0 + W} y={y} size={10.5} bold tone={tone === "fill-good" ? "good" : "bad"} anchor="end">{`${turns} times · ${days} days`}</Txt>
      {Array.from({ length: turns }, (_, i) => (
        <rect key={i} x={x0 + (i * W) / turns + 1} y={y + 8} width={W / turns - 2} height={22} rx="4" className={tone} />
      ))}
    </g>
  );
  return (
    <Figure
      h={214}
      label="Inventory turnover: a kirana store turns its stock 12 times a year, about every 30 days. A stationery shop turns it 4 times, about every 91 days, so three times as much cash sits on its shelves. Turnover = cost of goods sold ₹6,00,000 ÷ average inventory ₹50,000 = 12."
    >
      <Heading>One year = 365 days of shelves</Heading>
      {shop(44, "Kirana store", 12, 30, "fill-good")}
      {shop(104, "Stationery shop", 4, 91, "fill-crema-line")}
      <Txt x={180} y={154} size={9.5} anchor="middle">Each block = one full shelf, sold and refilled</Txt>
      <rect x={10} y={166} width={340} height={40} rx="10" className="fill-coffee" />
      <Txt x={180} y={191} size={11.5} bold tone="cream" anchor="middle">₹6,00,000 cost of sales ÷ ₹50,000 avg stock = 12</Txt>
    </Figure>
  );
}

// acct-06 ──────────────────────────────────────────────────────────────
export function IncentivePlans() {
  const scale = 0.36; // ₹ → px
  const rows = [
    { name: "Time wages", base: 480, bonus: 0, note: "₹480" },
    { name: "Halsey", base: 480, bonus: 80, note: "₹560" },
    { name: "Rowan", base: 480, bonus: 120, note: "₹600" },
  ];
  return (
    <Figure
      h={236}
      label="A print-shop job: standard time 8 hours, actual 6 hours, ₹80 an hour. Time wages ₹480. Halsey adds 50% of the 2 hours saved, ₹80, for ₹560. Rowan adds 2/8 of the time wages, ₹120, for ₹600. Saving less than half the standard time means Rowan pays more."
    >
      <Heading>Print job: 8 hours allowed, done in 6</Heading>
      {/* hours strip */}
      {Array.from({ length: 8 }, (_, i) => (
        <rect key={i} x={70 + i * 34} y={30} width={31} height={20} rx="4" className={i < 6 ? "fill-coffee" : "fill-good-bg stroke-good"} strokeDasharray={i < 6 ? undefined : "3 2"} />
      ))}
      <Txt x={6} y={44} size={10} bold tone="espresso">Hours</Txt>
      <Txt x={70 + 3 * 34} y={66} size={9.5} anchor="middle">6 hours worked × ₹80</Txt>
      <Txt x={70 + 7 * 34} y={66} size={9.5} bold tone="good" anchor="middle">2 saved</Txt>

      {rows.map((r, i) => {
        const y = 86 + i * 36;
        return (
          <g key={r.name}>
            <Txt x={6} y={y + 16} size={11} bold tone="espresso">{r.name}</Txt>
            <rect x={90} y={y} width={r.base * scale} height={24} rx="4" className="fill-coffee" />
            {r.bonus > 0 && <rect x={90 + r.base * scale + 2} y={y} width={r.bonus * scale} height={24} rx="4" className="fill-good" />}
            <Txt x={96 + (r.base + r.bonus) * scale + (r.bonus ? 2 : 0)} y={y + 16} size={11} bold tone="espresso">{r.note}</Txt>
            {r.bonus > 0 && (
              <Txt x={90 + r.base * scale + 2 + (r.bonus * scale) / 2} y={y + 16} size={9} bold tone="cream" anchor="middle">{`+${r.bonus}`}</Txt>
            )}
          </g>
        );
      })}
      <Txt x={6} y={210} size={9.5}>Halsey bonus = 50% × 2 h × ₹80 · Rowan bonus = 2/8 × 6 h × ₹80</Txt>
      <Txt x={6} y={226} size={9.5} bold tone="coffee">Saved less than half the time → Rowan pays more</Txt>
    </Figure>
  );
}

// acct-07 ──────────────────────────────────────────────────────────────
export function LabourTurnover() {
  const groups = [
    { n: 14, label: "stayed", cls: "fill-coffee" },
    { n: 4, label: "left", cls: "fill-bad" },
    { n: 3, label: "replaced", cls: "fill-good" },
    { n: 5, label: "new posts", cls: "fill-crema-line" },
  ];
  let col = 0;
  const person = (key: string, x: number, y: number, cls: string, faded: boolean) => (
    <g key={key} opacity={faded ? 0.45 : 1}>
      <circle cx={x} cy={y} r={3.6} className={cls} />
      <path d={`M ${x - 5} ${y + 15} q 0 -9 5 -9 q 5 0 5 9 z`} className={cls} />
    </g>
  );
  return (
    <Figure
      h={228}
      label="Canteen staff: 18 at the start of the year, 22 at the end, so 20 on average. 14 stayed, 4 left, 3 were hired to replace them and 5 were new posts. Separation rate 20%, replacement rate 15%, flux rate 35%."
    >
      <Heading>Canteen staff: 18 at the start, 22 at the end</Heading>
      {groups.map((g) => {
        const startCol = col;
        col += g.n + 1;
        return (
          <g key={g.label}>
            {Array.from({ length: g.n }, (_, i) => person(`${g.label}-${i}`, 14 + (startCol + i) * 11.8, 40, g.cls, g.label === "left"))}
            <Txt x={8 + (startCol + g.n / 2) * 11.8} y={78} size={9.5} bold tone={g.label === "left" ? "bad" : g.label === "replaced" ? "good" : "mocha"} anchor="middle">
              {`${g.n} ${g.label}`}
            </Txt>
          </g>
        );
      })}
      <Txt x={180} y={102} size={10} anchor="middle">Average staff = (18 + 22) ÷ 2 = 20</Txt>
      <Box x={4} y={116} w={114} h={52} style="bad" title="Separation" lines={["4 ÷ 20 = 20%"]} />
      <Box x={123} y={116} w={114} h={52} style="good" title="Replacement" lines={["3 ÷ 20 = 15%"]} />
      <Box x={242} y={116} w={114} h={52} style="dark" title="Flux" lines={["(4 + 3) ÷ 20 = 35%"]} />
      <Txt x={180} y={192} size={10} anchor="middle">Hires for new posts aren&apos;t replacements</Txt>
      <Txt x={180} y={210} size={10} bold tone="coffee" anchor="middle">3 replacements × ₹15,000 training = ₹45,000</Txt>
    </Figure>
  );
}
