// Pictures for the Business Law cards. Every number comes from that card's everyday example.

import { Arrow, Box, Figure, Heading, Line, Pill, Txt } from "./parts";

// law-01 ───────────────────────────────────────────────────────────────
export function AgreementVsContract() {
  const parts = [
    { x: 4, w: 70, t: "Offer" },
    { x: 92, w: 84, t: "Acceptance" },
    { x: 194, w: 76, t: "Agreement" },
  ];
  return (
    <Figure
      h={232}
      label="Offer plus acceptance makes an agreement. Add enforceability and it becomes a contract. Paying your roommate ₹200 to clean the room is a social agreement nobody will take to court. A ₹1,500-a-month cleaning service with written terms is a contract either side can enforce."
    >
      {parts.map((p, i) => (
        <g key={p.t}>
          <rect x={p.x} y={10} width={p.w} height={34} rx="10" className={i === 2 ? "fill-latte stroke-crema-line" : "fill-foam stroke-line"} />
          <Txt x={p.x + p.w / 2} y={31} size={10.5} bold tone="espresso" anchor="middle">{p.t}</Txt>
        </g>
      ))}
      <Txt x={83} y={32} size={13} bold tone="mocha2" anchor="middle">+</Txt>
      <Txt x={185} y={32} size={13} bold tone="mocha2" anchor="middle">=</Txt>
      <Txt x={279} y={32} size={13} bold tone="mocha2" anchor="middle">+</Txt>
      <Txt x={322} y={24} size={9} bold tone="coffee" anchor="middle">enforceable</Txt>
      <Txt x={322} y={37} size={9} bold tone="coffee" anchor="middle">by law</Txt>
      <Arrow x1={322} y1={46} x2={322} y2={58} tone="coffee" />
      <rect x={250} y={60} width={106} height={30} rx="10" className="fill-coffee" />
      <Txt x={303} y={80} size={11.5} bold tone="cream" anchor="middle">Contract</Txt>

      <Box x={4} y={104} w={352} h={52} style="faded" title="“I'll pay you ₹200 to clean the room”" lines={["Roommates, social promise: an agreement, not a contract"]} />
      <Box x={4} y={164} w={352} h={52} style="good" title="₹1,500 a month cleaning service, written terms" lines={["Both intend to be bound: a contract either side can enforce"]} />
      <Txt x={180} y={230} size={10} bold tone="coffee" anchor="middle">All contracts are agreements; not all agreements are contracts</Txt>
    </Figure>
  );
}

// law-02 ───────────────────────────────────────────────────────────────
export function ValidContractChecklist() {
  const items = [
    ["Offer + acceptance", "owner offers, Riya accepts"],
    ["Intention to be bound", "both expect it to count"],
    ["Lawful consideration", "₹6,000 a month for the room"],
    ["Capacity", "Riya is 21, sound mind"],
    ["Free consent", "nobody forced her"],
    ["Lawful object", "renting a room is legal"],
    ["Certainty", "room, rent, term all clear"],
  ];
  return (
    <Figure
      h={244}
      label="Riya rents a ₹6,000-a-month PG room near Salt Lake. Offer and acceptance, intention to be bound, lawful consideration, capacity, free consent, lawful object and certainty are all present, so it's a valid contract. Miss any one and it may be void, voidable or unenforceable."
    >
      <Heading>{"Riya's ₹6,000 PG room: the Section 10 check"}</Heading>
      {items.map(([t, s], i) => {
        const y = 26 + i * 28;
        return (
          <g key={t}>
            <rect x={4} y={y} width={352} height={24} rx="8" className="fill-good-bg" />
            <Txt x={16} y={y + 16} size={11} bold tone="good">✓</Txt>
            <Txt x={32} y={y + 16} size={10.5} bold tone="espresso">{t}</Txt>
            <Txt x={176} y={y + 16} size={9.5} tone="mocha">{s}</Txt>
          </g>
        );
      })}
      <Txt x={180} y={236} size={10} bold tone="coffee" anchor="middle">All ticked: a valid contract. Miss one, and it may fail.</Txt>
    </Figure>
  );
}

