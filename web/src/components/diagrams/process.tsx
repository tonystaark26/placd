// Pictures for the ICAI accounting-process cards (acct-14 to acct-23).
// Every number comes from that card's "₹100 example".

import { Arrow, Axes, Box, Curve, Dot, Figure, Heading, Line, Pill, Txt } from "./parts";

// acct-14 ──────────────────────────────────────────────────────────────
export function DebitCredit() {
  return (
    <Figure
      h={300}
      label="Debit is the left side, credit the right. Increases in assets and expenses are debits; increases in liabilities, capital and incomes are credits. Golden rules: personal accounts, debit the receiver and credit the giver; real accounts, debit what comes in and credit what goes out; nominal accounts, debit expenses and losses and credit incomes and gains. Example: paying ₹2,000 rent debits rent and credits cash."
    >
      <Heading>Every entry has two sides</Heading>
      {/* T-account */}
      <Line x1={20} y1={50} x2={340} y2={50} tone="espresso" width={2} />
      <Line x1={180} y1={50} x2={180} y2={150} tone="espresso" width={2} />
      <Txt x={100} y={42} size={12} bold tone="coffee" anchor="middle">Debit (Dr) · left</Txt>
      <Txt x={260} y={42} size={12} bold tone="coffee" anchor="middle">Credit (Cr) · right</Txt>
      <Txt x={100} y={74} size={10.5} tone="espresso" anchor="middle">Assets ↑</Txt>
      <Txt x={100} y={92} size={10.5} tone="espresso" anchor="middle">Expenses ↑</Txt>
      <Txt x={100} y={116} size={9.5} anchor="middle">(and liabilities, capital,</Txt>
      <Txt x={100} y={130} size={9.5} anchor="middle">income going down)</Txt>
      <Txt x={260} y={74} size={10.5} tone="espresso" anchor="middle">Liabilities ↑</Txt>
      <Txt x={260} y={92} size={10.5} tone="espresso" anchor="middle">Capital ↑ · Income ↑</Txt>
      <Txt x={260} y={116} size={9.5} anchor="middle">(and assets, expenses</Txt>
      <Txt x={260} y={130} size={9.5} anchor="middle">going down)</Txt>

      <Txt x={4} y={172} size={9.5} bold caps tone="mocha2">GOLDEN RULES</Txt>
      {[
        ["Personal", "Debit the receiver", "Credit the giver"],
        ["Real", "Debit what comes in", "Credit what goes out"],
        ["Nominal", "Debit expenses, losses", "Credit incomes, gains"],
      ].map(([kind, dr, cr], i) => (
        <g key={kind}>
          <rect x={4} y={180 + i * 26} width={352} height={22} rx="6" className={i % 2 ? "fill-cream" : "fill-foam"} />
          <Txt x={12} y={195 + i * 26} size={10} bold tone="espresso">{kind}</Txt>
          <Txt x={84} y={195 + i * 26} size={10}>{dr}</Txt>
          <Txt x={226} y={195 + i * 26} size={10}>{cr}</Txt>
        </g>
      ))}
      <Pill x={4} y={264} w={352} h={26} size={10.5} tone="coffee">Riya pays ₹2,000 rent → Rent Dr ₹2,000 · Cash Cr ₹2,000</Pill>
    </Figure>
  );
}

