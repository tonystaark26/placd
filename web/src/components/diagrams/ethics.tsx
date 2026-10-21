// Pictures for the Business Ethics cards. Every number comes from that card's everyday example.

import { Arrow, Box, Figure, Heading, Line, Pill, Txt } from "./parts";

// ethics-01 ────────────────────────────────────────────────────────────
export function EthicsChoices() {
  return (
    <Figure
      h={232}
      label="A Kolkata sweet shop sells ₹40 rosogollas. The ethical choices: fresh chhena, honest weights, fair pay for the karigar, no reused syrup. The shortcut of stale chhena saves about ₹3 a piece, but customers who find out stop coming, so it costs far more than it saves."
    >
      <Heading>A ₹40 rosogolla, two ways to make it</Heading>
      <Box x={4} y={28} w={172} h={110} style="good" title="The ethical way" lines={["Fresh chhena", "Honest weights", "Fair pay for the karigar", "No reused syrup"]} />
      <Box x={184} y={28} w={172} h={110} style="bad" title="The shortcut" lines={["Stale chhena,", "“no one will know”", "", "Saves about ₹3 a piece"]} />
      <Arrow x1={90} y1={142} x2={90} y2={158} tone="good" />
      <Arrow x1={270} y1={142} x2={270} y2={158} tone="bad" />
      <Pill x={22} y={162} w={136} h={22} tone="good" size={10}>Trust: they come back</Pill>
      <Pill x={196} y={162} w={148} h={22} tone="bad" size={10}>Found out: they stop coming</Pill>
      <Txt x={180} y={216} size={10.5} bold tone="coffee" anchor="middle">Ethics = right and wrong, applied to business choices</Txt>
    </Figure>
  );
}

// ethics-02 ────────────────────────────────────────────────────────────
export function EthicsVsLaw() {
  return (
    <Figure
      h={240}
      label="Law and ethics give four combinations. Legal and ethical: paying fair wages on time. Legal but unethical: raising a student's PG rent from ₹6,000 to ₹9,000 mid-term during exams, if the contract allows it. Illegal but arguably ethical: a whistleblower leaking proof of fraud. Illegal and unethical: bribery."
    >
      <Txt x={142} y={14} size={9} bold caps tone="mocha2" anchor="middle">ETHICAL</Txt>
      <Txt x={286} y={14} size={9} bold caps tone="mocha2" anchor="middle">UNETHICAL</Txt>
      <Txt x={4} y={60} size={9} bold caps tone="mocha2">LEGAL</Txt>
      <Txt x={4} y={150} size={9} bold caps tone="mocha2">ILLEGAL</Txt>
      <Box x={72} y={22} w={140} h={84} style="good" title="Aim here" lines={["Paying fair wages", "on time"]} />
      <rect x={218} y={22} width={138} height={84} rx="10" className="fill-latte stroke-crema-line" />
      <Txt x={228} y={40} size={11} bold tone="coffee">The grey zone</Txt>
      <Txt x={228} y={56} size={9.5} tone="mocha">PG rent ₹6,000 →</Txt>
      <Txt x={228} y={70} size={9.5} tone="mocha">₹9,000 mid-term, in</Txt>
      <Txt x={228} y={84} size={9.5} tone="mocha">exam month: allowed,</Txt>
      <Txt x={228} y={98} size={9.5} bold tone="bad">but not right</Txt>
      <Box x={72} y={112} w={140} h={84} style="warm" title="Rare, contested" lines={["A whistleblower", "leaking proof", "of fraud"]} />
      <Box x={218} y={112} w={138} h={84} style="bad" title="Never" lines={["Bribery,", "accounting fraud"]} />
      <Txt x={180} y={222} size={10.5} bold tone="coffee" anchor="middle">Law is the floor; ethics asks what is right</Txt>
    </Figure>
  );
}