// law-03 ───────────────────────────────────────────────────────────────
export function OfferTypes() {
  return (
    <Figure
      h={236}
      label="A lost-dog poster in Ballygunge promises ₹2,000 to whoever returns Bruno. That's a general offer: anyone who returns him accepts by doing it. Telling only the neighbour 'I'll pay you ₹2,000 to find Bruno' is a specific offer: only the neighbour can accept."
    >
      <rect x={110} y={6} width={140} height={58} rx="8" className="fill-latte stroke-crema-line" />
      <Txt x={180} y={24} size={9} bold caps tone="bad" anchor="middle">LOST DOG</Txt>
      <Txt x={180} y={42} size={13} bold tone="espresso" anchor="middle">₹2,000 reward</Txt>
      <Txt x={180} y={56} size={9.5} tone="mocha" anchor="middle">to whoever returns Bruno</Txt>
      <Arrow x1={150} y1={66} x2={92} y2={86} tone="mocha2" />
      <Arrow x1={210} y1={66} x2={268} y2={86} tone="mocha2" />
      <Box x={4} y={90} w={172} h={86} style="good" title="General offer" lines={["Made to the whole world.", "Anyone who returns Bruno", "accepts by doing it, and", "gets the ₹2,000"]} />
      <Box x={184} y={90} w={172} h={86} style="warm" title="Specific offer" lines={["“I'll pay YOU ₹2,000", "to find Bruno.”", "Only the neighbour", "can accept"]} />
      <Txt x={180} y={198} size={10} tone="mocha" anchor="middle">{"Carlill v Carbolic Smoke Ball (1893): a public ad can be an offer"}</Txt>
      <Txt x={180} y={216} size={10} bold tone="coffee" anchor="middle">accepted by performance, with no need to write back</Txt>
    </Figure>
  );
}

// law-04 ───────────────────────────────────────────────────────────────
export function InvitationToOffer() {
  const steps = [
    { t: "Price tag ₹899", s: "invitation to offer", style: "warm" as const },
    { t: "You at counter", s: "you make the offer", style: "plain" as const },
    { t: "Cashier bills", s: "shop accepts", style: "good" as const },
  ];
  return (
    <Figure
      h={234}
      label="A kurta tagged ₹899 in a Gariahat shop is an invitation to offer. You make the offer at the counter, and the shop accepts by billing it. 'Lowest price for my scooter is ₹45,000' is only information, while 'I offer to sell you my scooter for ₹45,000' is an offer."
    >
      <Heading>Who actually makes the offer?</Heading>
      {steps.map((s, i) => (
        <g key={s.t}>
          <Box x={4 + i * 120} y={28} w={112} h={52} style={s.style} title={s.t} lines={[s.s]} titleSize={10.5} />
          {i < 2 && <Arrow x1={117 + i * 120} y1={54} x2={123 + i * 120} y2={54} tone="coffee" />}
        </g>
      ))}
      <Pill x={110} y={88} w={140} h={20} tone="coffee" size={9.5}>= contract for ₹899</Pill>
      <Line x1={4} y1={122} x2={356} y2={122} tone="line" width={1} dash />
      <Box x={4} y={134} w={172} h={60} style="faded" title="Just information" lines={["“Lowest price for my", "scooter is ₹45,000”"]} />
      <Box x={184} y={134} w={172} h={60} style="good" title="An offer" lines={["“I offer to sell you my", "scooter for ₹45,000”"]} />
      <Txt x={180} y={216} size={10} bold tone="coffee" anchor="middle">Harvey v Facey: a price statement is not an offer</Txt>
    </Figure>
  );
}

// law-05 ───────────────────────────────────────────────────────────────
export function AcceptanceRules() {
  const replies = [
    { r: "Says nothing", v: "No acceptance", note: "silence isn't a yes", style: "faded" as const },
    { r: "“OK, renew at ₹1,499”", v: "Accepted", note: "clear, communicated", style: "good" as const },
    { r: "“Renew, but at ₹999”", v: "Counter offer", note: "changes the terms", style: "bad" as const },
  ];
  return (
    <Figure
      h={234}
      label="A gym emails that your ₹999 plan will auto-renew at ₹1,499 unless you reply. If you say nothing, that's no acceptance, because silence isn't a yes. 'OK, renew at ₹1,499' is acceptance. 'Renew, but at ₹999' is a counter offer."
    >
      <rect x={40} y={6} width={280} height={44} rx="10" className="fill-coffee" />
      <Txt x={180} y={24} size={10.5} bold tone="cream" anchor="middle">Gym: “Your ₹999 plan renews at ₹1,499”</Txt>
      <Txt x={180} y={40} size={9.5} tone="crema" anchor="middle">“…unless you reply”</Txt>
      {replies.map((r, i) => {
        const y = 62 + i * 52;
        return (
          <g key={r.v}>
            <Box x={4} y={y} w={170} h={44} lines={[r.r]} />
            <Arrow x1={176} y1={y + 22} x2={190} y2={y + 22} tone="mocha2" />
            <Box x={192} y={y} w={164} h={44} style={r.style} title={r.v} lines={[r.note]} titleSize={11} />
          </g>
        );
      })}
      <Txt x={180} y={228} size={10} bold tone="coffee" anchor="middle">Acceptance must be absolute and communicated</Txt>
    </Figure>
  );
}

