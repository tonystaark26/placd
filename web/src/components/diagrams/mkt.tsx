// Pictures for the Marketing cards. Every number comes from that card's "₹100 example".

import { Arrow, Box, Figure, Heading, Line, Pill, Txt } from "./parts";

// mkt-01 ───────────────────────────────────────────────────────────────
export function NeedsWantsDemands() {
  const rows = [
    { x: 10, w: 340, tag: "NEED", text: "Hungry at 1 pm", dark: false },
    { x: 40, w: 280, tag: "WANT", text: "The ₹250 café burger", dark: false },
    { x: 70, w: 220, tag: "DEMAND", text: "₹80 canteen thali", dark: true },
  ];
  return (
    <Figure
      h={236}
      label="Need: you're hungry at 1 pm. Want: the ₹250 café burger. Demand: with ₹100 in your pocket, you buy the ₹80 canteen thali. Demand is a want you can pay for."
    >
      {rows.map((r, i) => {
        const y = 10 + i * 60;
        return (
          <g key={r.tag}>
            <rect x={r.x} y={y} width={r.w} height={50} rx="10" className={r.dark ? "fill-coffee" : i === 0 ? "fill-foam stroke-line" : "fill-latte stroke-crema-line"} />
            <Txt x={180} y={y + 20} size={9.5} bold caps tone={r.dark ? "crema" : "mocha2"} anchor="middle">{r.tag}</Txt>
            <Txt x={180} y={y + 38} size={12.5} bold tone={r.dark ? "cream" : "espresso"} anchor="middle">{r.text}</Txt>
          </g>
        );
      })}
      <Txt x={180} y={196} size={10} anchor="middle">You have ₹100, so the want becomes what you can pay for.</Txt>
      <Txt x={180} y={214} size={10} bold tone="coffee" anchor="middle">The café&apos;s real market: people who want it</Txt>
      <Txt x={180} y={228} size={10} bold tone="coffee" anchor="middle">AND can pay ₹250</Txt>
    </Figure>
  );
}

// mkt-02 ───────────────────────────────────────────────────────────────
export function CustomerValue() {
  return (
    <Figure
      h={248}
      label="Chai stall: ₹10, 2 minutes. Café: ₹100, AC and Wi-Fi, 15-minute wait. For a quick break between classes, the stall gives more value. For a 2-hour group study, the café wins because seating and Wi-Fi are worth the extra ₹90."
    >
      <Txt x={6} y={44} size={10} bold tone="espresso">Value =</Txt>
      <Txt x={6} y={58} size={10}>benefits − costs</Txt>
      <Box x={128} y={22} w={112} h={60} style="warm" title="Chai stall" lines={["₹10 · 2 min"]} />
      <Box x={246} y={22} w={110} h={60} style="warm" title="Café" lines={["₹100 · AC, Wi-Fi", "15-min wait"]} />

      <Txt x={6} y={116} size={11} bold tone="espresso">Quick break</Txt>
      <Txt x={6} y={130} size={10}>between classes</Txt>
      <Box x={128} y={94} w={112} h={56} style="good" title="✓ More value" lines={["fast and cheap"]} />
      <Box x={246} y={94} w={110} h={56} style="faded" title="Less value" lines={["slow, ₹90 more"]} dash />

      <Txt x={6} y={182} size={11} bold tone="espresso">2-hour group</Txt>
      <Txt x={6} y={196} size={10}>study session</Txt>
      <Box x={128} y={160} w={112} h={56} style="faded" title="Less value" lines={["nowhere to sit"]} dash />
      <Box x={246} y={160} w={110} h={56} style="good" title="✓ More value" lines={["worth the ₹90"]} />

      <Txt x={180} y={238} size={10} bold tone="coffee" anchor="middle">
        Same customer, different situation, different value
      </Txt>
    </Figure>
  );
}