// ethics-03 ────────────────────────────────────────────────────────────
export function EthicsPays() {
  const base = 120;
  const k = 0.042;
  return (
    <Figure
      h={236}
      label="Two phone-repair shops. Shop A charges an honest ₹1,200 for a screen. Shop B charges ₹2,000 and fits a used part, making ₹800 more on the first job. Over a year, Shop A gets repeat visits, referrals and good reviews and earns far more; Shop B loses its customers."
    >
      <Heading>The first screen repair</Heading>
      <rect x={50} y={base - 1200 * k} width={70} height={1200 * k} rx="6" className="fill-good" />
      <rect x={150} y={base - 2000 * k} width={70} height={2000 * k} rx="6" className="fill-bad" />
      <Txt x={85} y={base - 1200 * k - 6} size={11} bold tone="espresso" anchor="middle">₹1,200</Txt>
      <Txt x={185} y={base - 2000 * k - 6} size={11} bold tone="espresso" anchor="middle">₹2,000</Txt>
      <Line x1={30} y1={base} x2={240} y2={base} tone="mocha2" width={1} />
      <Txt x={85} y={base + 14} size={9.5} tone="mocha" anchor="middle">Shop A, honest</Txt>
      <Txt x={185} y={base + 14} size={9.5} tone="mocha" anchor="middle">Shop B, used part</Txt>
      <Box x={252} y={40} w={104} h={48} style="faded" title="+₹800" lines={["for Shop B, once"]} />
      <Line x1={4} y1={146} x2={356} y2={146} tone="line" width={1} dash />
      <Txt x={4} y={164} size={9} bold caps tone="mocha2">OVER A YEAR</Txt>
      <Box x={4} y={170} w={172} h={52} style="good" title="Shop A ↗" lines={["repeat visits, referrals"]} />
      <Box x={184} y={170} w={172} h={52} style="bad" title="Shop B ↘" lines={["customers don't return"]} />
    </Figure>
  );
}

// ethics-04 ────────────────────────────────────────────────────────────
export function DilemmaTests() {
  const tests = [
    { t: "Legal?", a: "Keeping it is taking her money" },
    { t: "Fair?", a: "No, she doesn't know" },
    { t: "Newspaper?", a: "“Office keeps widow's extra ₹500”" },
    { t: "Mirror?", a: "You'd know" },
  ];
  return (
    <Figure
      h={236}
      label="An elderly widow pays ₹500 for a service, unaware a second ₹500 note is stuck behind the first. The four tests: legal? keeping it is taking her money. Fair? No. Newspaper test? 'Office keeps widow's extra ₹500' is not a story you want. Mirror test? You'd know. So you return the ₹500."
    >
      <Heading>A second ₹500 note stuck to the first</Heading>
      {tests.map((r, i) => {
        const y = 28 + i * 38;
        return (
          <g key={r.t}>
            <rect x={4} y={y} width={352} height={32} rx="10" className="fill-foam stroke-line" />
            <Txt x={14} y={y + 20} size={11} bold tone="espresso">{r.t}</Txt>
            <Txt x={102} y={y + 20} size={10} tone="mocha">{r.a}</Txt>
            <Txt x={342} y={y + 21} size={13} bold tone="bad" anchor="end">✗</Txt>
          </g>
        );
      })}
      <rect x={80} y={186} width={200} height={38} rx="10" className="fill-good-bg" />
      <Txt x={180} y={210} size={11.5} bold tone="good" anchor="middle">Return the ₹500</Txt>
    </Figure>
  );
}

// ethics-05 ────────────────────────────────────────────────────────────
export function Utilitarianism() {
  return (
    <Figure
      h={236}
      label="A canteen can spend ₹50,000 on an AC that 20 staff enjoy, or water purifiers used by 2,000 students. A utilitarian picks the purifiers: far more people benefit. But closing the only vegetarian counter, used by 150, for a cheaper counter for 1,850 shows the weakness: the numbers can ignore a minority."
    >
      <Heading>₹50,000 to spend: who benefits?</Heading>
      <Box x={4} y={28} w={172} h={64} style="faded" title="AC for the staff room" lines={["20 people benefit"]} />
      <Box x={184} y={28} w={172} h={64} style="good" title="Water purifiers ✓" lines={["2,000 students benefit"]} />
      <rect x={14} y={78} width={1.6} height={8} className="fill-mocha-2" />
      <rect x={194} y={76} width={152} height={10} rx="3" className="fill-good" />
      <Txt x={180} y={116} size={10.5} bold tone="coffee" anchor="middle">The greatest good for the greatest number</Txt>
      <Line x1={4} y1={132} x2={356} y2={132} tone="line" width={1} dash />
      <Txt x={4} y={152} size={9} bold caps tone="bad">THE WEAK SPOT</Txt>
      <Box x={4} y={160} w={352} h={62} style="warm" title="Close the only veg counter (150) for 1,850 others?" lines={["The numbers say yes, but it ignores the minority's needs.", "Check outcomes against rights and fairness."]} />
    </Figure>
  );
}