// law-06 ───────────────────────────────────────────────────────────────
export function ConsiderationRules() {
  const rows = [
    { t: "Cycle worth ₹4,000 sold for ₹1,500", v: "Valid", why: "need not be adequate", style: "good" as const },
    { t: "Uncle's registered letter: ₹60,000 fees", v: "Enforceable", why: "love and affection", style: "good" as const },
    { t: "Neighbour's oral “I'll pay”, nothing back", v: "Not enforceable", why: "no consideration", style: "bad" as const },
  ];
  return (
    <Figure
      h={232}
      label="Consideration need not be adequate: selling a ₹4,000 cycle for ₹1,500 is valid. An uncle's registered letter promising ₹60,000 of fees out of love is enforceable under Section 25. An oral promise to pay with nothing in return is not enforceable."
    >
      <Heading>Something in return?</Heading>
      {rows.map((r, i) => {
        const y = 28 + i * 58;
        return (
          <g key={r.t}>
            <rect x={4} y={y} width={352} height={50} rx="10" className="fill-foam stroke-line" />
            <Txt x={14} y={y + 20} size={10.5} bold tone="espresso">{r.t}</Txt>
            <Pill x={14} y={y + 27} w={104} h={18} tone={r.style === "good" ? "good" : "bad"} size={9.5}>{r.v}</Pill>
            <Txt x={128} y={y + 40} size={9.5} tone="mocha">{r.why}</Txt>
          </g>
        );
      })}
      <Txt x={180} y={216} size={10} bold tone="coffee" anchor="middle">In India it can come from the promisee or anyone else</Txt>
      <Txt x={180} y={229} size={9} tone="mocha2" anchor="middle">Chinnaya v Ramayya (1882)</Txt>
    </Figure>
  );
}

// law-07 ───────────────────────────────────────────────────────────────
export function MinorsCapacity() {
  return (
    <Figure
      h={226}
      label="A 17-year-old buys a ₹25,000 gaming laptop on a pay-later app and stops paying. The agreement is void, so the app can't enforce it. If a shop sold him ₹800 of school uniforms on credit, it could recover a reasonable price from his property, because those are necessaries."
    >
      <rect x={130} y={6} width={100} height={40} rx="20" className="fill-coffee" />
      <Txt x={180} y={24} size={11.5} bold tone="cream" anchor="middle">Age 17</Txt>
      <Txt x={180} y={38} size={9} tone="crema" anchor="middle">a minor</Txt>
      <Arrow x1={150} y1={48} x2={92} y2={70} tone="mocha2" />
      <Arrow x1={210} y1={48} x2={268} y2={70} tone="mocha2" />
      <Box x={4} y={74} w={172} h={100} style="bad" title="₹25,000 gaming laptop" lines={["on a pay-later app", "", "Void from the start:", "the app can't make", "him pay"]} />
      <Box x={184} y={74} w={172} h={100} style="warm" title="₹800 school uniforms" lines={["on credit (necessaries)", "", "Reasonable price can be", "recovered from his", "property, not from him"]} />
      <Txt x={180} y={196} size={10} bold tone="coffee" anchor="middle">{"Mohori Bibee (1903): a minor's agreement is void"}</Txt>
      <Txt x={180} y={212} size={9.5} tone="mocha2" anchor="middle">{"and he can't ratify it on turning 18"}</Txt>
    </Figure>
  );
}

// law-08 ───────────────────────────────────────────────────────────────
export function CoercionVsInfluence() {
  return (
    <Figure
      h={232}
      label="A landlord says pay ₹15,000 extra or I'll lock your things in the room: that's coercion, a threat. A college warden pressures a dependent student into renting his relative's flat at ₹12,000, twice the market rate: that's undue influence, misuse of a position of trust. Both make the contract voidable by the victim."
    >
      <Heading>Was the consent free?</Heading>
      <Box x={4} y={28} w={172} h={118} style="bad" title="Coercion" lines={["Landlord: “Pay ₹15,000", "extra or I lock your", "things in the room”", "", "a threat; anyone can do it"]} />
      <Box x={184} y={28} w={172} h={118} style="warm" title="Undue influence" lines={["Warden pushes a student", "into his relative's flat", "at ₹12,000 (2× market)", "", "misuse of trust or power"]} />
      <Arrow x1={90} y1={150} x2={160} y2={170} tone="coffee" />
      <Arrow x1={270} y1={150} x2={200} y2={170} tone="coffee" />
      <rect x={100} y={172} width={160} height={40} rx="10" className="fill-coffee" />
      <Txt x={180} y={190} size={11.5} bold tone="cream" anchor="middle">Voidable</Txt>
      <Txt x={180} y={205} size={9} tone="crema" anchor="middle">{"at the victim's choice"}</Txt>
    </Figure>
  );
}