// mkt-03 ───────────────────────────────────────────────────────────────
export function LifetimeValue() {
  const cols = 33;
  const rows = 16; // 33 × 16 = 528 visits = 22 days × 24 months
  return (
    <Figure
      h={250}
      label="A regular student brings the canteen ₹20 profit a day. Over 22 days a month for 24 months that's 528 visits, worth ₹10,560. Lose them over one stale samosa and you lose all of it."
    >
      <Heading>One regular at the canteen</Heading>
      {[
        { x: 4, w: 74, top: "₹20", sub: "profit a day" },
        { x: 94, w: 74, top: "22 days", sub: "a month" },
        { x: 184, w: 74, top: "24 months", sub: "2 years" },
      ].map((b, i) => (
        <g key={b.top}>
          <Box x={b.x} y={26} w={b.w} h={42} title={b.top} lines={[b.sub]} titleSize={11.5} />
          <Txt x={b.x + b.w + 8} y={52} size={13} bold tone="mocha2" anchor="middle">{i < 2 ? "×" : "="}</Txt>
        </g>
      ))}
      <rect x={274} y={26} width={82} height={42} rx="10" className="fill-coffee" />
      <Txt x={315} y={44} size={13} bold tone="cream" anchor="middle">₹10,560</Txt>
      <Txt x={315} y={59} size={9.5} tone="crema" anchor="middle">lifetime value</Txt>

      {Array.from({ length: cols * rows }, (_, i) => (
        <circle key={i} cx={22 + (i % cols) * 9.9} cy={86 + Math.floor(i / cols) * 7.8} r="2.4" className="fill-coffee" />
      ))}
      <Txt x={180} y={224} size={10} anchor="middle">Each dot = one ₹20 visit (528 in all)</Txt>
      <Txt x={180} y={242} size={10.5} bold tone="bad" anchor="middle">
        One stale samosa can cost ₹10,560, not ₹20
      </Txt>
    </Figure>
  );
}

// mkt-04 ───────────────────────────────────────────────────────────────
export function Orientations() {
  const rows: { name: string; q: string; style: "plain" | "good" | "warm"; y: number }[] = [
    { name: "Production", q: "How do we make a samosa for ₹5?", style: "plain", y: 44 },
    { name: "Product", q: "How do we make Kolkata's best samosa?", style: "plain", y: 82 },
    { name: "Selling", q: "How do we push samosa + chai combos?", style: "plain", y: 120 },
    { name: "Marketing", q: "What do students actually want at 1 pm?", style: "good", y: 178 },
    { name: "Societal", q: "…without plastic plates or food waste?", style: "warm", y: 216 },
  ];
  return (
    <Figure
      h={252}
      label="The canteen test. Production, product and selling orientations start from the samosa, which risks marketing myopia. Marketing starts from what students want at 1 pm, and the societal orientation adds: without plastic plates or food waste."
    >
      <Heading>The canteen test</Heading>
      <Txt x={6} y={38} size={9} bold caps tone="bad">START FROM THE PRODUCT · MYOPIA RISK</Txt>
      <Txt x={6} y={172} size={9} bold caps tone="good">START FROM THE CUSTOMER&apos;S NEED</Txt>
      {rows.map((r) => (
        <g key={r.name}>
          <rect x={4} y={r.y} width={352} height={32} rx="10" className={r.style === "good" ? "fill-good-bg" : r.style === "warm" ? "fill-latte stroke-crema-line" : "fill-foam stroke-line"} />
          <Txt x={14} y={r.y + 20} size={11} bold tone={r.style === "good" ? "good" : "espresso"}>{r.name}</Txt>
          <Txt x={98} y={r.y + 20} size={10} italic tone="mocha">{`“${r.q}”`}</Txt>
        </g>
      ))}
    </Figure>
  );
}