// ethics-06 ────────────────────────────────────────────────────────────
export function RightsJustice() {
  const lenses = [
    { t: "Kant (duty)", q: ["Are riders used", "merely as a means?"] },
    { t: "Rights", q: ["Fair pay for", "time worked?"] },
    { t: "Rawls (justice)", q: ["Fair if you didn't", "know your role?"] },
  ];
  return (
    <Figure
      h={232}
      label="A delivery app could save ₹2 per order by not paying riders for waiting time. A spreadsheet might say customers benefit. Kant asks whether riders are being used merely as a means; rights ethics asks whether they're owed fair pay for time worked; Rawls asks whether you'd accept the rule without knowing if you'd be the customer or the rider."
    >
      <rect x={60} y={6} width={240} height={46} rx="10" className="fill-coffee" />
      <Txt x={180} y={25} size={11} bold tone="cream" anchor="middle">Save ₹2 an order by not paying</Txt>
      <Txt x={180} y={41} size={10} tone="crema" anchor="middle">riders for waiting time?</Txt>
      {lenses.map((l, i) => (
        <g key={l.t}>
          <Arrow x1={180} y1={54} x2={62 + i * 118} y2={78} tone="mocha2" />
          <Box x={4 + i * 118} y={82} w={114} h={74} style="warm" title={l.t} lines={l.q} titleSize={10.5} />
        </g>
      ))}
      <Txt x={180} y={186} size={10} tone="mocha" anchor="middle">A spreadsheet looks only at outcomes.</Txt>
      <Txt x={180} y={204} size={10.5} bold tone="coffee" anchor="middle">These lenses ask: is it fair, and is it right?</Txt>
    </Figure>
  );
}

// ethics-07 ────────────────────────────────────────────────────────────
export function Trusteeship() {
  return (
    <Figure
      h={226}
      label="A Gariahat shopkeeper keeps ₹20,000 aside each Puja season to pay school fees for his two helpers' children, not because of a law or for publicity, but because he sees himself as a trustee: the business grew with them, so it should grow them too."
    >
      <Heading>The Gariahat shopkeeper</Heading>
      <Box x={4} y={30} w={140} h={60} style="warm" title="Puja season" lines={["good earnings"]} />
      <Arrow x1={146} y1={60} x2={210} y2={60} tone="coffee" width={2} />
      <Txt x={178} y={52} size={10} bold tone="coffee" anchor="middle">₹20,000</Txt>
      <Box x={214} y={30} w={142} h={60} style="good" title="School fees" lines={["for 2 helpers' children"]} />
      <Txt x={180} y={122} size={10.5} italic tone="mocha" anchor="middle">“The business grew with them;</Txt>
      <Txt x={180} y={138} size={10.5} italic tone="mocha" anchor="middle">it should grow them too.”</Txt>
      <Pill x={70} y={156} w={220} h={24} tone="coffee" size={10.5}>Trustee, not just owner</Pill>
      <Txt x={180} y={206} size={10} tone="mocha2" anchor="middle">No law asked him to. No one is watching.</Txt>
    </Figure>
  );
}

// ethics-08 ────────────────────────────────────────────────────────────
export function KohlbergStages() {
  const stages = [
    { n: 1, q: "Don't get caught" },
    { n: 2, q: "Tell, for a discount" },
    { n: 3, q: "" },
    { n: 4, q: "Rules are rules" },
    { n: 5, q: "" },
    { n: 6, q: "It's simply right" },
  ];
  const base = 178;
  return (
    <Figure
      h={236}
      label="The canteen machine undercharges every lunch by ₹30. Four colleagues reason at different Kohlberg stages. Stage 1: don't tell, but don't get caught. Stage 2: tell only for a discount. Stage 4: rules are rules, report it. Stage 6: the canteen worker will be blamed, so telling is simply right."
    >
      <Heading>The machine undercharges ₹30 a lunch</Heading>
      {stages.map((s, i) => {
        const h = 28 + i * 20;
        const x = 6 + i * 58;
        const said = s.q !== "";
        const top = s.n === 6;
        return (
          <g key={s.n}>
            <rect x={x} y={base - h} width={54} height={h} rx="6" className={top ? "fill-coffee" : said ? "fill-latte stroke-crema-line" : "fill-cream stroke-line"} />
            <Txt x={x + 27} y={base - h + 16} size={11} bold tone={top ? "cream" : "espresso"} anchor="middle">{`${s.n}`}</Txt>
          </g>
        );
      })}
      <Line x1={6} y1={base} x2={354} y2={base} tone="mocha2" width={1} />
      {stages.filter((s) => s.q).map((s) => {
        const i = s.n - 1;
        const x = 6 + i * 58 + 27;
        const y = base - (28 + i * 20) - 8;
        return (
          <Txt key={s.n} x={s.n === 1 ? 6 : x} y={y} size={8.5} italic tone="mocha" anchor={s.n === 1 ? "start" : "middle"}>{s.q}</Txt>
        );
      })}
      <Txt x={64} y={196} size={9} bold caps tone="mocha2" anchor="middle">ABOUT ME</Txt>
      <Txt x={180} y={196} size={9} bold caps tone="mocha2" anchor="middle">ABOUT RULES</Txt>
      <Txt x={296} y={196} size={9} bold caps tone="mocha2" anchor="middle">ABOUT PRINCIPLES</Txt>
      <Txt x={180} y={222} size={10} bold tone="coffee" anchor="middle">Same ₹30 problem, four levels of moral reasoning</Txt>
    </Figure>
  );
}