// law-09 ───────────────────────────────────────────────────────────────
export function ContractStrength() {
  const rows = [
    { n: "Valid", ex: "₹3,000 tuition deal with a junior", w: 100, tone: "fill-good" },
    { n: "Voidable", ex: "₹20,000 bike, accident hidden", w: 76, tone: "fill-coffee" },
    { n: "Unenforceable", ex: "₹8 lakh flat deal, not yet stamped", w: 54, tone: "fill-mocha" },
    { n: "Void", ex: "₹500 bet on a cricket match", w: 8, tone: "fill-mocha-2" },
    { n: "Illegal", ex: "₹10,000 for a fake certificate", w: 8, tone: "fill-bad" },
  ];
  return (
    <Figure
      h={236}
      label="Contracts by legal strength. Valid: a ₹3,000 tuition deal binds fully. Voidable: a ₹20,000 bike sale with a hidden accident binds until the buyer cancels. Unenforceable: an unstamped ₹8 lakh flat deal can't be enforced until stamped. Void: a ₹500 bet has no effect. Illegal: paying ₹10,000 for a fake certificate is void and taints related deals."
    >
      <Heading>How much legal force?</Heading>
      {rows.map((r, i) => {
        const y = 30 + i * 38;
        return (
          <g key={r.n}>
            <Txt x={4} y={y + 13} size={10.5} bold tone="espresso">{r.n}</Txt>
            <Txt x={4} y={y + 27} size={9} tone="mocha">{r.ex}</Txt>
            <rect x={200} y={y + 4} width={150} height={20} rx="6" className="fill-latte" />
            <rect x={200} y={y + 4} width={1.5 * r.w} height={20} rx="6" className={r.tone} />
          </g>
        );
      })}
      <Txt x={200} y={226} size={9} tone="mocha2">none</Txt>
      <Txt x={350} y={226} size={9} tone="mocha2" anchor="end">binds fully</Txt>
    </Figure>
  );
}

// law-10 ───────────────────────────────────────────────────────────────
export function PufferyVsClaim() {
  return (
    <Figure
      h={226}
      label="'The city's best faculty' is puffery, vague praise nobody takes literally. '100% selection guaranteed, or full ₹45,000 refund' is a factual promise that must be true. If a student isn't selected and the centre won't refund, it's a misleading ad and a broken promise."
    >
      <Heading>Two coaching-centre ads</Heading>
      <Box x={4} y={28} w={172} h={110} style="faded" title="Puffery" lines={["“The city's best", "faculty”", "", "vague, subjective:", "no one takes it literally"]} />
      <Box x={184} y={28} w={172} h={110} style="bad" title="Factual claim" lines={["“100% selection, or full", "₹45,000 refund”", "", "specific, checkable:", "must be true and kept"]} />
      <Pill x={40} y={148} w={100} h={22} tone="crema" size={10}>Generally fine</Pill>
      <Pill x={208} y={148} w={124} h={22} tone="bad" size={10}>Needs proof on file</Pill>
      <Txt x={180} y={198} size={10} tone="mocha" anchor="middle">Red Bull settled for $13 million over “gives you wings”</Txt>
      <Txt x={180} y={214} size={10} bold tone="coffee" anchor="middle">The test: what would a reasonable buyer believe?</Txt>
    </Figure>
  );
}