// mkt-05 ───────────────────────────────────────────────────────────────
export function MarketingEnvironment() {
  const cx = 180;
  const cy = 192;
  const at = (r: number, deg: number) => [cx + r * Math.cos((deg * Math.PI) / 180), cy + r * Math.sin((deg * Math.PI) / 180)];
  const micro = [
    { deg: -30, lines: ["Milk", "supplier"] },
    { deg: 30, lines: ["Swiggy /", "Zomato"] },
    { deg: 90, lines: ["You"] },
    { deg: 150, lines: ["Café", "next door"] },
    { deg: 210, lines: ["Residents'", "association"] },
  ];
  const macro = [
    { deg: -30, name: "Political", ex: "GST rates" },
    { deg: 30, name: "Economic", ex: "milk prices up" },
    { deg: 90, name: "Technological", ex: "UPI payments" },
    { deg: 150, name: "Social", ex: "study-from-café" },
    { deg: 210, name: "Env. / Legal", ex: "straw ban" },
  ];
  return (
    <Figure
      h={364}
      label="Your favourite Kolkata café sits at the centre. Around it, the microenvironment: its milk supplier, Swiggy and Zomato, you, the café next door and the residents' association. Further out, the macroenvironment: GST rates, rising milk prices, students studying from cafés, UPI payments and the plastic-straw ban."
    >
      <Heading>Your favourite Kolkata café</Heading>
      <circle cx={cx} cy={cy} r={168} className="fill-latte stroke-crema-line" />
      <circle cx={cx} cy={cy} r={100} className="fill-foam stroke-line" />
      <circle cx={cx} cy={cy} r={40} className="fill-coffee" />
      <Txt x={cx} y={cy + 4.5} size={12.5} bold tone="cream" anchor="middle">Café</Txt>
      <Txt x={cx} y={cy - 168 + 18} size={9.5} bold caps tone="coffee" anchor="middle">MACRO · NOBODY CONTROLS</Txt>
      <Txt x={cx} y={cy - 100 + 18} size={9.5} bold caps tone="mocha2" anchor="middle">MICRO · NEARBY</Txt>
      {micro.map((m) => {
        const [x, y] = at(70, m.deg);
        const top = y - (m.lines.length - 1) * 6 + 3;
        return m.lines.map((l, i) => (
          <Txt key={`${m.deg}-${i}`} x={x} y={top + i * 12} size={9.5} tone="espresso" anchor="middle">{l}</Txt>
        ));
      })}
      {macro.map((m) => {
        const [x, y] = at(134, m.deg);
        return (
          <g key={m.name}>
            <Txt x={x} y={y - 2} size={9.5} bold tone="coffee" anchor="middle">{m.name}</Txt>
            <Txt x={x} y={y + 11} size={9.5} anchor="middle">{m.ex}</Txt>
          </g>
        );
      })}
    </Figure>
  );
}

// mkt-08 ───────────────────────────────────────────────────────────────
export function DecisionJourney() {
  const cx = 180;
  const cy = 146;
  const r = 112;
  const W = 100;
  const H = 42;
  const steps = [
    { deg: -90, name: "1 · Need", ex: "an Instagram reel" },
    { deg: -30, name: "2 · Search", ex: "3 YouTube reviews" },
    { deg: 30, name: "3 · Evaluate", ex: "2 models, Flipkart" },
    { deg: 90, name: "4 · Try in store", ex: "webrooming" },
    { deg: 150, name: "5 · Purchase", ex: "₹1,000 offer wins" },
    { deg: 210, name: "6 · Review", ex: "posts 4 stars" },
  ].map((s) => ({ ...s, x: cx + r * Math.cos((s.deg * Math.PI) / 180), y: cy + r * Math.sin((s.deg * Math.PI) / 180) }));

  // Arrow between two box centres, trimmed so it starts and ends at the box edges
  const link = (a: (typeof steps)[number], b: (typeof steps)[number]) => {
    const dx = b.x - a.x;
    const dy = b.y - a.y;
    const t = Math.min(Math.abs(dx) > 0 ? W / 2 / Math.abs(dx) : 1, Math.abs(dy) > 0 ? H / 2 / Math.abs(dy) : 1) + 0.03;
    return { x1: a.x + dx * t, y1: a.y + dy * t, x2: b.x - dx * t, y2: b.y - dy * t };
  };

  return (
    <Figure
      h={290}
      label="Buying a ₹15,000 phone: an Instagram reel creates the need, you search with YouTube reviews, evaluate two models on Flipkart, try them in a store, buy the other model because of a ₹1,000 exchange offer, then post a review that becomes the next buyer's search. It's a loop, not a straight line."
    >
      {steps.map((s, i) => (
        <Arrow key={s.deg} {...link(s, steps[(i + 1) % steps.length])} tone={i === steps.length - 1 ? "good" : "mocha2"} width={1.6} />
      ))}
      {steps.map((s) => (
        <g key={s.name}>
          <rect x={s.x - W / 2} y={s.y - H / 2} width={W} height={H} rx="10" className={s.deg === 90 ? "fill-latte stroke-crema-line" : "fill-foam stroke-line"} />
          <Txt x={s.x} y={s.y - 4} size={10.5} bold tone="espresso" anchor="middle">{s.name}</Txt>
          <Txt x={s.x} y={s.y + 11} size={9.5} anchor="middle">{s.ex}</Txt>
        </g>
      ))}
      <Txt x={cx} y={cy - 22} size={11} bold tone="coffee" anchor="middle">A ₹15,000 phone</Txt>
      <Txt x={cx} y={cy - 6} size={10} anchor="middle">Not a straight line:</Txt>
      <Txt x={cx} y={cy + 8} size={10} anchor="middle">your review becomes</Txt>
      <Txt x={cx} y={cy + 22} size={10} anchor="middle">the next buyer&apos;s search</Txt>
    </Figure>
  );
}

