// Pictures for the Financial Accounting cards (acct-08 to acct-13).
// Every number comes from that card's "₹100 example".

import { Arrow, Box, Figure, Heading, Line, Pill, Txt } from "./parts";

// acct-08 ──────────────────────────────────────────────────────────────
export function AccountingUsers() {
  const steps = ["Identify", "Measure", "Record", "Classify", "Summarise", "Analyse", "Communicate"];
  return (
    <Figure
      h={312}
      label="Accounting turns the college fest's transactions into a statement through seven steps: identify, measure, record, classify, summarise, analyse and communicate. Book-keeping is the recording step. The statement shows ₹4,00,000 raised, ₹3,60,000 spent and a ₹40,000 surplus, and is read by the principal (an internal user) and by sponsors, the sound vendor and the auditor (external users)."
    >
      <Heading>The college fest&apos;s accounts</Heading>
      {steps.map((s, i) => {
        const row = i < 4 ? 0 : 1;
        const col = row === 0 ? i : i - 4;
        const w = row === 0 ? 84 : 112;
        const x = 4 + col * (w + 4);
        const y = 28 + row * 32;
        const keeping = s === "Record";
        return (
          <g key={s}>
            <rect x={x} y={y} width={w} height={26} rx="13" className={keeping ? "fill-coffee" : "fill-foam stroke-line"} />
            <Txt x={x + w / 2} y={y + 17} size={10} bold tone={keeping ? "cream" : "espresso"} anchor="middle">{`${i + 1} ${s}`}</Txt>
          </g>
        );
      })}
      <Txt x={180} y={104} size={9.5} anchor="middle">Step 3 alone is book-keeping · all 7 together are accounting</Txt>

      <Arrow x1={180} y1={110} x2={180} y2={124} />
      <rect x={70} y={126} width={220} height={58} rx="10" className="fill-coffee" />
      <Txt x={180} y={146} size={11.5} bold tone="cream" anchor="middle">Fest statement</Txt>
      <Txt x={180} y={161} size={10} tone="crema" anchor="middle">Raised ₹4,00,000 · Spent ₹3,60,000</Txt>
      <Txt x={180} y={176} size={10} bold tone="cream" anchor="middle">Surplus ₹40,000</Txt>

      <Txt x={4} y={204} size={9} bold caps tone="coffee">INTERNAL</Txt>
      <Txt x={92} y={204} size={9} bold caps tone="mocha2">EXTERNAL</Txt>
      <Box x={4} y={210} w={84} h={58} style="warm" title="Principal" lines={["Was it well", "run?"]} titleSize={10.5} />
      <Box x={92} y={210} w={86} h={58} title="Sponsors" lines={["Was our money", "well used?"]} titleSize={10.5} />
      <Box x={182} y={210} w={86} h={58} title="Sound vendor" lines={["Will I be", "paid?"]} titleSize={10.5} />
      <Box x={272} y={210} w={84} h={58} title="Auditor" lines={["Is it all", "true?"]} titleSize={10.5} />
      <Txt x={180} y={290} size={10} bold tone="coffee" anchor="middle">Same numbers, different questions</Txt>
      <Txt x={180} y={305} size={9.5} anchor="middle">Lenders, tax authorities and regulators read company accounts the same way</Txt>
    </Figure>
  );
}