// law-11 ───────────────────────────────────────────────────────────────
export function BreachTimeline() {
  return (
    <Figure
      h={234}
      label="Anticipatory breach: on 1 March Peter agrees to sell John his guitar for ₹5,000 on 10 March, but sells it to Oliver on 7 March, so John can sue at once. Actual breach: a tailor promises a ₹12,000 sherwani by 15 December for a wedding on the 16th, and fails to deliver on the 15th."
    >
      <Txt x={4} y={18} size={9} bold caps tone="bad">ANTICIPATORY: BEFORE THE DUE DATE</Txt>
      <Line x1={20} y1={60} x2={340} y2={60} tone="mocha2" width={1.5} />
      {[
        { x: 40, d: "1 Mar", t: "Deal: guitar", t2: "for ₹5,000", tone: "mocha2" as const },
        { x: 200, d: "7 Mar", t: "Sold to Oliver", t2: "John can sue now", tone: "bad" as const },
        { x: 320, d: "10 Mar", t: "Due date", t2: "", tone: "mocha2" as const },
      ].map((p) => (
        <g key={p.d}>
          <circle cx={p.x} cy={60} r="6" className={p.tone === "bad" ? "fill-bad" : "fill-mocha-2"} />
          <Txt x={p.x} y={44} size={10} bold tone="espresso" anchor="middle">{p.d}</Txt>
          <Txt x={p.x} y={80} size={9.5} bold tone={p.tone === "bad" ? "bad" : "mocha"} anchor="middle">{p.t}</Txt>
          {p.t2 && <Txt x={p.x} y={93} size={9} tone="mocha" anchor="middle">{p.t2}</Txt>}
        </g>
      ))}
      <Line x1={4} y1={112} x2={356} y2={112} tone="line" width={1} dash />
      <Txt x={4} y={132} size={9} bold caps tone="coffee">ACTUAL: ON THE DUE DATE</Txt>
      <Line x1={20} y1={172} x2={340} y2={172} tone="mocha2" width={1.5} />
      {[
        { x: 60, d: "Order", t: "₹12,000 sherwani", bad: false },
        { x: 220, d: "15 Dec", t: "Not delivered", bad: true },
        { x: 320, d: "16 Dec", t: "Wedding", bad: false },
      ].map((p) => (
        <g key={p.d}>
          <circle cx={p.x} cy={172} r="6" className={p.bad ? "fill-bad" : "fill-mocha-2"} />
          <Txt x={p.x} y={156} size={10} bold tone="espresso" anchor="middle">{p.d}</Txt>
          <Txt x={p.x} y={192} size={9.5} bold tone={p.bad ? "bad" : "mocha"} anchor="middle">{p.t}</Txt>
        </g>
      ))}
      <Txt x={180} y={226} size={10} bold tone="coffee" anchor="middle">{"Anticipatory breach? You needn't wait to sue."}</Txt>
    </Figure>
  );
}

// law-12 ───────────────────────────────────────────────────────────────
export function DamagesMeasure() {
  const base = 150;
  const k = 0.00095;
  return (
    <Figure
      h={232}
      label="A caterer agreed to serve a wedding for ₹80,000 and cancelled a day before. The family hired another caterer for ₹1,05,000. The extra ₹25,000 is a natural, foreseeable loss and can be claimed. A postponed honeymoon is too remote."
    >
      <Heading>The caterer cancels a day before</Heading>
      <rect x={40} y={base - 80000 * k} width={80} height={80000 * k} rx="6" className="fill-crema" />
      <rect x={160} y={base - 105000 * k} width={80} height={105000 * k} rx="6" className="fill-coffee" />
      <Txt x={80} y={base - 80000 * k - 6} size={11} bold tone="espresso" anchor="middle">₹80,000</Txt>
      <Txt x={200} y={base - 105000 * k - 6} size={11} bold tone="espresso" anchor="middle">₹1,05,000</Txt>
      <Line x1={20} y1={base} x2={260} y2={base} tone="mocha2" width={1} />
      <Txt x={80} y={base + 15} size={9.5} tone="mocha" anchor="middle">contract price</Txt>
      <Txt x={200} y={base + 15} size={9.5} tone="mocha" anchor="middle">new caterer</Txt>
      <Line x1={124} y1={base - 80000 * k} x2={252} y2={base - 80000 * k} tone="line" width={1} dash />
      <Line x1={250} y1={base - 105000 * k} x2={250} y2={base - 80000 * k} tone="good" width={2} />
      <Box x={262} y={36} w={94} h={48} style="good" title="₹25,000" lines={["can be claimed"]} />
      <Box x={4} y={176} w={352} h={44} style="faded" title="Postponed honeymoon “because of stress” ✗" lines={["too remote: not a natural or foreseen result (Sec 73)"]} />
    </Figure>
  );
}