// mkt-09 ───────────────────────────────────────────────────────────────
export function TotalCostB2B() {
  const x0 = 96;
  const px = (rupees: number) => rupees / 333; // ₹80,000 → 240 px
  const roles = [
    ["Initiator", "HOD"],
    ["User", "Faculty"],
    ["Influencer", "IT team"],
    ["Decider", "Principal"],
    ["Approver", "Finance"],
    ["Buyer", "Purchase office"],
    ["Gatekeeper", "Admin office"],
  ];
  return (
    <Figure
      h={284}
      label="A college compares two projectors over 5 years. A costs ₹40,000 plus a ₹8,000 lamp every year, ₹80,000 in total. B costs ₹55,000 with an LED and no lamps, ₹55,000 in total. B is ₹25,000 cheaper. Seven roles in the buying centre take part in the decision."
    >
      <Heading>College projector: 5-year cost</Heading>
      <Txt x={4} y={48} size={11} bold tone="espresso">Projector A</Txt>
      <Txt x={4} y={61} size={9.5}>₹40,000 price</Txt>
      <rect x={x0} y={38} width={px(40000)} height={22} rx="4" className="fill-coffee" />
      {Array.from({ length: 5 }, (_, i) => (
        <rect key={i} x={x0 + px(40000) + i * px(8000) + 1.5} y={38} width={px(8000) - 3} height={22} rx="3" className="fill-bad" />
      ))}
      <Txt x={x0 + px(80000)} y={32} size={11} bold tone="bad" anchor="end">₹80,000</Txt>
      <Txt x={x0 + px(40000) + 4} y={74} size={9} tone="bad">+ 5 lamps × ₹8,000</Txt>

      <Txt x={4} y={100} size={11} bold tone="espresso">Projector B</Txt>
      <Txt x={4} y={113} size={9.5}>LED, no lamps</Txt>
      <rect x={x0} y={90} width={px(55000)} height={22} rx="4" className="fill-coffee" />
      <Txt x={x0 + px(55000) + 6} y={105} size={11} bold tone="good">₹55,000</Txt>

      <Pill x={4} y={126} w={352} h={22} size={10.5} tone="good">B is ₹25,000 cheaper: judge total cost, not price</Pill>

      <Txt x={4} y={172} size={9} bold caps tone="mocha2">WHO DECIDES · THE BUYING CENTRE</Txt>
      {roles.map(([role, who], i) => {
        const row = i < 4 ? 0 : 1;
        const col = row === 0 ? i : i - 4;
        const w = row === 0 ? 85 : 115;
        return <Box key={role} x={4 + col * (w + 4)} y={180 + row * 50} w={w} h={44} title={role} lines={[who]} titleSize={10.5} />;
      })}
    </Figure>
  );
}

// mkt-10 ───────────────────────────────────────────────────────────────
export function MarketSizing() {
  const max = 340;
  const bars = [
    { n: 2000, label: "2,000 students", note: "" },
    { n: 1200, label: "1,200", note: "drink coffee (60%)" },
    { n: 480, label: "480", note: "want cold coffee (40%)" },
  ];
  return (
    <Figure
      h={244}
      label="Cold coffee at your college: 2,000 students, 60% drink coffee (1,200), 40% of them want cold coffee (480). Times 3 cups a week at ₹50 is ₹72,000 a week, ₹21.6 lakh a year of market potential. A 25% share gives a sales forecast of ₹5.4 lakh."
    >
      <Heading>Cold coffee at your college</Heading>
      {bars.map((b, i) => {
        const y = 28 + i * 36;
        const w = (b.n / 2000) * max;
        return (
          <g key={b.n}>
            <rect x={10} y={y} width={w} height={28} rx="6" className={i === 2 ? "fill-coffee" : "fill-crema"} />
            <Txt x={20} y={y + 18} size={11} bold tone={i === 2 ? "cream" : "espresso"}>{b.label}</Txt>
            {b.note && <Txt x={10 + w + 8} y={y + 18} size={10}>{b.note}</Txt>}
          </g>
        );
      })}
      <Box x={4} y={146} w={108} h={64} style="warm" title="₹72,000" lines={["a week", "(× 3 cups × ₹50)"]} titleSize={12.5} />
      <Arrow x1={114} y1={178} x2={124} y2={178} />
      <Box x={126} y={146} w={108} h={64} style="warm" title="₹21.6 lakh" lines={["potential a year", "(× 30 weeks)"]} titleSize={12.5} />
      <Arrow x1={236} y1={178} x2={246} y2={178} />
      <Box x={248} y={146} w={108} h={64} style="dark" title="₹5.4 lakh" lines={["your forecast", "(25% share)"]} titleSize={12.5} />
      <Txt x={180} y={234} size={10} anchor="middle">Change one assumption and the answer moves</Txt>
    </Figure>
  );
}