// acct-15 ──────────────────────────────────────────────────────────────
export function TrialBalanceErrors() {
  return (
    <Figure
      h={300}
      label="A trial balance checks that total debits equal total credits. It does not catch complete omissions, errors of principle, compensating errors or postings to the wrong account on the correct side. It does catch one-sided errors, wrong-side postings and wrong totals; an unfound difference goes to a temporary suspense account. Example: a ₹30,000 laptop booked as office expenses leaves the trial balance agreeing but profit understated."
    >
      <Heading>Trial balance: Σ Debits = Σ Credits?</Heading>
      {/* balance scale */}
      <Line x1={180} y1={34} x2={180} y2={84} tone="espresso" width={2} />
      <Line x1={96} y1={40} x2={264} y2={40} tone="espresso" width={3} />
      <rect x={60} y={50} width={72} height={26} rx="6" className="fill-coffee" />
      <Txt x={96} y={67} size={10.5} bold tone="cream" anchor="middle">Debits</Txt>
      <rect x={228} y={50} width={72} height={26} rx="6" className="fill-crema-line" />
      <Txt x={264} y={67} size={10.5} bold tone="espresso" anchor="middle">Credits</Txt>
      <Txt x={180} y={100} size={10} anchor="middle">Agreement proves only the arithmetic, not that the books are right</Txt>

      <Box x={4} y={112} w={174} h={112} style="bad" title="Still agrees (hidden)" titleSize={11} />
      {["Complete omission", "Error of principle", "Compensating errors", "Wrong account, right side", "Posted twice to both sides"].map((t, i) => (
        <Txt key={t} x={14} y={148 + i * 15} size={9.5} tone="espresso">{`• ${t}`}</Txt>
      ))}
      <Box x={182} y={112} w={174} h={112} style="good" title="Won't agree (caught)" titleSize={11} />
      {["One side not posted", "Posted to the wrong side", "Wrong total or balance"].map((t, i) => (
        <Txt key={t} x={192} y={148 + i * 15} size={9.5} tone="espresso">{`• ${t}`}</Txt>
      ))}
      <Txt x={192} y={202} size={9.5} bold tone="good">→ park the gap in suspense</Txt>
      <Txt x={192} y={215} size={9} tone="mocha">(temporary)</Txt>

      <rect x={4} y={236} width={352} height={54} rx="10" className="fill-latte stroke-crema-line" />
      <Txt x={14} y={256} size={10.5} bold tone="espresso">₹30,000 laptop booked as &ldquo;office expenses&rdquo;</Txt>
      <Txt x={14} y={272} size={10}>Trial balance agrees ✓ · but profit and assets are</Txt>
      <Txt x={14} y={285} size={10}>both understated by ₹30,000 ✗</Txt>
    </Figure>
  );
}

// acct-16 ──────────────────────────────────────────────────────────────
export function SubsidiaryBooks() {
  const books = [
    ["Cash book", "cash & bank"],
    ["Purchases", "credit only"],
    ["Purchase returns", ""],
    ["Sales", "credit only"],
    ["Sales returns", ""],
    ["Bills receivable", ""],
    ["Bills payable", ""],
    ["Journal proper", "everything else"],
  ];
  const s = 0.12; // ₹ → px for the petty cash bar
  return (
    <Figure
      h={300}
      label="Eight subsidiary books: cash book, purchases book (credit purchases only), purchase returns, sales book (credit sales only), sales returns, bills receivable, bills payable and the journal proper. Petty cash on the imprest system: a ₹2,000 float, ₹1,650 spent on autos, cleaning and stationery, then topped up by exactly ₹1,650."
    >
      <Heading>8 books of original entry</Heading>
      {books.map(([name, note], i) => {
        const x = 4 + (i % 4) * 89;
        const y = 28 + Math.floor(i / 4) * 52;
        return (
          <g key={name}>
            <rect x={x} y={y} width={85} height={46} rx="8" className={i === 0 ? "fill-coffee" : i === 7 ? "fill-latte stroke-crema-line" : "fill-foam stroke-line"} />
            <Txt x={x + 42.5} y={y + 20} size={9.5} bold tone={i === 0 ? "cream" : "espresso"} anchor="middle">{name}</Txt>
            {note && <Txt x={x + 42.5} y={y + 34} size={8.5} tone={i === 0 ? "crema" : "mocha"} anchor="middle">{note}</Txt>}
          </g>
        );
      })}

      <Txt x={4} y={152} size={9.5} bold caps tone="mocha2">PETTY CASH · IMPREST ₹2,000 A WEEK</Txt>
      {/* spent segments */}
      {[
        { w: 300, label: "autos ₹300", cls: "fill-bad" },
        { w: 850, label: "cleaning ₹850", cls: "fill-bad" },
        { w: 500, label: "stationery ₹500", cls: "fill-bad" },
        { w: 350, label: "left ₹350", cls: "fill-crema-line" },
      ].reduce<{ x: number; els: React.ReactNode[] }>(
        (acc, seg, i) => {
          acc.els.push(
            <g key={i}>
              <rect x={acc.x} y={160} width={seg.w * s - 1.5} height={22} rx="3" className={seg.cls} opacity={seg.cls === "fill-bad" ? 0.85 : 1} />
              <Txt x={acc.x + (seg.w * s) / 2} y={196} size={8.5} anchor="middle">{seg.label}</Txt>
            </g>,
          );
          acc.x += seg.w * s;
          return acc;
        },
        { x: 60, els: [] },
      ).els}
      <Txt x={56} y={175} size={9.5} tone="espresso" anchor="end">Mon→Sat</Txt>
      <Arrow x1={180} y1={206} x2={180} y2={222} tone="good" width={2} />
      <rect x={60} y={226} width={240} height={22} rx="3" className="fill-good" />
      <Txt x={180} y={241} size={10} bold tone="cream" anchor="middle">Saturday top-up: exactly ₹1,650 → back to ₹2,000</Txt>
      <Txt x={180} y={272} size={10} anchor="middle">Small spends stay out of the main cash book</Txt>
      <Txt x={180} y={288} size={10} bold tone="coffee" anchor="middle">Cash sale → cash book · credit sale → sales book</Txt>
    </Figure>
  );
}