// ethics-09 ────────────────────────────────────────────────────────────
export function SmallActs() {
  return (
    <Figure
      h={226}
      label="A trainee claims ₹1,200 for a 'client lunch' that was a weekend dinner with friends, and runs a mouse-jiggler app to look active for 2 hours a day. Each act seems small, but together they are theft and misuse of company time, about 44 hours a month over 22 working days."
    >
      <Heading>Small acts, one trainee</Heading>
      <Box x={4} y={28} w={172} h={78} style="bad" title="₹1,200 “client lunch”" lines={["actually a weekend", "dinner with friends", "= expense theft"]} />
      <Box x={184} y={28} w={172} h={78} style="bad" title="Mouse jiggler" lines={["looks “active” 2 hours", "a day while elsewhere", "= deception"]} />
      <Txt x={270} y={128} size={10} tone="mocha" anchor="middle">2 h × 22 working days</Txt>
      <Pill x={212} y={136} w={116} h={22} tone="bad" size={10}>≈ 44 hours a month</Pill>
      <Txt x={90} y={128} size={10} tone="mocha" anchor="middle">every month it continues</Txt>
      <Pill x={32} y={136} w={116} h={22} tone="bad" size={10}>trust erodes</Pill>
      <Txt x={180} y={196} size={10.5} bold tone="coffee" anchor="middle">Each act seems small. Together they break trust.</Txt>
    </Figure>
  );
}

// ethics-10 ────────────────────────────────────────────────────────────
export function ConflictOfInterest() {
  const steps = ["Disclose", "Step out", "Others decide"];
  return (
    <Figure
      h={232}
      label="The fest needs a sound system. The treasurer's cousin quotes ₹45,000; another vendor quotes ₹38,000. Quietly picking the cousin costs the fest ₹7,000. The ethical route: disclose the relationship, step out, and let the committee decide on quality and price."
    >
      <Heading>{"Fest sound system: the treasurer's cousin bids"}</Heading>
      <Box x={4} y={28} w={172} h={56} style="bad" title="Cousin: ₹45,000" lines={["picked quietly"]} />
      <Box x={184} y={28} w={172} h={56} title="Other vendor: ₹38,000" lines={["same quality"]} />
      <Pill x={110} y={92} w={140} h={22} tone="bad" size={10}>Hidden cost: ₹7,000</Pill>
      <Line x1={4} y1={128} x2={356} y2={128} tone="line" width={1} dash />
      <Txt x={4} y={148} size={9} bold caps tone="good">THE ETHICAL ROUTE</Txt>
      {steps.map((s, i) => (
        <g key={s}>
          <Box x={4 + i * 120} y={156} w={112} h={38} style="good" lines={[s]} />
          {i < 2 && <Arrow x1={117 + i * 120} y1={175} x2={123 + i * 120} y2={175} tone="good" />}
        </g>
      ))}
      <Txt x={180} y={220} size={10} bold tone="coffee" anchor="middle">Having a conflict is human. Hiding it is the breach.</Txt>
    </Figure>
  );
}