// law-13 ───────────────────────────────────────────────────────────────
export function OtherRemedies() {
  return (
    <Figure
      h={240}
      label="Beyond damages: specific performance can force the sale of a unique ₹40 lakh flat. Quantum meruit pays a web designer about ₹18,000 for the 60% of a ₹30,000 job done before the client cancelled. An injunction can stop you joining a rival while still employed. Rescission cancels the contract, but you must return any benefit."
    >
      <Box x={4} y={6} w={172} h={70} style="warm" title="Specific performance" lines={["Seller backs out of a", "unique ₹40 lakh flat:", "court orders the sale"]} />
      <Box x={184} y={6} w={172} h={70} style="warm" title="Injunction" lines={["Stops you joining a", "rival while still", "employed"]} />
      <Box x={4} y={84} w={172} h={70} style="warm" title="Rescission" lines={["Cancel the contract,", "but give back any", "benefit received"]} />
      <rect x={184} y={84} width={172} height={70} rx="10" className="fill-good-bg" />
      <Txt x={194} y={102} size={11.5} bold tone="good">Quantum meruit</Txt>
      <Txt x={194} y={118} size={10} tone="mocha">₹30,000 job, 60% done</Txt>
      <rect x={194} y={126} width={150} height={12} rx="4" className="fill-latte" />
      <rect x={194} y={126} width={90} height={12} rx="4" className="fill-good" />
      <Txt x={194} y={150} size={9.5} bold tone="good">≈ ₹18,000 for work done</Txt>
      <Txt x={180} y={180} size={10} tone="mocha" anchor="middle">Damages are the usual remedy. These help when</Txt>
      <Txt x={180} y={195} size={10} tone="mocha" anchor="middle">{"money alone can't put things right."}</Txt>
      <Txt x={180} y={222} size={10} bold tone="coffee" anchor="middle">{"Courts won't force personal services"}</Txt>
    </Figure>
  );
}

// law-14 ───────────────────────────────────────────────────────────────
export function AgencyTriangle() {
  return (
    <Figure
      h={232}
      label="Mr Sen owns a Serampore hardware shop but lives in Kolkata. His manager Bablu, the agent, orders ₹20,000 of paint a month from a supplier in Mr Sen's name, and Mr Sen always pays. Bablu has implied authority, so this month's order binds Mr Sen too."
    >
      <rect x={110} y={8} width={140} height={46} rx="10" className="fill-coffee" />
      <Txt x={180} y={28} size={11.5} bold tone="cream" anchor="middle">Mr Sen</Txt>
      <Txt x={180} y={44} size={9.5} tone="crema" anchor="middle">principal</Txt>
      <Box x={4} y={140} w={130} h={52} style="warm" title="Bablu" lines={["agent (shop manager)"]} />
      <Box x={226} y={140} w={130} h={52} title="Paint supplier" lines={["third party"]} />
      <Arrow x1={150} y1={56} x2={84} y2={136} tone="mocha2" />
      <Txt x={64} y={92} size={9} tone="mocha" anchor="middle">implied</Txt>
      <Txt x={64} y={104} size={9} tone="mocha" anchor="middle">authority</Txt>
      <Arrow x1={136} y1={166} x2={222} y2={166} tone="coffee" width={2} />
      <Txt x={180} y={158} size={9.5} bold tone="coffee" anchor="middle">₹20,000 order</Txt>
      <Arrow x1={290} y1={136} x2={214} y2={58} tone="good" width={2} />
      <Txt x={298} y={92} size={9} bold tone="good" anchor="middle">can recover</Txt>
      <Txt x={298} y={104} size={9} bold tone="good" anchor="middle">from Mr Sen</Txt>
      <Txt x={180} y={220} size={10} bold tone="coffee" anchor="middle">{"The agent's act binds the principal"}</Txt>
    </Figure>
  );
}

// law-15 ───────────────────────────────────────────────────────────────
export function Ratification() {
  return (
    <Figure
      h={232}
      label="Your friend Arka, without asking, books you a ₹2,400 Darjeeling toy-train ticket. If you later say thanks or use the ticket, you've ratified it, and it counts as authorised from the start, so you owe him ₹2,400. If you refuse, Arka bears the cost."
    >
      <Box x={4} y={8} w={352} h={44} style="warm" title="Arka books your ₹2,400 toy-train ticket" lines={["without asking you: no authority"]} />
      <Arrow x1={130} y1={54} x2={92} y2={74} tone="mocha2" />
      <Arrow x1={230} y1={54} x2={268} y2={74} tone="mocha2" />
      <Box x={4} y={78} w={172} h={74} style="good" title="You say “thanks”" lines={["or use the ticket:", "ratified, as if you", "had agreed from day 1"]} />
      <Box x={184} y={78} w={172} h={74} style="faded" title="You refuse" lines={["not ratified:", "Arka bears the ₹2,400"]} />
      <Pill x={30} y={160} w={120} h={22} tone="good" size={10}>You owe ₹2,400</Pill>
      <Txt x={180} y={204} size={10} bold tone="coffee" anchor="middle">Ratification relates back to the original act</Txt>
      <Txt x={180} y={220} size={9.5} tone="mocha2" anchor="middle">and you must take the whole deal, not just part</Txt>
    </Figure>
  );
}