// acct-17 ──────────────────────────────────────────────────────────────
export function GSTCredit() {
  const s = 0.006; // ₹ → px
  return (
    <Figure
      h={262}
      label="A Kolkata trader buys stock for ₹1,00,000 plus ₹18,000 GST, which becomes input tax credit, and sells it for ₹1,50,000 plus ₹27,000 GST. It pays the government ₹27,000 minus ₹18,000, which is ₹9,000: 18% of the ₹50,000 value it added. Within a state: CGST + SGST; between states: IGST."
    >
      <Heading>A Kolkata trader, 18% GST</Heading>
      <Box x={4} y={28} w={108} h={56} title="Supplier" lines={["sells ₹1,00,000"]} titleSize={11} />
      <Arrow x1={114} y1={56} x2={124} y2={56} />
      <Box x={126} y={28} w={108} h={56} style="dark" title="Trader" lines={["adds ₹50,000"]} titleSize={11} />
      <Arrow x1={236} y1={56} x2={246} y2={56} />
      <Box x={248} y={28} w={108} h={56} title="Customer" lines={["pays ₹1,50,000", "+ ₹27,000 GST"]} titleSize={11} />

      <Txt x={4} y={110} size={10} bold tone="espresso">GST on sales (output)</Txt>
      <rect x={140} y={98} width={27000 * s} height={18} rx="4" className="fill-bad" />
      <Txt x={146 + 27000 * s} y={111} size={10} bold tone="bad">₹27,000</Txt>
      <Txt x={4} y={136} size={10} bold tone="espresso">− GST on purchases (input)</Txt>
      <rect x={140} y={124} width={18000 * s} height={18} rx="4" className="fill-good" />
      <Txt x={146 + 18000 * s} y={137} size={10} bold tone="good">₹18,000 credit</Txt>
      <Line x1={4} y1={150} x2={356} y2={150} tone="mocha2" width={1} />
      <Txt x={4} y={170} size={11} bold tone="espresso">= Paid to government</Txt>
      <rect x={140} y={158} width={9000 * s} height={18} rx="4" className="fill-coffee" />
      <Txt x={146 + 9000 * s} y={171} size={11} bold tone="coffee">₹9,000</Txt>

      <Pill x={4} y={188} w={352} h={24} size={10.5} tone="crema">₹9,000 = 18% of the ₹50,000 value added · no tax on tax</Pill>
      <Box x={4} y={220} w={174} h={38} title="Same state: CGST + SGST" titleSize={10.5} />
      <Box x={182} y={220} w={174} h={38} title="Between states: IGST" titleSize={10.5} />
    </Figure>
  );
}