// ethics-11 ────────────────────────────────────────────────────────────
export function WhistleSteps() {
  return (
    <Figure
      h={232}
      label="You see a supervisor relabelling expired ₹60 juice packs with new dates. Step 1: report through the company's vigil or ethics channel, with photos and batch numbers. Step 2: if nothing happens and people may get sick, report to the FSSAI."
    >
      <rect x={60} y={6} width={240} height={44} rx="10" className="fill-bad-bg" />
      <Txt x={180} y={25} size={11} bold tone="bad" anchor="middle">Expired ₹60 juice packs</Txt>
      <Txt x={180} y={41} size={10} tone="mocha" anchor="middle">being relabelled with new dates</Txt>
      <Arrow x1={180} y1={52} x2={180} y2={66} tone="coffee" />
      <Box x={4} y={70} w={352} h={52} style="warm" title="Step 1: inside" lines={["Vigil or ethics channel, with photos and batch numbers"]} />
      <Txt x={180} y={140} size={9.5} italic tone="mocha" anchor="middle">nothing happens, and people may get sick</Txt>
      <Arrow x1={180} y1={146} x2={180} y2={160} tone="coffee" />
      <Box x={4} y={164} w={352} h={52} style="good" title="Step 2: outside" lines={["Report to the regulator (FSSAI)"]} />
      <Txt x={180} y={230} size={9} tone="mocha2" anchor="middle">Companies Act Sec 177: listed firms must have a vigil mechanism</Txt>
    </Figure>
  );
}

// ethics-12 ────────────────────────────────────────────────────────────
export function GovernanceChecks() {
  const good = ["2 signatures above ₹5,000", "Monthly accounts to members", "Faculty adviser reviews books", "Committee can question"];
  return (
    <Figure
      h={232}
      label="Weak governance: a college club treasurer alone controls a ₹2 lakh fest budget with no receipts or review. Good governance: two signatures for payments above ₹5,000, monthly accounts shared with members, a faculty adviser reviewing the books, and an elected committee that can question the treasurer."
    >
      <Heading>The ₹2 lakh fest budget</Heading>
      <Box x={4} y={28} w={140} h={150} style="bad" title="Weak" lines={["Treasurer alone", "No receipts", "No review", "", "Nobody can check"]} />
      <rect x={152} y={28} width={204} height={150} rx="10" className="fill-good-bg" />
      <Txt x={162} y={46} size={11.5} bold tone="good">Good governance</Txt>
      {good.map((g, i) => (
        <g key={g}>
          <Txt x={162} y={72 + i * 26} size={11} bold tone="good">✓</Txt>
          <Txt x={178} y={72 + i * 26} size={9.5} tone="mocha">{g}</Txt>
        </g>
      ))}
      <Txt x={180} y={204} size={10.5} bold tone="coffee" anchor="middle">Accountability, transparency, fairness, responsibility</Txt>
    </Figure>
  );
}

// ethics-13 ────────────────────────────────────────────────────────────
export function TwoViews() {
  const groups = ["Customers' health", "Workers' pride", "Distributors", "Brand value"];
  return (
    <Figure
      h={232}
      label="A biscuit unit can add ₹4 lakh a year in profit by switching to cheaper, lower-quality oil. The shareholder view says do it, if it's legal and sales hold. The stakeholder view weighs customers' health, workers' pride, distributors' reputation and long-term brand value, which may cost more than ₹4 lakh."
    >
      <rect x={70} y={6} width={220} height={40} rx="10" className="fill-coffee" />
      <Txt x={180} y={24} size={11} bold tone="cream" anchor="middle">Cheaper oil: +₹4 lakh a year</Txt>
      <Txt x={180} y={38} size={9.5} tone="crema" anchor="middle">Kolkata biscuit unit</Txt>
      <Box x={4} y={60} w={140} h={92} style="faded" title="Shareholder view" lines={["Legal? Sales hold?", "Then do it.", "", "(Friedman)"]} />
      <rect x={152} y={60} width={204} height={92} rx="10" className="fill-good-bg" />
      <Txt x={162} y={78} size={11.5} bold tone="good">Stakeholder view</Txt>
      {groups.map((g, i) => (
        <Pill key={g} x={162 + (i % 2) * 96} y={88 + Math.floor(i / 2) * 28} w={90} h={20} tone="crema" size={8.5}>{g}</Pill>
      ))}
      <Txt x={180} y={180} size={10} tone="mocha" anchor="middle">The ₹4 lakh may cost more in lost trust</Txt>
      <Txt x={180} y={206} size={10.5} bold tone="coffee" anchor="middle">Profit, earned with every stakeholder on side</Txt>
    </Figure>
  );
}