// law-16 ───────────────────────────────────────────────────────────────
export function SecretProfit() {
  return (
    <Figure
      h={236}
      label="You ask a broker to find a flat for up to ₹50 lakh. He finds one at ₹45 lakh, secretly buys it himself and offers it to you at ₹49 lakh, a ₹4 lakh secret profit. The law lets you make him sell it to you at the ₹45 lakh he paid, and he loses his commission."
    >
      <Heading>{"Your broker's secret deal"}</Heading>
      <Box x={4} y={28} w={110} h={56} title="Flat found" lines={["at ₹45 lakh"]} />
      <Arrow x1={116} y1={56} x2={128} y2={56} tone="mocha2" />
      <Box x={130} y={28} w={110} h={56} style="bad" title="Broker buys it" lines={["himself, secretly"]} />
      <Arrow x1={242} y1={56} x2={254} y2={56} tone="mocha2" />
      <Box x={256} y={28} w={100} h={56} style="bad" title="Offers you" lines={["at ₹49 lakh"]} />
      <Pill x={130} y={92} w={110} h={20} tone="bad" size={9.5}>₹4 lakh secret profit</Pill>
      <rect x={4} y={126} width={352} height={70} rx="10" className="fill-good-bg" />
      <Txt x={14} y={146} size={11} bold tone="good">What the law gives you</Txt>
      <Txt x={14} y={164} size={10} tone="mocha">Buy the flat at the ₹45 lakh he paid (Sec 216)</Txt>
      <Txt x={14} y={180} size={10} tone="mocha">and he loses his commission (Sec 220)</Txt>
      <Txt x={180} y={222} size={10} bold tone="coffee" anchor="middle">{"An agent's first duty: loyalty, no secret profit"}</Txt>
    </Figure>
  );
}

// law-17 ───────────────────────────────────────────────────────────────
export function SaleVsAgreement() {
  return (
    <Figure
      h={236}
      label="Sale: you pay ₹1,200 for a specific kurta and leave it at the stall till evening. If the stall catches fire at 4 pm, the loss is yours, because ownership and risk passed. Agreement to sell: you book a ₹1,800 custom kurta to be stitched by Friday. If the shop burns on Wednesday, the loss is the tailor's."
    >
      <Heading>A fire at the shop: whose loss?</Heading>
      <Box x={4} y={28} w={172} h={84} style="warm" title="Sale" lines={["You pay ₹1,200 for this", "kurta, leave it at the", "stall till evening"]} />
      <Box x={184} y={28} w={172} h={84} style="warm" title="Agreement to sell" lines={["You book a ₹1,800 kurta,", "to be stitched by Friday", "(future goods)"]} />
      <Txt x={90} y={132} size={9.5} tone="mocha" anchor="middle">Fire at 4 pm</Txt>
      <Txt x={270} y={132} size={9.5} tone="mocha" anchor="middle">Fire on Wednesday</Txt>
      <Arrow x1={90} y1={138} x2={90} y2={150} tone="bad" />
      <Arrow x1={270} y1={138} x2={270} y2={150} tone="bad" />
      <Pill x={30} y={154} w={120} h={24} tone="bad" size={10.5}>Loss: yours</Pill>
      <Pill x={204} y={154} w={132} h={24} tone="bad" size={10.5}>{"Loss: the tailor's"}</Pill>
      <Txt x={180} y={210} size={10.5} bold tone="coffee" anchor="middle">Risk follows ownership, not possession (Sec 26)</Txt>
    </Figure>
  );
}