// acct-18 ──────────────────────────────────────────────────────────────
export function CapitalRevenue() {
  return (
    <Figure
      h={270}
      label="At the canteen, a new ₹60,000 oven and a ₹15,000 burner upgrade for 30% more output are capital expenditure, shown in the balance sheet and depreciated over the years. ₹1,200 monthly gas servicing is revenue expenditure, charged to this year's profit and loss. An old fridge with a ₹8,000 book value sold for ₹10,000: ₹10,000 is a capital receipt and only the ₹2,000 profit goes to the P&L."
    >
      <Heading>The canteen&apos;s spending</Heading>
      <Box x={4} y={28} w={174} h={104} style="warm" title="Capital → balance sheet" titleSize={11} />
      <Txt x={14} y={64} size={10} tone="espresso">• New oven ₹60,000</Txt>
      <Txt x={14} y={80} size={10} tone="espresso">• Burner rebuild ₹15,000</Txt>
      <Txt x={24} y={93} size={9}>(+30% output: improves)</Txt>
      <Txt x={14} y={118} size={9.5} bold tone="coffee">Benefit lasts years · depreciated</Txt>
      <Box x={182} y={28} w={174} h={104} title="Revenue → this year's P&L" titleSize={11} />
      <Txt x={192} y={64} size={10} tone="espresso">• Gas servicing ₹1,200/mo</Txt>
      <Txt x={192} y={80} size={10} tone="espresso">• Salaries, rent, repairs</Txt>
      <Txt x={202} y={93} size={9}>(maintains capacity)</Txt>
      <Txt x={192} y={118} size={9.5} bold tone="coffee">Benefit used up this year</Txt>

      <Txt x={4} y={156} size={9.5} bold caps tone="mocha2">SELLING THE OLD FRIDGE FOR ₹10,000 (BOOK VALUE ₹8,000)</Txt>
      <rect x={4} y={164} width={256} height={26} rx="4" className="fill-crema-line" />
      <Txt x={132} y={181} size={10} bold tone="espresso" anchor="middle">₹8,000 · capital receipt (asset gone)</Txt>
      <rect x={262} y={164} width={94} height={26} rx="4" className="fill-good" />
      <Txt x={309} y={181} size={10} bold tone="cream" anchor="middle">₹2,000 profit</Txt>
      <Arrow x1={309} y1={194} x2={309} y2={208} tone="good" width={1.8} />
      <Txt x={309} y={222} size={9.5} bold tone="good" anchor="middle">→ P&amp;L</Txt>
      <Txt x={180} y={248} size={10} anchor="middle">Ask: does the benefit last beyond this year?</Txt>
      <Txt x={180} y={263} size={10} anchor="middle">Does it improve capacity, or just maintain it?</Txt>
    </Figure>
  );
}

// acct-19 ──────────────────────────────────────────────────────────────
export function ContingentLiabilities() {
  const rows = [
    { q: "Probable and measurable?", a: "Provision", how: "record it: ₹20,000 likely settlement", style: "bad" as const },
    { q: "Only possible (or can't measure)?", a: "Contingent liability", how: "note only: ₹50,000 claim, likely to win", style: "warm" as const },
    { q: "Chance of paying remote?", a: "Nothing shown", how: "not even disclosed", style: "faded" as const },
    { q: "A possible gain?", a: "Contingent asset", how: "not recorded: her ₹10,000 supplier claim", style: "good" as const },
  ];
  return (
    <Figure
      h={300}
      label="Deciding how to treat an uncertain obligation. If an outflow is probable and measurable, record a provision, like a ₹20,000 likely settlement. If it is only possible or can't be measured, disclose a contingent liability in the notes, like a ₹50,000 claim she'll probably win. If the chance of paying is remote, nothing is shown. A possible gain, like her ₹10,000 claim on a supplier, is a contingent asset and is not recorded."
    >
      <Heading>Riya is sued for ₹50,000: what goes in the books?</Heading>
      {rows.map((r, i) => {
        const y = 30 + i * 66;
        return (
          <g key={r.a}>
            <rect x={4} y={y} width={160} height={56} rx="10" className="fill-foam stroke-line" />
            <Txt x={14} y={y + 24} size={10} tone="espresso">{r.q.split(" (")[0]}</Txt>
            {r.q.includes("(") && <Txt x={14} y={y + 38} size={9.5}>{`(${r.q.split(" (")[1]}`}</Txt>}
            <Arrow x1={168} y1={y + 28} x2={182} y2={y + 28} tone="mocha2" width={1.6} />
            <Box x={186} y={y} w={170} h={56} style={r.style} title={r.a} lines={[r.how.split(": ")[0] + (r.how.includes(":") ? ":" : ""), r.how.split(": ")[1] ?? ""].filter(Boolean)} titleSize={11} />
          </g>
        );
      })}
    </Figure>
  );
}