// ethics-14 ────────────────────────────────────────────────────────────
export function CarrollPyramid() {
  const layers = [
    { t: "Philanthropic", ex: "school uniforms", w: 120 },
    { t: "Ethical", ex: "above-minimum pay, ₹5,000 advances", w: 210 },
    { t: "Legal", ex: "labour and fire-safety rules", w: 280 },
    { t: "Economic", ex: "workers paid on time, profitable", w: 344 },
  ];
  return (
    <Figure
      h={232}
      label="Carroll's CSR pyramid for a ₹2 crore-revenue garment unit. Economic, at the base: paying workers on time and staying profitable. Legal: following labour and fire-safety rules. Ethical: above-minimum pay and interest-free ₹5,000 festival advances. Philanthropic, at the top: school uniforms for a local school."
    >
      {layers.map((l, i) => {
        const y = 8 + i * 48;
        const x = 180 - l.w / 2;
        const top = i === 0;
        const base = i === 3;
        return (
          <g key={l.t}>
            <rect x={x} y={y} width={l.w} height={42} rx="8" className={base ? "fill-coffee" : top ? "fill-crema" : "fill-latte stroke-crema-line"} />
            <Txt x={180} y={y + 18} size={11} bold tone={base ? "cream" : "espresso"} anchor="middle">{l.t}</Txt>
            <Txt x={180} y={y + 33} size={9} tone={base ? "crema" : "mocha"} anchor="middle">{l.ex}</Txt>
          </g>
        );
      })}
      <Txt x={180} y={216} size={10} bold tone="coffee" anchor="middle">Build from the base. Charity alone at the top is just PR.</Txt>
    </Figure>
  );
}

// ethics-15 ────────────────────────────────────────────────────────────
export function CsrCalculation() {
  const profits = [40, 50, 60];
  const base = 116;
  return (
    <Figure
      h={236}
      label="Net profits of ₹40, ₹50 and ₹60 crore over the last three years average ₹50 crore, so the minimum CSR spend is 2% of ₹50 crore, ₹1 crore. If the company spends ₹70 lakh on an ongoing 3-year school project, the unspent ₹30 lakh goes to an Unspent CSR Account, to be used within three years."
    >
      <Heading>Section 135: the 2% rule</Heading>
      {profits.map((p, i) => (
        <g key={p}>
          <rect x={16 + i * 46} y={base - p * 1.3} width={36} height={p * 1.3} rx="5" className="fill-latte stroke-crema-line" />
          <Txt x={34 + i * 46} y={base - 8} size={9} bold tone="espresso" anchor="middle">{`₹${p} cr`}</Txt>
          <Txt x={34 + i * 46} y={base + 13} size={9} tone="mocha2" anchor="middle">{`yr ${i + 1}`}</Txt>
        </g>
      ))}
      <Line x1={10} y1={base} x2={150} y2={base} tone="mocha2" width={1} />
      <Line x1={10} y1={base - 50 * 1.3} x2={150} y2={base - 50 * 1.3} tone="coffee" width={1.5} dash />
      <Txt x={10} y={base - 50 * 1.3 - 4} size={8.5} bold tone="coffee">avg</Txt>
      <Arrow x1={156} y1={70} x2={176} y2={70} tone="coffee" />
      <Box x={180} y={32} w={176} h={76} style="warm" title="Average: ₹50 crore" lines={["2% × ₹50 crore", "= ₹1 crore minimum"]} />
      <Line x1={4} y1={140} x2={356} y2={140} tone="line" width={1} dash />
      <rect x={4} y={152} width={352} height={16} rx="5" className="fill-latte" />
      <rect x={4} y={152} width={246} height={16} rx="5" className="fill-good" />
      <Txt x={127} y={164} size={9.5} bold tone="cream" anchor="middle">Spent ₹70 lakh on the school project</Txt>
      <Txt x={303} y={164} size={9.5} bold tone="coffee" anchor="middle">₹30 lakh left</Txt>
      <Txt x={180} y={194} size={10} tone="mocha" anchor="middle">The ₹30 lakh goes to an Unspent CSR Account,</Txt>
      <Txt x={180} y={209} size={10} tone="mocha" anchor="middle">to be used on the project within 3 years</Txt>
      <Txt x={180} y={230} size={9.5} bold tone="coffee" anchor="middle">Average of the past 3 years, not this year</Txt>
    </Figure>
  );
}