// acct-09 ──────────────────────────────────────────────────────────────
export function AccountingEquation() {
  const s = 90 / 55000; // ₹ → px (₹55,000 = 90 px)
  const rows = [
    { t: ["Starts with ₹50,000", "of her own cash"], a: 50000, l: 0, c: 50000 },
    { t: ["Buys a stove for", "₹8,000 cash"], a: 50000, l: 0, c: 50000 },
    { t: ["Tea leaves ₹5,000", "on credit"], a: 55000, l: 5000, c: 50000 },
    { t: ["Pays ₹2,000 rent", "(an expense)"], a: 53000, l: 5000, c: 48000 },
    { t: ["Sells tea costing", "₹3,000 for ₹5,000"], a: 55000, l: 5000, c: 50000 },
  ];
  const k = (n: number) => `${n / 1000}k`;
  return (
    <Figure
      h={270}
      label="Riya's chai stall. After every transaction, assets equal liabilities plus capital: ₹50,000 = 0 + ₹50,000; after the stove purchase still ₹50,000; after buying tea on credit ₹55,000 = ₹5,000 + ₹50,000; after paying rent ₹53,000 = ₹5,000 + ₹48,000; after a profitable sale ₹55,000 = ₹5,000 + ₹50,000."
    >
      <Heading>Riya&apos;s chai stall: both sides always match</Heading>
      <rect x={150} y={28} width={10} height={10} rx="2" className="fill-coffee" />
      <Txt x={164} y={37} size={9.5}>Assets</Txt>
      <rect x={210} y={28} width={10} height={10} rx="2" className="fill-bad" />
      <Txt x={224} y={37} size={9.5}>Liabilities</Txt>
      <rect x={284} y={28} width={10} height={10} rx="2" className="fill-crema-line" />
      <Txt x={298} y={37} size={9.5}>Capital</Txt>
      {rows.map((r, i) => {
        const y = 50 + i * 42;
        return (
          <g key={i}>
            <rect x={2} y={y - 4} width={356} height={38} rx="8" className={i % 2 ? "fill-cream" : "fill-foam"} />
            <Txt x={10} y={y + 10} size={9.5} bold tone="espresso">{`${i + 1}. ${r.t[0]}`}</Txt>
            <Txt x={22} y={y + 23} size={9.5}>{r.t[1]}</Txt>
            <rect x={150} y={y + 4} width={r.a * s} height={18} rx="3" className="fill-coffee" />
            <Txt x={154} y={y + 17} size={9} bold tone="cream">{k(r.a)}</Txt>
            <Txt x={248} y={y + 18} size={12} bold tone="mocha2" anchor="middle">=</Txt>
            {r.l > 0 && <rect x={258} y={y + 4} width={r.l * s} height={18} rx="3" className="fill-bad" />}
            <rect x={258 + r.l * s} y={y + 4} width={r.c * s} height={18} rx="3" className="fill-crema-line" />
            <Txt x={262 + r.l * s} y={y + 17} size={9} bold tone="espresso">{r.l > 0 ? `${k(r.l)} + ${k(r.c)}` : k(r.c)}</Txt>
          </g>
        );
      })}
    </Figure>
  );
}

// acct-10 ──────────────────────────────────────────────────────────────
export function FinancialStatements() {
  const pl: [string, string, boolean?][] = [
    ["Revenue", "6,00,000"],
    ["− Tea, milk, sugar", "3,60,000"],
    ["− Rent and wages", "1,20,000"],
    ["− Depreciation (stove)", "1,600"],
  ];
  const row = (x: number, y: number, w: number, label: string, amount: string, bold = false) => (
    <g>
      <Txt x={x} y={y} size={10} bold={bold} tone={bold ? "espresso" : "mocha"}>{label}</Txt>
      <Txt x={x + w} y={y} size={10} bold={bold} tone="espresso" anchor="end">{amount}</Txt>
    </g>
  );
  return (
    <Figure
      h={330}
      label="Riya's chai stall after one year. Profit and loss, the video of the year: revenue ₹6,00,000 minus tea, milk and sugar ₹3,60,000, rent and wages ₹1,20,000 and depreciation ₹1,600 gives a profit of ₹1,18,400, which flows into capital. Balance sheet, the photo on 31 March: stove ₹6,400, stock ₹7,000 and cash ₹1,60,000 make assets of ₹1,73,400, equal to creditors ₹5,000 plus capital ₹1,68,400."
    >
      <Heading>Riya&apos;s chai stall after one year (₹)</Heading>
      {/* P&L: the video */}
      <rect x={4} y={26} width={352} height={122} rx="10" className="fill-foam stroke-line" />
      <Txt x={14} y={44} size={11.5} bold tone="espresso">Profit &amp; loss</Txt>
      <Pill x={250} y={32} w={96} h={17} size={9} tone="crema">🎬 the year</Pill>
      {pl.map(([l, a], i) => (
        <g key={l}>{row(14, 64 + i * 15, 332, l, a)}</g>
      ))}
      <Line x1={14} y1={122} x2={346} y2={122} tone="mocha2" width={1} />
      {row(14, 138, 332, "Profit", "1,18,400", true)}

      <Arrow x1={300} y1={150} x2={300} y2={176} tone="good" width={2} />
      <Txt x={292} y={168} size={9.5} bold tone="good" anchor="end">profit flows into capital</Txt>

      {/* Balance sheet: the photo */}
      <rect x={4} y={178} width={352} height={146} rx="10" className="fill-latte stroke-crema-line" />
      <Txt x={14} y={196} size={11.5} bold tone="espresso">Balance sheet</Txt>
      <Pill x={250} y={184} w={96} h={17} size={9} tone="crema">📷 31 March</Pill>
      <Txt x={14} y={216} size={9} bold caps tone="mocha2">ASSETS</Txt>
      {row(14, 232, 150, "Stove", "6,400")}
      {row(14, 247, 150, "Stock", "7,000")}
      {row(14, 262, 150, "Cash", "1,60,000")}
      <Line x1={14} y1={274} x2={164} y2={274} tone="mocha2" width={1} />
      {row(14, 290, 150, "Total", "1,73,400", true)}
      <Line x1={180} y1={208} x2={180} y2={300} tone="line" width={1} />
      <Txt x={194} y={216} size={9} bold caps tone="mocha2">LIABILITIES + CAPITAL</Txt>
      {row(194, 232, 152, "Creditors", "5,000")}
      <g>
        <rect x={190} y={238} width={160} height={16} rx="4" className="fill-good-bg" />
        {row(194, 250, 152, "Capital", "1,68,400")}
      </g>
      <Line x1={194} y1={274} x2={346} y2={274} tone="mocha2" width={1} />
      {row(194, 290, 152, "Total", "1,73,400", true)}
      <Txt x={180} y={316} size={9.5} anchor="middle">Capital = her ₹50,000 + this year&apos;s profit ₹1,18,400</Txt>
    </Figure>
  );
}