// acct-20 ──────────────────────────────────────────────────────────────
export function StandardsPolicies() {
  return (
    <Figure
      h={270}
      label="Three layers. Accounting standards (Ind AS for listed companies and those with net worth of ₹250 crore or more; AS for others) set the rules. Within them, a company picks accounting policies, such as weighted average or FIFO for stock. Within policies, it makes estimates, such as shelves lasting 8 years instead of 5. Policies change only if law or a standard requires it, or for a more appropriate presentation."
    >
      <Heading>Rules, choices and judgements</Heading>
      <rect x={4} y={28} width={352} height={204} rx="12" className="fill-coffee" />
      <Txt x={16} y={48} size={11.5} bold tone="cream">Standards: the rules</Txt>
      <Txt x={16} y={63} size={9.5} tone="crema">Ind AS: listed cos, NBFCs, net worth ≥ ₹250 cr · AS: others</Txt>
      <rect x={16} y={74} width={328} height={146} rx="10" className="fill-latte stroke-crema-line" />
      <Txt x={28} y={94} size={11} bold tone="espresso">Policies: the methods you choose</Txt>
      <Txt x={28} y={109} size={9.5}>Stock: weighted average → FIFO? Profit ₹96 → ₹112</Txt>
      <rect x={28} y={120} width={304} height={88} rx="10" className="fill-foam stroke-line" />
      <Txt x={40} y={140} size={11} bold tone="espresso">Estimates: judgements inside them</Txt>
      <Txt x={40} y={155} size={9.5}>Shelves last 8 years, not 5:</Txt>
      <Txt x={40} y={169} size={9.5}>depreciation ₹1,600 → ₹1,000 a year</Txt>
      <Txt x={40} y={190} size={9.5} bold tone="coffee">Change applies from now on</Txt>
      <Pill x={4} y={240} w={352} h={24} size={10} tone="bad">Change a policy only if required, or for a better presentation</Pill>
    </Figure>
  );
}

// acct-21 ──────────────────────────────────────────────────────────────
export function MeasurementBases() {
  const s = 0.0028; // ₹ → px
  const bars = [
    { name: "Historical cost", note: "₹40,000 + ₹5,000 install", v: 45000, cls: "fill-coffee" },
    { name: "Current cost", note: "same oven new today", v: 70000, cls: "fill-crema-line" },
    { name: "Realisable value", note: "if sold today", v: 25000, cls: "fill-bad" },
    { name: "Present value", note: "₹12,000 × 3 yrs at 10%", v: 29840, cls: "fill-good" },
  ];
  return (
    <Figure
      h={236}
      label="The canteen's oven valued four ways: historical cost ₹45,000 (₹40,000 plus ₹5,000 installation), current cost ₹70,000 for the same oven new today, realisable value ₹25,000 if sold today, and present value about ₹29,840 for ₹12,000 of savings a year for 3 more years at 10%."
    >
      <Heading>One oven, four values</Heading>
      {bars.map((b, i) => {
        const y = 32 + i * 46;
        return (
          <g key={b.name}>
            <Txt x={4} y={y + 13} size={10.5} bold tone="espresso">{b.name}</Txt>
            <Txt x={4} y={y + 27} size={9}>{b.note}</Txt>
            <rect x={110} y={y + 2} width={b.v * s} height={22} rx="4" className={b.cls} />
            <Txt x={116 + b.v * s} y={y + 18} size={10.5} bold tone="espresso">{`₹${b.v.toLocaleString("en-IN")}`}</Txt>
          </g>
        );
      })}
      <Txt x={180} y={222} size={10} anchor="middle">Balance sheets mostly use historical cost; stock uses the lower of cost &amp; NRV</Txt>
    </Figure>
  );
}