// mkt-11 ───────────────────────────────────────────────────────────────
export function ResearchSteps() {
  const steps = [
    { title: "Check existing data", ex: "Price ₹10 → ₹15? New café nearby?", tag: "fast, free", tone: "crema" as const },
    { title: "Talk to 10 students", ex: "Find out why", tag: "qualitative", tone: "crema" as const },
    { title: "Survey 200", ex: "Find out how many feel that way", tag: "quantitative", tone: "crema" as const },
    { title: "Test a fix", ex: "₹12 at one counter vs the other", tag: "experiment", tone: "good" as const },
  ];
  return (
    <Figure
      h={246}
      label="Samosa sales fell 30%. Instead of jumping to a survey: first check existing data such as a price rise or a new café, then talk to 10 students to learn why, survey 200 to learn how many, and finally test a fix with ₹12 samosas at one counter."
    >
      <Heading>Samosa sales fell 30%</Heading>
      <rect x={70} y={26} width={220} height={26} rx="13" className="fill-bad-bg" />
      <Txt x={180} y={43} size={10.5} bold tone="bad" anchor="middle">✗ “Let&apos;s just run a survey”</Txt>
      {steps.map((s, i) => {
        const y = 62 + i * 46;
        return (
          <g key={s.title}>
            <rect x={4} y={y} width={352} height={40} rx="10" className={i === 3 ? "fill-latte stroke-crema-line" : "fill-foam stroke-line"} />
            <circle cx={24} cy={y + 20} r={11} className="fill-coffee" />
            <Txt x={24} y={y + 24} size={11} bold tone="cream" anchor="middle">{String(i + 1)}</Txt>
            <Txt x={44} y={y + 17} size={11} bold tone="espresso">{s.title}</Txt>
            <Txt x={44} y={y + 31} size={9.5}>{s.ex}</Txt>
            <Pill x={270} y={y + 11} w={78} tone={s.tone} size={9}>{s.tag}</Pill>
          </g>
        );
      })}
    </Figure>
  );
}

// mkt-12 ───────────────────────────────────────────────────────────────
export function DarkPatterns() {
  return (
    <Figure
      h={256}
      label="Checkout: your order is ₹199. A ₹99 membership is pre-ticked and a ₹15 handling fee appears at checkout, so the total becomes ₹313, 57% more than you chose. That's a dark pattern."
    >
      <Heading>Checkout</Heading>
      <rect x={20} y={26} width={320} height={164} rx="12" className="fill-foam stroke-line" />
      <Txt x={36} y={54} size={11} tone="espresso">Your order</Txt>
      <Txt x={324} y={54} size={11} bold tone="espresso" anchor="end">₹199</Txt>
      <Line x1={36} y1={68} x2={324} y2={68} tone="line" width={1} />

      <rect x={36} y={80} width={13} height={13} rx="3" className="fill-bad" />
      <path d="M39 86.5 l2.5 2.5 l4.5 -5" fill="none" className="stroke-cream" strokeWidth="1.8" strokeLinecap="round" />
      <Txt x={56} y={91} size={11} tone="espresso">Membership</Txt>
      <Pill x={130} y={78} w={70} h={17} size={9} tone="bad">pre-ticked</Pill>
      <Txt x={324} y={91} size={11} bold tone="bad" anchor="end">+ ₹99</Txt>

      <Txt x={36} y={124} size={11} tone="espresso">Handling fee</Txt>
      <Pill x={118} y={111} w={112} h={17} size={9} tone="bad">only shown at checkout</Pill>
      <Txt x={324} y={124} size={11} bold tone="bad" anchor="end">+ ₹15</Txt>
      <Line x1={36} y1={142} x2={324} y2={142} tone="mocha2" width={1} />

      <Txt x={36} y={172} size={13} bold tone="espresso">Total</Txt>
      <Txt x={324} y={172} size={15} bold tone="espresso" anchor="end">₹313</Txt>

      <Pill x={20} y={202} w={320} h={24} size={10.5} tone="bad">You pay 57% more than the ₹199 you chose</Pill>
      <Txt x={180} y={246} size={10} anchor="middle">A dark pattern: India&apos;s consumer rules ban it</Txt>
    </Figure>
  );
}