// acct-11 ──────────────────────────────────────────────────────────────
export function ConceptsOne() {
  const tiles = [
    { name: "Business entity", ex: ["Her ₹500 phone bill", "= drawings, not expense"], style: "dark" as const },
    { name: "Money measurement", ex: ["Loyal customers?", "Not recorded"], style: "plain" as const },
    { name: "Going concern", ex: ["₹8,000 stove over", "5 years = ₹1,600/yr"], style: "plain" as const },
    { name: "Dual aspect", ex: ["Buys stove:", "stove ↑, cash ↓"], style: "plain" as const },
  ];
  return (
    <Figure
      h={300}
      label="Accounting concepts at Riya's chai stall. Business entity: Riya and her stall are separate, so her ₹500 personal phone bill is drawings. Money measurement: loyal customers aren't recorded. Going concern: the ₹8,000 stove is spread over 5 years. Dual aspect: buying the stove raises one asset and lowers cash. Periodicity: profit is checked every 31 March."
    >
      <Heading>Riya&apos;s chai stall: five assumptions</Heading>
      {/* entity: owner and business kept apart */}
      <rect x={18} y={28} width={130} height={46} rx="10" className="fill-latte stroke-crema-line" />
      <Txt x={83} y={48} size={11} bold tone="espresso" anchor="middle">Riya</Txt>
      <Txt x={83} y={63} size={9.5} anchor="middle">the owner</Txt>
      <Line x1={180} y1={24} x2={180} y2={78} tone="bad" width={2} dash />
      <rect x={212} y={28} width={130} height={46} rx="10" className="fill-coffee" />
      <Txt x={277} y={48} size={11} bold tone="cream" anchor="middle">Chai stall</Txt>
      <Txt x={277} y={63} size={9.5} tone="crema" anchor="middle">the business</Txt>
      <Txt x={180} y={92} size={9.5} bold tone="bad" anchor="middle">separate in the books</Txt>

      {tiles.map((t, i) => (
        <Box key={t.name} x={4 + (i % 2) * 180} y={104 + Math.floor(i / 2) * 64} w={172} h={58} style={t.style} title={t.name} lines={t.ex} titleSize={11} />
      ))}
      <Box x={4} y={236} w={352} h={44} style="warm" title="Periodicity" lines={["She checks her profit every year on 31 March"]} titleSize={11} />
      <Txt x={180} y={295} size={9.5} anchor="middle">Concepts are the basic assumptions behind every set of books</Txt>
    </Figure>
  );
}