// acct-22 ──────────────────────────────────────────────────────────────
export function DepreciationMethods() {
  const x = (yr: number) => 50 + yr * 52;
  const y = (v: number) => 200 - v * 0.0027;
  const slm = [60000, 49200, 38400, 27600, 16800, 6000];
  const wdv = [60000, 48000, 38400, 30720, 24576, 19661];
  const path = (vals: number[]) => vals.map((v, i) => `${i ? "L" : "M"} ${x(i)} ${y(v).toFixed(1)}`).join(" ");
  return (
    <Figure
      h={236}
      label="Book value of the canteen's ₹60,000 oven over 5 years. Straight line: ₹10,800 a year, falling evenly to the ₹6,000 residual value. Written down value at 20%: ₹12,000, then ₹9,600, then ₹7,680, so it falls faster at first and more slowly later, to about ₹19,661 after five years."
    >
      <Heading>₹60,000 oven: book value each year</Heading>
      <Axes x={50} y={200} w={280} h={168} xName="years →" yName="₹ book value" />
      {[0, 1, 2, 3, 4, 5].map((yr) => (
        <Txt key={yr} x={x(yr)} y={212} size={9.5} anchor="middle">{String(yr)}</Txt>
      ))}
      <Txt x={46} y={y(60000) + 3.5} size={9} anchor="end">60k</Txt>
      <Txt x={46} y={y(30000) + 3.5} size={9} anchor="end">30k</Txt>
      <Line x1={50} y1={y(6000)} x2={330} y2={y(6000)} tone="line" width={1} dash />
      <Txt x={56} y={y(6000) - 4} size={9}>residual ₹6,000</Txt>
      <Curve d={path(slm)} />
      <Curve d={path(wdv)} tone="good" width={2.5} dash />
      {slm.map((v, i) => <Dot key={`s${i}`} x={x(i)} y={y(v)} r={3} />)}
      {wdv.map((v, i) => <Dot key={`w${i}`} x={x(i)} y={y(v)} tone="good" r={3} />)}
      <Box x={196} y={30} w={160} h={44} title="Straight line" lines={["₹10,800 every year"]} titleSize={10.5} />
      <Box x={196} y={78} w={160} h={44} style="good" title="WDV at 20%" lines={["₹12,000 → ₹9,600 → ₹7,680…"]} titleSize={10.5} />
    </Figure>
  );
}

// acct-23 ──────────────────────────────────────────────────────────────
export function BillsOfExchange() {
  const x = (d: number) => 20 + d * 2.5; // day of year (1 Jan = 0) → px
  return (
    <Figure
      h={276}
      label="A Burrabazar wholesaler sells ₹1,00,000 of sarees and draws a 3-month bill on a Siliguri retailer dated 1 January, which the retailer accepts. It falls due on 1 April and matures on 4 April after 3 days of grace. The wholesaler discounts it at a bank at 12% a year and receives about ₹97,000 today. In a bill, the creditor orders; in a promissory note, the debtor promises."
    >
      <Heading>A ₹1,00,000 three-month bill</Heading>
      <Box x={4} y={28} w={150} h={52} style="dark" title="Drawer (creditor)" lines={["Burrabazar wholesaler"]} titleSize={10.5} />
      <Arrow x1={158} y1={54} x2={202} y2={54} tone="coffee" width={2} />
      <Txt x={180} y={46} size={9} anchor="middle">orders</Txt>
      <Box x={206} y={28} w={150} h={52} title="Drawee (debtor)" lines={["Siliguri retailer accepts"]} titleSize={10.5} />

      <Line x1={x(0)} y1={128} x2={x(93)} y2={128} tone="mocha2" width={2} />
      <Dot x={x(0)} y={128} r={5} />
      <Txt x={x(0)} y={116} size={10} bold tone="espresso">1 Jan</Txt>
      <Txt x={x(0)} y={146} size={9}>bill drawn</Txt>
      <Dot x={x(90)} y={128} tone="mocha2" r={5} />
      <Txt x={x(90)} y={116} size={10} bold tone="espresso" anchor="end">1 Apr</Txt>
      <Txt x={x(90) - 2} y={146} size={9} anchor="end">due date</Txt>
      <rect x={x(90)} y={122} width={x(93) - x(90)} height={12} className="fill-good" />
      <Dot x={x(93)} y={128} tone="good" r={5} />
      <Txt x={x(93) + 8} y={124} size={10} bold tone="good">4 Apr</Txt>
      <Txt x={x(93) + 8} y={138} size={9} tone="good">+3 days of grace</Txt>

      <rect x={4} y={160} width={352} height={50} rx="10" className="fill-latte stroke-crema-line" />
      <Txt x={14} y={180} size={10.5} bold tone="espresso">Needs cash now? Discount it at a bank (12% a year)</Txt>
      <Txt x={14} y={198} size={10}>₹1,00,000 − ₹3,000 discount = </Txt>
      <Txt x={170} y={198} size={11} bold tone="good">₹97,000 today</Txt>

      <Box x={4} y={220} w={174} h={50} style="warm" title="Bill of exchange" lines={["creditor orders · 3 parties"]} titleSize={10.5} />
      <Box x={182} y={220} w={174} h={50} title="Promissory note" lines={["debtor promises · 2 parties"]} titleSize={10.5} />
    </Figure>
  );
}