// law-18 ───────────────────────────────────────────────────────────────
export function ConditionVsWarranty() {
  return (
    <Figure
      h={232}
      label="You order an iPhone 15 for ₹70,000 and receive an iPhone 13. That breaks a condition, correspondence with description, so you can reject it and get a refund. If the right phone comes but the promised ₹1,000 earphones are missing, that's a warranty, so you claim their value but keep the phone."
    >
      <Heading>Your ₹70,000 phone order</Heading>
      <Box x={4} y={28} w={172} h={74} style="bad" title="Condition broken" lines={["Ordered iPhone 15,", "got an iPhone 13", "(goes to the heart)"]} />
      <Box x={184} y={28} w={172} h={74} style="warm" title="Warranty broken" lines={["Right phone, but the", "₹1,000 earphones", "promised are missing"]} />
      <Arrow x1={90} y1={104} x2={90} y2={118} tone="coffee" />
      <Arrow x1={270} y1={104} x2={270} y2={118} tone="coffee" />
      <Box x={4} y={122} w={172} h={56} style="good" title="Reject + full refund" lines={["and claim damages"]} />
      <Box x={184} y={122} w={172} h={56} style="faded" title="Damages only" lines={["keep the phone, get ₹1,000"]} />
      <Txt x={180} y={202} size={10} bold tone="coffee" anchor="middle">Condition: reject the goods. Warranty: claim damages.</Txt>
      <Txt x={180} y={218} size={9.5} tone="mocha2" anchor="middle">The contract as a whole decides, not the label</Txt>
    </Figure>
  );
}

// law-19 ───────────────────────────────────────────────────────────────
export function CaveatEmptor() {
  return (
    <Figure
      h={232}
      label="At a Sunday second-hand market you inspect and buy a ₹600 table fan that turns out noisy: caveat emptor, the buyer bears it. At an electronics shop you say you need a quiet fan for a baby's room and buy the ₹2,800 fan the owner recommends; it's very noisy, so the shop is liable under the fitness-for-purpose exception."
    >
      <Heading>Two noisy fans</Heading>
      <Box x={4} y={28} w={172} h={92} style="faded" title="₹600 fan, Sunday market" lines={["You inspected it", "yourself, chose it", "", "Buyer beware"]} />
      <Box x={184} y={28} w={172} h={92} style="good" title="₹2,800 fan, shop" lines={["“I need a quiet fan for", "a baby's room.” You", "relied on the owner", "Shop is liable"]} />
      <Pill x={40} y={130} w={100} h={22} tone="crema" size={10}>Caveat emptor</Pill>
      <Pill x={200} y={130} w={140} h={22} tone="good" size={10}>Exception: fitness</Pill>
      <Txt x={180} y={180} size={10} tone="mocha" anchor="middle">Other exceptions: merchantable quality, sale by</Txt>
      <Txt x={180} y={195} size={10} tone="mocha" anchor="middle">description or sample, wholesome food, hidden fraud</Txt>
      <Txt x={180} y={220} size={10} bold tone="coffee" anchor="middle">Rely on the seller, and the seller is responsible</Txt>
    </Figure>
  );
}

// law-20 ───────────────────────────────────────────────────────────────
export function UnpaidSeller() {
  const stops = [
    { x: 62, t: "Burrabazar", s: "godown", r: "Lien", rs: "keep the goods", tone: "good" as const },
    { x: 180, t: "Truck on", s: "NH-19", r: "Stoppage in transit", rs: "if buyer insolvent", tone: "good" as const },
    { x: 298, t: "Durgapur", s: "shop", r: "Delivered", rs: "rights now lost", tone: "bad" as const },
  ];
  return (
    <Figure
      h={232}
      label="A Burrabazar wholesaler sells ₹80,000 of fabric on credit to a Durgapur shop and the buyer turns insolvent. While the fabric is still in his godown he can keep it (lien). While it's on a truck on NH-19 he can stop it (stoppage in transit). Once it's delivered, those rights are gone. He can also give notice and resell, and sue for the price."
    >
      <Heading>₹80,000 of fabric, buyer not paying</Heading>
      <Line x1={62} y1={60} x2={298} y2={60} tone="mocha2" width={2} dash />
      {stops.map((p) => (
        <g key={p.t}>
          <circle cx={p.x} cy={60} r="9" className={p.tone === "bad" ? "fill-bad" : "fill-coffee"} />
          <Txt x={p.x} y={88} size={10} bold tone="espresso" anchor="middle">{p.t}</Txt>
          <Txt x={p.x} y={101} size={9.5} tone="mocha" anchor="middle">{p.s}</Txt>
          <rect x={p.x - 57} y={110} width={114} height={46} rx="10" className={p.tone === "bad" ? "fill-bad-bg" : "fill-good-bg"} />
          <Txt x={p.x} y={129} size={10} bold tone={p.tone} anchor="middle">{p.r}</Txt>
          <Txt x={p.x} y={145} size={9} tone="mocha" anchor="middle">{p.rs}</Txt>
        </g>
      ))}
      <Txt x={180} y={186} size={10} tone="mocha" anchor="middle">Also: resell after notice, and sue for the price</Txt>
      <Txt x={180} y={214} size={10} bold tone="coffee" anchor="middle">Act before delivery: after that, the hold is gone</Txt>
    </Figure>
  );
}