// acct-12 ──────────────────────────────────────────────────────────────
export function AccrualTimeline() {
  const months = [
    { name: "February", x: 4 },
    { name: "March", x: 124 },
    { name: "April", x: 244 },
  ];
  return (
    <Figure
      h={300}
      label="The college fest in March. A sponsor's ₹50,000 arrives in February but is March revenue, earned at the fest; until then it is income received in advance. The fest's ₹12,000 electricity bill is paid in April but is a March expense. The laptop stays at its cost of ₹60,000 even though it would sell for ₹70,000 now."
    >
      <Heading>The fest is in March: when does each ₹ count?</Heading>
      {months.map((m) => (
        <g key={m.name}>
          <rect x={m.x} y={28} width={112} height={30} rx="8" className={m.name === "March" ? "fill-coffee" : "fill-foam stroke-line"} />
          <Txt x={m.x + 56} y={48} size={11.5} bold tone={m.name === "March" ? "cream" : "espresso"} anchor="middle">{m.name}</Txt>
        </g>
      ))}
      <Line x1={60} y1={58} x2={60} y2={232} tone="line" width={1} dash />
      <Line x1={180} y1={58} x2={180} y2={232} tone="coffee" width={1.5} />
      <Line x1={300} y1={58} x2={300} y2={232} tone="line" width={1} dash />

      {/* sponsor money: cash in Feb → revenue in March */}
      <Pill x={6} y={74} w={108} h={20} size={9.5} tone="crema">💰 ₹50,000 cash in</Pill>
      <Arrow x1={114} y1={84} x2={170} y2={110} tone="good" width={2} />
      <Box x={128} y={104} w={104} h={50} style="good" title="Revenue" lines={["₹50,000, earned"]} titleSize={11} />
      <Txt x={60} y={112} size={9} anchor="middle">until then:</Txt>
      <Txt x={60} y={124} size={9} bold tone="bad" anchor="middle">income received</Txt>
      <Txt x={60} y={136} size={9} bold tone="bad" anchor="middle">in advance</Txt>

      {/* electricity: paid in April → expense in March */}
      <Pill x={246} y={170} w={108} h={20} size={9.5} tone="crema">💸 ₹12,000 bill paid</Pill>
      <Arrow x1={246} y1={180} x2={236} y2={190} tone="bad" width={2} />
      <Box x={128} y={168} w={104} h={50} style="bad" title="Expense" lines={["₹12,000, incurred"]} titleSize={11} />

      <Txt x={180} y={250} size={10} bold tone="coffee" anchor="middle">Count it when it&apos;s earned or incurred, not when cash moves</Txt>
      <rect x={4} y={262} width={352} height={30} rx="15" className="fill-latte stroke-crema-line" />
      <Txt x={180} y={281} size={10} tone="espresso" anchor="middle">Laptop bought for ₹60,000 (now ₹70,000) stays at ₹60,000: cost concept</Txt>
    </Figure>
  );
}

// acct-13 ──────────────────────────────────────────────────────────────
export function Conventions() {
  const s = 0.003; // ₹ → px
  const bar = (x: number, y: number, amount: number, cls: string, label: string, shown: boolean) => (
    <g>
      <Txt x={x} y={y + 13} size={9.5}>{label}</Txt>
      <rect x={x + 48} y={y} width={amount * s} height={18} rx="4" className={cls} />
      <Txt x={x + 53 + amount * s} y={y + 13} size={9.5} bold={shown} tone={shown ? "good" : "mocha"}>
        {`${shown ? "✓ " : ""}₹${amount.toLocaleString("en-IN")}`}
      </Txt>
    </g>
  );
  return (
    <Figure
      h={270}
      label="Conservatism: calculators cost ₹20,000. If they can now sell for only ₹15,000, show ₹15,000. If they could sell for ₹25,000, still show ₹20,000: losses are provided for, gains wait. Consistency: FIFO every year. Materiality: a ₹50 stapler is simply an expense. Full disclosure: a ₹1,00,000 lawsuit goes in the notes."
    >
      <Heading>The stationery shop&apos;s year-end</Heading>
      <Txt x={4} y={38} size={11} bold tone="espresso">Conservatism: lower of cost or market</Txt>
      <Txt x={4} y={58} size={9.5} bold caps tone="mocha2">IF PRICES FALL</Txt>
      {bar(4, 64, 20000, "fill-crema-line", "Cost", false)}
      {bar(4, 86, 15000, "fill-good", "Market", true)}
      <Txt x={190} y={58} size={9.5} bold caps tone="mocha2">IF PRICES RISE</Txt>
      {bar(190, 64, 20000, "fill-good", "Cost", true)}
      {bar(190, 86, 25000, "fill-crema-line", "Market", false)}
      <Pill x={4} y={116} w={352} h={22} size={10} tone="crema">Provide for losses now · wait for gains</Pill>

      <Box x={4} y={152} w={114} h={70} title="Consistency" lines={["FIFO this year,", "FIFO next year"]} titleSize={11} />
      <Box x={123} y={152} w={114} h={70} title="Materiality" lines={["₹50 stapler:", "just an expense"]} titleSize={11} />
      <Box x={242} y={152} w={114} h={70} style="warm" title="Full disclosure" lines={["₹1,00,000 lawsuit:", "in the notes"]} titleSize={11} />
      <Txt x={180} y={246} size={10} anchor="middle">Conventions are customs built by practice, using judgement;</Txt>
      <Txt x={180} y={260} size={10} anchor="middle">concepts are basic assumptions, uniform for everyone</Txt>
    </Figure>
  );
}
