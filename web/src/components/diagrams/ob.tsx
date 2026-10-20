// Pictures for the Organisational Behaviour cards. Every number comes from that card's everyday example.

import { Arrow, Box, Curve, Dot, Figure, Heading, Line, Pill, Txt } from "./parts";

// ob-01 ────────────────────────────────────────────────────────────────
export function WhatIsOB() {
  const base = 166;
  return (
    <Figure
      h={232}
      label="Two tea stalls near College Street, same ₹10 cup and kettle. The stall where the helper is trusted sells 200 cups a day; the one where he is shouted at sells 80. The 120-cup gap, ₹1,200 a day, is organisational behaviour."
    >
      <Heading>Same tea, same ₹10 cup</Heading>
      <rect x={40} y={base - 120} width={92} height={120} rx="6" className="fill-coffee" />
      <rect x={160} y={base - 48} width={92} height={48} rx="6" className="fill-crema" />
      <Txt x={86} y={base - 128} size={11} bold tone="espresso" anchor="middle">200 cups</Txt>
      <Txt x={206} y={base - 56} size={11} bold tone="espresso" anchor="middle">80 cups</Txt>
      <Line x1={20} y1={base} x2={270} y2={base} tone="mocha2" width={1} />
      <Txt x={86} y={base + 16} size={10} bold tone="good" anchor="middle">Helper trusted,</Txt>
      <Txt x={86} y={base + 29} size={10} tone="mocha" anchor="middle">shares tips</Txt>
      <Txt x={206} y={base + 16} size={10} bold tone="bad" anchor="middle">Helper shouted at,</Txt>
      <Txt x={206} y={base + 29} size={10} tone="mocha" anchor="middle">keeps leaving</Txt>
      <Line x1={262} y1={base - 120} x2={262} y2={base - 48} tone="line" width={1} dash />
      <Line x1={258} y1={base - 120} x2={266} y2={base - 120} tone="mocha2" width={1.2} />
      <Line x1={258} y1={base - 48} x2={266} y2={base - 48} tone="mocha2" width={1.2} />
      <Txt x={274} y={base - 88} size={11} bold tone="coffee">120 cups</Txt>
      <Txt x={274} y={base - 74} size={9.5} tone="mocha">= ₹1,200 a day</Txt>
      <Txt x={180} y={224} size={10.5} bold tone="coffee" anchor="middle">
        {"The gap isn't the tea. It's how people are treated: OB."}
      </Txt>
    </Figure>
  );
}

// ob-02 ────────────────────────────────────────────────────────────────
export function LewinEquation() {
  const rows = [
    { y: 58, e: "60-student lecture hall", b: "Silent all class", good: false },
    { y: 140, e: "5-person group, kind senior", b: "Speaks up, wins ₹500", good: true },
  ];
  return (
    <Figure
      h={232}
      label="Behaviour equals a function of person and environment. Riya, the same person, is silent in a 60-student lecture hall, but in a 5-person group with a friendly senior she speaks up and wins a ₹500 prize. The environment changed, so her behaviour changed."
    >
      <Txt x={180} y={30} size={20} bold tone="espresso" anchor="middle">B = f(P, E)</Txt>
      <Txt x={180} y={46} size={9.5} tone="mocha2" anchor="middle">Behaviour = function of Person and Environment</Txt>
      {rows.map((r) => (
        <g key={r.y}>
          <Box x={4} y={r.y} w={70} h={60} style="warm" title="P" lines={["Riya", "(same)"]} />
          <Txt x={84} y={r.y + 35} size={13} bold tone="mocha2" anchor="middle">+</Txt>
          <Box x={94} y={r.y} w={142} h={60} title="E" lines={r.e.length > 22 ? [r.e.split(", ")[0] + ",", r.e.split(", ")[1]] : [r.e]} />
          <Arrow x1={240} y1={r.y + 30} x2={256} y2={r.y + 30} tone="coffee" />
          <Box x={260} y={r.y} w={96} h={60} style={r.good ? "good" : "bad"} title="B" lines={r.b.split(", ").length > 1 ? [r.b.split(", ")[0] + ",", r.b.split(", ")[1]] : [r.b]} />
        </g>
      ))}
      <Txt x={180} y={224} size={10.5} bold tone="coffee" anchor="middle">Change E, and B changes too</Txt>
    </Figure>
  );
}

// ob-03 ────────────────────────────────────────────────────────────────
export function OBModels() {
  const rows = [
    { name: "Autocratic", on: "Power", act: "“Do it or you're out.”" },
    { name: "Custodial", on: "Benefits", act: "Free dinner added" },
    { name: "Supportive", on: "Leadership", act: "Coached and thanked" },
    { name: "Collegial", on: "Partnership", act: "His sandesh idea is tried" },
    { name: "System", on: "Trust", act: "Stays late at Puja, unasked" },
  ];
  return (
    <Figure
      h={250}
      label="Five sweet shops pay a helper the same ₹300 a shift. Autocratic rests on power: do it or you're out. Custodial on benefits: free dinner. Supportive on leadership: coaching and thanks. Collegial on partnership: his sandesh idea is tried. System on trust: he stays late in the Puja rush without being asked."
    >
      <Heading>Same ₹300 shift, five ways to run the shop</Heading>
      {rows.map((r, i) => {
        const y = 28 + i * 40;
        const style = i === 0 ? "fill-bad-bg" : i >= 3 ? "fill-good-bg" : "fill-foam stroke-line";
        return (
          <g key={r.name}>
            <rect x={4 + i * 8} y={y} width={318 - i * 8} height={34} rx="10" className={style} />
            <Txt x={14 + i * 8} y={y + 15} size={11} bold tone={i === 0 ? "bad" : i >= 3 ? "good" : "espresso"}>{r.name}</Txt>
            <Txt x={14 + i * 8} y={y + 28} size={9} tone="mocha2">{`rests on ${r.on.toLowerCase()}`}</Txt>
            <Txt x={140 + i * 3} y={y + 22} size={10} tone="mocha">{r.act}</Txt>
          </g>
        );
      })}
      <Arrow x1={340} y1={34} x2={340} y2={222} tone="coffee" width={2} />
      <Txt x={340} y={244} size={9.5} bold tone="coffee" anchor="middle">trust</Txt>
    </Figure>
  );
}

// ob-04 ────────────────────────────────────────────────────────────────
export function SchoolsOfThought() {
  const cols = [
    { x: 4, name: "Classical", when: "1880–1920", focus: "efficiency", lines: ["Taylor: time each", "step, output 2×", "Fayol: clear roles", "Weber: no free", "plates for friends"] },
    { x: 124, name: "Neoclassical", when: "1920–1950", focus: "people", lines: ["Human relations:", "staff work faster", "when the owner", "eats with them"] },
    { x: 244, name: "Modern", when: "today", focus: "it depends", lines: ["Contingency:", "Puja night: +2", "staff, short menu", "Rainy Tuesday:", "no change"] },
  ];
  return (
    <Figure
      h={236}
      label="A momo stall near New Market selling ₹60 plates. Classical: Taylor times each step and output doubles; Fayol sets clear roles; Weber's rule: no free plates for friends. Neoclassical: staff work faster when the owner eats with them. Modern contingency: on Puja nights hire two more and simplify the menu, but not on a rainy Tuesday."
    >
      <Heading>₹60-a-plate momo stall, three schools</Heading>
      {cols.map((c, i) => (
        <g key={c.name}>
          <rect x={c.x} y={28} width={112} height={44} rx="10" className={i === 2 ? "fill-coffee" : "fill-latte stroke-crema-line"} />
          <Txt x={c.x + 56} y={46} size={11.5} bold tone={i === 2 ? "cream" : "espresso"} anchor="middle">{c.name}</Txt>
          <Txt x={c.x + 56} y={62} size={9} tone={i === 2 ? "crema" : "mocha2"} anchor="middle">{`${c.when} · ${c.focus}`}</Txt>
          <rect x={c.x} y={80} width={112} height={118} rx="10" className="fill-foam stroke-line" />
          {c.lines.map((l, j) => (
            <Txt key={j} x={c.x + 8} y={100 + j * 19} size={9.5} tone="mocha">{l}</Txt>
          ))}
          {i < 2 && <Arrow x1={c.x + 113} y1={50} x2={c.x + 123} y2={50} tone="mocha2" />}
        </g>
      ))}
      <Txt x={180} y={222} size={10.5} bold tone="coffee" anchor="middle">Newer schools add to the old ones, not replace them</Txt>
    </Figure>
  );
}

// ob-05 ────────────────────────────────────────────────────────────────
export function OBChallenges() {
  const chips = [
    { x: 4, y: 30, t: "Diversity", s: ["Bengali, Nepali and", "Odia staff: 3 languages"] },
    { x: 184, y: 30, t: "Temporariness", s: ["App rider, ~₹40 a drop,", "changes every week"] },
    { x: 4, y: 150, t: "Empowerment", s: ["Chef may change", "the menu himself"] },
    { x: 184, y: 150, t: "Part-time staff", s: ["Two students from", "Odisha, evenings only"] },
  ];
  return (
    <Figure
      h={236}
      label="One evening shift in a Salt Lake café shows today's OB challenges: diversity, with Bengali, Nepali and Odia staff speaking three languages; temporariness, with an app rider paid about ₹40 a delivery who changes every week; empowerment, as the chef may change the menu; and part-time student staff."
    >
      {chips.map((c) => (
        <Box key={c.t} x={c.x} y={c.y} w={172} h={60} style="warm" title={c.t} lines={c.s} />
      ))}
      <rect x={110} y={98} width={140} height={44} rx="10" className="fill-coffee" />
      <Txt x={180} y={116} size={11} bold tone="cream" anchor="middle">Salt Lake café</Txt>
      <Txt x={180} y={131} size={9.5} tone="crema" anchor="middle">one evening shift</Txt>
      <Txt x={180} y={230} size={10.5} bold tone="coffee" anchor="middle">{"Today's OB, in one small kitchen"}</Txt>
    </Figure>
  );
}

// ob-06 ────────────────────────────────────────────────────────────────
export function BigFive() {
  const rows = [
    { l: "O", n: "Openness", d: "Tries the strangest street food" },
    { l: "C", n: "Conscientiousness", d: "Writes a budget, keeps ₹50 back" },
    { l: "E", n: "Extraversion", d: "Treats everyone with it" },
    { l: "A", n: "Agreeableness", d: "Lends half to a friend" },
    { l: "N", n: "Neuroticism", d: "Worries all day about losing it" },
  ];
  return (
    <Figure
      h={246}
      label="Five friends each get ₹200 at the Gariahat fair. High openness: tries the strangest street food. High conscientiousness: writes a budget and keeps ₹50 back. High extraversion: treats everyone. High agreeableness: lends half to a friend. High neuroticism: worries all day about losing it."
    >
      <Heading>₹200 each at the Gariahat fair</Heading>
      {rows.map((r, i) => {
        const y = 28 + i * 40;
        const best = r.l === "C";
        return (
          <g key={r.l}>
            <rect x={4} y={y} width={352} height={34} rx="10" className={best ? "fill-good-bg" : "fill-foam stroke-line"} />
            <circle cx={24} cy={y + 17} r="11" className="fill-coffee" />
            <Txt x={24} y={y + 21.5} size={12} bold tone="cream" anchor="middle">{r.l}</Txt>
            <Txt x={42} y={y + 21} size={10.5} bold tone={best ? "good" : "espresso"}>{r.n}</Txt>
            <Txt x={160} y={y + 21} size={10} tone="mocha">{r.d}</Txt>
          </g>
        );
      })}
      <Txt x={180} y={240} size={10} bold tone="good" anchor="middle">C predicts job performance best</Txt>
    </Figure>
  );
}

// ob-07 ────────────────────────────────────────────────────────────────
export function FreudModel() {
  return (
    <Figure
      h={244}
      label="Arjun has ₹150 left for the week. His id says: Arsalan biryani, now. His superego says: save it, your parents work hard. His ego decides: a ₹60 roll today and ₹90 saved. When he fails a test and says the questions were out of syllabus, that is rationalisation, a defence mechanism."
    >
      <Heading>{"Arjun's last ₹150 of the week"}</Heading>
      <Box x={4} y={28} w={170} h={56} style="bad" title="Id: impulse" lines={["“Arsalan biryani, now!”"]} />
      <Box x={186} y={28} w={170} h={56} style="warm" title="Superego: conscience" lines={["“Save it, your parents", "work hard for this.”"]} />
      <Arrow x1={89} y1={86} x2={150} y2={110} tone="mocha2" />
      <Arrow x1={271} y1={86} x2={210} y2={110} tone="mocha2" />
      <rect x={70} y={112} width={220} height={52} rx="10" className="fill-coffee" />
      <Txt x={180} y={132} size={11.5} bold tone="cream" anchor="middle">Ego: the referee</Txt>
      <Txt x={180} y={150} size={10} tone="crema" anchor="middle">₹60 roll today + ₹90 saved</Txt>
      <Line x1={20} y1={180} x2={340} y2={180} tone="line" width={1} dash />
      <Txt x={180} y={198} size={9} bold caps tone="mocha2" anchor="middle">LATER, HE FAILS A TEST</Txt>
      <Pill x={40} y={206} w={280} h={26} tone="crema" size={10}>{"“Out of syllabus anyway” = rationalisation"}</Pill>
    </Figure>
  );
}

// ob-08 ────────────────────────────────────────────────────────────────
export function LocusOfControl() {
  const cols = [
    { x: 4, name: "Priya · internal", thought: ["“I didn't check the", "seller rating.”"], next: ["Checks next time.", "Never loses that", "way again."], good: true },
    { x: 186, name: "Rahul · external", thought: ["“These apps are all", "scams. Nothing I can do.”"], next: ["Changes nothing.", "Keeps losing", "money."], good: false },
  ];
  return (
    <Figure
      h={236}
      label="Priya and Rahul each lose ₹349 on a bad online order. Priya, with an internal locus of control, says she didn't check the seller rating, checks next time and never loses money that way again. Rahul, with an external locus, says the apps are all scams, changes nothing and keeps losing."
    >
      <Pill x={110} y={6} w={140} h={22} tone="bad" size={10.5}>Both lose ₹349</Pill>
      {cols.map((c) => (
        <g key={c.name}>
          <Txt x={c.x + 85} y={48} size={11.5} bold tone="espresso" anchor="middle">{c.name}</Txt>
          <Box x={c.x} y={56} w={170} h={50} lines={c.thought} />
          <Arrow x1={c.x + 85} y1={110} x2={c.x + 85} y2={126} tone="coffee" />
          <Box x={c.x} y={130} w={170} h={64} style={c.good ? "good" : "bad"} lines={c.next} />
        </g>
      ))}
      <Txt x={180} y={222} size={10.5} bold tone="coffee" anchor="middle">Same loss. The belief about control changes what&apos;s next.</Txt>
    </Figure>
  );
}

// ob-09 ────────────────────────────────────────────────────────────────
export function PerceptionProcess() {
  const people = [
    { x: 4, who: "Salt Lake IT worker", says: ["“Fair, it's an", "experience.”"], tone: "good" as const },
    { x: 124, who: "Retired professor", says: ["“Robbery! I pay", "₹10 at the corner.”"], tone: "bad" as const },
    { x: 244, who: "Student on a date", says: ["“Worth it to", "impress.”"], tone: "plain" as const },
  ];
  return (
    <Figure
      h={232}
      label="A Gariahat café's ₹120 cutting chai. Perception selects, organises and interprets. An IT worker thinks it's fair for the experience, a retired professor calls it robbery because he pays ₹10, and a student on a date thinks it's worth it to impress. Same chai, three realities."
    >
      {["Select", "Organise", "Interpret"].map((s, i) => (
        <g key={s}>
          <Pill x={18 + i * 116} y={6} w={92} h={20} tone="crema" size={10}>{s}</Pill>
          {i < 2 && <Arrow x1={112 + i * 116} y1={16} x2={132 + i * 116} y2={16} tone="mocha2" />}
        </g>
      ))}
      <rect x={120} y={40} width={120} height={46} rx="10" className="fill-coffee" />
      <Txt x={180} y={60} size={12} bold tone="cream" anchor="middle">₹120 chai</Txt>
      <Txt x={180} y={76} size={9.5} tone="crema" anchor="middle">same cup for all</Txt>
      {people.map((p) => (
        <g key={p.who}>
          <Arrow x1={180} y1={88} x2={p.x + 56} y2={110} tone="mocha2" />
          <Box x={p.x} y={114} w={112} h={66} style={p.tone === "plain" ? "warm" : p.tone} lines={[p.who, ""]} />
          {p.says.map((q, j) => (
            <Txt key={j} x={p.x + 8} y={152 + j * 13} size={9.5} italic tone="mocha">{q}</Txt>
          ))}
        </g>
      ))}
      <Txt x={180} y={210} size={10.5} bold tone="coffee" anchor="middle">Same chai, same ₹120, three different realities</Txt>
      <Txt x={180} y={226} size={9.5} tone="mocha2" anchor="middle">shaped by experience, motives and situation</Txt>
    </Figure>
  );
}

// ob-10 ────────────────────────────────────────────────────────────────
export function Attribution() {
  const clues = [
    { name: "Distinctiveness", q: "Late only on rainy days?", high: "→ external" },
    { name: "Consensus", q: "Whole class late too?", high: "→ external" },
    { name: "Consistency", q: "Late every Monday?", high: "→ internal" },
  ];
  return (
    <Figure
      h={240}
      label="Sumit is late and fined ₹50. Three clues decide the cause. High distinctiveness, late only on rainy days, points external. High consensus, the whole class late because the metro broke down, points external, so the fine is unfair. High consistency, only Sumit and every Monday, points internal."
    >
      <Heading>Sumit is late. Fine him ₹50?</Heading>
      <Txt x={300} y={36} size={9} bold caps tone="mocha2" anchor="middle">IF YES</Txt>
      {clues.map((c, i) => {
        const y = 42 + i * 42;
        const internal = c.high.includes("internal");
        return (
          <g key={c.name}>
            <rect x={4} y={y} width={244} height={36} rx="10" className="fill-foam stroke-line" />
            <Txt x={14} y={y + 15} size={10.5} bold tone="espresso">{c.name}</Txt>
            <Txt x={14} y={y + 29} size={9.5} tone="mocha">{c.q}</Txt>
            <Pill x={256} y={y + 8} w={96} h={20} tone={internal ? "coffee" : "crema"} size={10}>{c.high}</Pill>
          </g>
        );
      })}
      <Box x={4} y={176} w={172} h={56} style="good" title="Metro broke down" lines={["External: the fine", "is unfair"]} />
      <Box x={184} y={176} w={172} h={56} style="bad" title="Only Sumit, weekly" lines={["Internal: a pattern", "worth acting on"]} />
    </Figure>
  );
}

// ob-11 ────────────────────────────────────────────────────────────────
export function PerceptionShortcuts() {
  const ps = [
    { n: "1", who: "Polished", guess: "Strong", tag: "", real: "Good" },
    { n: "2", who: "After #1", guess: "Weak", tag: "Contrast effect", real: "Sold the most" },
    { n: "3", who: "Famous school", guess: "Will sell most", tag: "Halo effect", real: "Sold the least" },
  ];
  return (
    <Figure
      h={242}
      label="Three students pitch to sell ₹150 fest tickets. The second looks weak only because she follows a very polished first speaker: the contrast effect. The judges expect the third to sell most because of his famous school: the halo effect. In the end, the second student sold the most."
    >
      <Heading>Who will sell the most ₹150 tickets?</Heading>
      <Txt x={180} y={40} size={9} bold caps tone="mocha2" anchor="middle">JUDGES GUESS</Txt>
      <Txt x={295} y={40} size={9} bold caps tone="mocha2" anchor="middle">ACTUAL</Txt>
      {ps.map((p, i) => {
        const y = 48 + i * 54;
        const win = p.real === "Sold the most";
        return (
          <g key={p.n}>
            <circle cx={20} cy={y + 22} r="12" className="fill-coffee" />
            <Txt x={20} y={y + 26.5} size={12} bold tone="cream" anchor="middle">{p.n}</Txt>
            <Txt x={38} y={y + 18} size={10} bold tone="espresso">{p.who}</Txt>
            {p.tag && <Txt x={38} y={y + 32} size={9} italic tone="bad">{p.tag}</Txt>}
            <rect x={134} y={y + 6} width={92} height={30} rx="10" className="fill-foam stroke-line" />
            <Txt x={180} y={y + 25} size={10} tone="mocha" anchor="middle">{p.guess}</Txt>
            <rect x={236} y={y + 6} width={118} height={30} rx="10" className={win ? "fill-good-bg" : "fill-foam stroke-line"} />
            <Txt x={295} y={y + 25} size={10} bold={win} tone={win ? "good" : "mocha"} anchor="middle">{p.real}</Txt>
          </g>
        );
      })}
      <Txt x={180} y={226} size={10.5} bold tone="coffee" anchor="middle">Shortcuts are fast, but they judged wrong</Txt>
    </Figure>
  );
}

// ob-12 ────────────────────────────────────────────────────────────────
export function StressCurve() {
  return (
    <Figure
      h={240}
      label="Three teams at a ₹50-a-head quiz night. Told it doesn't matter, one team is bored and scores 4 out of 20. Told the winner gets dinner, one is excited and scores 16: eustress. Told losers pay for everyone, one panics and scores 7: distress. Performance follows an upside-down U."
    >
      <Heading>₹50-a-head quiz night</Heading>
      <Line x1={30} y1={190} x2={344} y2={190} tone="mocha2" width={1} />
      <Line x1={30} y1={30} x2={30} y2={190} tone="mocha2" width={1} />
      <Txt x={36} y={36} size={9} tone="mocha2">score</Txt>
      <Txt x={344} y={204} size={9} tone="mocha2" anchor="end">stress →</Txt>
      <Curve d="M 40 170 C 120 30, 220 30, 340 160" />
      <Dot x={70} y={125} r={5} tone="mocha2" />
      <Dot x={180} y={64} r={5} tone="good" />
      <Dot x={300} y={121} r={5} tone="bad" />
      <Txt x={60} y={112} size={11} bold tone="espresso" anchor="end">4/20</Txt>
      <Txt x={180} y={52} size={11} bold tone="good" anchor="middle">16/20</Txt>
      <Txt x={312} y={112} size={11} bold tone="bad">7/20</Txt>
      <Txt x={70} y={216} size={10} bold tone="mocha" anchor="middle">Bored</Txt>
      <Txt x={70} y={230} size={9} tone="mocha2" anchor="middle">{"“doesn't matter”"}</Txt>
      <Txt x={180} y={216} size={10} bold tone="good" anchor="middle">Eustress</Txt>
      <Txt x={180} y={230} size={9} tone="mocha2" anchor="middle">“winner gets dinner”</Txt>
      <Txt x={300} y={216} size={10} bold tone="bad" anchor="middle">Distress</Txt>
      <Txt x={300} y={230} size={9} tone="mocha2" anchor="middle">“losers pay for all”</Txt>
    </Figure>
  );
}

// ob-13 ────────────────────────────────────────────────────────────────
export function StressSources() {
  const causes = [
    { t: "Personal: money", s: "skips ₹70 thali" },
    { t: "Role ambiguity", s: "no group leader" },
    { t: "Task demands", s: "3 due on one day" },
  ];
  const signs = [
    { t: "Physiological", s: "headaches" },
    { t: "Psychological", s: "snaps at friends" },
    { t: "Behavioural", s: "misses classes" },
  ];
  return (
    <Figure
      h={232}
      label="Ankita, a first-year MBA student, faces three stressors: money worries as she skips the ₹70 thali, role ambiguity in a group with no leader, and three submissions due on one day. By week three she shows physiological, psychological and behavioural symptoms: headaches, snapping at friends and missing classes."
    >
      <Txt x={70} y={16} size={9} bold caps tone="mocha2" anchor="middle">STRESSORS</Txt>
      <Txt x={290} y={16} size={9} bold caps tone="mocha2" anchor="middle">SYMPTOMS</Txt>
      {causes.map((c, i) => (
        <g key={c.t}>
          <Box x={4} y={24 + i * 56} w={132} h={48} style="warm" title={c.t} lines={[c.s]} titleSize={10.5} />
          <Arrow x1={138} y1={48 + i * 56} x2={150} y2={104} tone="mocha2" />
        </g>
      ))}
      <rect x={152} y={82} width={56} height={44} rx="10" className="fill-coffee" />
      <Txt x={180} y={102} size={10.5} bold tone="cream" anchor="middle">Ankita</Txt>
      <Txt x={180} y={116} size={9} tone="crema" anchor="middle">week 3</Txt>
      {signs.map((s, i) => (
        <g key={s.t}>
          <Arrow x1={210} y1={104} x2={222} y2={48 + i * 56} tone="mocha2" />
          <Box x={224} y={24 + i * 56} w={132} h={48} style="bad" title={s.t} lines={[s.s]} titleSize={10.5} />
        </g>
      ))}
      <Txt x={180} y={210} size={10.5} bold tone="coffee" anchor="middle">Stressors add up, and show in mind, body</Txt>
      <Txt x={180} y={225} size={10.5} bold tone="coffee" anchor="middle">and behaviour</Txt>
    </Figure>
  );
}

// ob-14 ────────────────────────────────────────────────────────────────
export function CopingStress() {
  return (
    <Figure
      h={228}
      label="A hostel spends ₹40 per student a month on Sunday yoga, an organisational wellness programme, and also fixes the Wi-Fi that crashed before deadlines, removing the real stressor. Students who also use a weekly planner, an individual strategy, have the fewest all-nighters."
    >
      <Heading>The hostel that cut all-nighters</Heading>
      <Txt x={92} y={40} size={9} bold caps tone="mocha2" anchor="middle">ORGANISATION</Txt>
      <Txt x={272} y={40} size={9} bold caps tone="mocha2" anchor="middle">INDIVIDUAL</Txt>
      <Box x={4} y={48} w={176} h={50} style="warm" title="Sunday yoga" lines={["₹40 per student a month"]} />
      <Box x={4} y={104} w={176} h={50} style="good" title="Fixes the Wi-Fi" lines={["the real stressor, gone"]} />
      <Box x={188} y={48} w={168} h={106} style="warm" title="Weekly planner" lines={["simple time", "management by", "each student"]} />
      <Arrow x1={180} y1={158} x2={180} y2={174} tone="coffee" width={2} />
      <rect x={60} y={178} width={240} height={40} rx="10" className="fill-coffee" />
      <Txt x={180} y={203} size={11.5} bold tone="cream" anchor="middle">Both together: fewest all-nighters</Txt>
    </Figure>
  );
}

// ob-15 ────────────────────────────────────────────────────────────────
export function GroupsVsTeams() {
  const roles = ["Cook", "Designer", "Cashier", "Marketer", "Manager"];
  return (
    <Figure
      h={236}
      label="A group: six friends put ₹200 each into a WhatsApp food fund and share deals. A team: five students with different roles, cook, designer, cashier, marketer and manager, turn ₹500 of ingredients into ₹3,000 of sales at the college fest. That is synergy."
    >
      <Box x={4} y={8} w={352} h={70} title="Group: the WhatsApp food fund" lines={["6 friends × ₹200 each", "They share information about deals"]} />
      <Txt x={14} y={100} size={11.5} bold tone="espresso">Team: the fest stall</Txt>
      {roles.map((r, i) => (
        <Pill key={r} x={4 + i * 71} y={108} w={66} h={22} tone="crema" size={9.5}>{r}</Pill>
      ))}
      <Box x={4} y={144} w={110} h={48} style="warm" title="₹500" lines={["ingredients"]} />
      <Arrow x1={120} y1={168} x2={232} y2={168} tone="coffee" width={2} />
      <Txt x={176} y={160} size={9.5} tone="mocha2" anchor="middle">complementary skills</Txt>
      <rect x={238} y={144} width={118} height={48} rx="10" className="fill-coffee" />
      <Txt x={297} y={164} size={13} bold tone="cream" anchor="middle">₹3,000</Txt>
      <Txt x={297} y={181} size={9.5} tone="crema" anchor="middle">in sales</Txt>
      <Txt x={180} y={222} size={10.5} bold tone="good" anchor="middle">Synergy: the team makes more than its parts</Txt>
    </Figure>
  );
}

// ob-16 ────────────────────────────────────────────────────────────────
export function TuckmanStages() {
  const steps = ["Forming", "Storming", "Norming", "Performing", "Adjourning"];
  const notes = ["small talk", "fight: who", "roles agreed", "best work,", "celebrate,"];
  const notes2 = ["", "presents?", "", "last 2 weeks", "disband"];
  return (
    <Figure
      h={236}
      label="Five MBA students on a 4-week project for a ₹500 voucher each. Forming: polite small talk. Storming: a fight over who presents. Norming: roles agreed. Little happens until the midpoint, when they panic and change their approach: punctuated equilibrium. Performing: best work in the last two weeks. Adjourning: celebrate and disband."
    >
      <Heading>A 4-week project, ₹500 voucher each</Heading>
      {steps.map((s, i) => {
        const h = 40 + i * 24;
        const x = 6 + i * 70;
        const top = 196 - h;
        const peak = i === 3;
        return (
          <g key={s}>
            <rect x={x} y={top} width={64} height={h} rx="8" className={peak ? "fill-coffee" : i === 4 ? "fill-crema" : "fill-latte stroke-crema-line"} />
            <Txt x={x + 32} y={top + 16} size={9.5} bold tone={peak ? "cream" : "espresso"} anchor="middle">{s}</Txt>
            <Txt x={x + 32} y={top + 30} size={8.5} tone={peak ? "crema" : "mocha"} anchor="middle">{notes[i]}</Txt>
            {notes2[i] && <Txt x={x + 32} y={top + 41} size={8.5} tone={peak ? "crema" : "mocha"} anchor="middle">{notes2[i]}</Txt>}
          </g>
        );
      })}
      <Line x1={6} y1={196} x2={354} y2={196} tone="mocha2" width={1} />
      <Line x1={210} y1={40} x2={210} y2={196} tone="bad" width={1.5} dash />
      <Pill x={150} y={30} w={120} h={20} tone="bad" size={9}>Midpoint: panic, rethink</Pill>
      <Txt x={180} y={214} size={9.5} tone="mocha2" anchor="middle">Week 1 → week 4</Txt>
      <Txt x={180} y={230} size={10.5} bold tone="coffee" anchor="middle">The midpoint jump is punctuated equilibrium</Txt>
    </Figure>
  );
}

// ob-17 ────────────────────────────────────────────────────────────────
export function GroupProperties() {
  return (
    <Figure
      h={248}
      label="Eight hostel friends earn a ₹200 pizza treat for each room that passes inspection. Cleaning all together, only three work: social loafing. In pairs with their own room, every pair cleans. With high cohesion and a high norm, nobody sleeps till rooms pass, all four rooms pass every week. High cohesion with low norms gives the lowest output."
    >
      <Box x={4} y={6} w={172} h={48} style="bad" title="All 8 together" lines={["only 3 actually work"]} />
      <Box x={184} y={6} w={172} h={48} style="good" title="In pairs, own room" lines={["every pair cleans"]} />
      <Txt x={180} y={70} size={9.5} bold tone="mocha2" anchor="middle">Hidden effort = social loafing. Visible effort = everyone works.</Txt>
      <Txt x={150} y={92} size={9} bold caps tone="mocha2" anchor="middle">HIGH NORMS</Txt>
      <Txt x={286} y={92} size={9} bold caps tone="mocha2" anchor="middle">LOW NORMS</Txt>
      <Txt x={8} y={128} size={9} bold caps tone="mocha2">HIGH</Txt>
      <Txt x={8} y={140} size={9} bold caps tone="mocha2">COHESION</Txt>
      <Txt x={8} y={188} size={9} bold caps tone="mocha2">LOW</Txt>
      <Txt x={8} y={200} size={9} bold caps tone="mocha2">COHESION</Txt>
      <rect x={82} y={100} width={136} height={56} rx="10" className="fill-coffee" />
      <Txt x={150} y={122} size={11} bold tone="cream" anchor="middle">Very high</Txt>
      <Txt x={150} y={138} size={9} tone="crema" anchor="middle">all 4 rooms pass</Txt>
      <Txt x={150} y={150} size={9} tone="crema" anchor="middle">every week</Txt>
      <Box x={222} y={100} w={134} h={56} style="bad" title="Very low" lines={["close group that", "defends slacking"]} />
      <Box x={82} y={162} w={136} h={48} title="Moderate" />
      <Box x={222} y={162} w={134} h={48} style="faded" title="Low" />
      <Txt x={180} y={236} size={10.5} bold tone="coffee" anchor="middle">Cohesion amplifies whatever the norms are</Txt>
    </Figure>
  );
}

// ob-18 ────────────────────────────────────────────────────────────────
export function GroupDecisions() {
  const shift = ["Digha", "Darjeeling", "Goa"];
  const ngt = ["Write ideas silently", "Present one by one", "Vote privately"];
  return (
    <Figure
      h={246}
      label="A class committee decides how to spend a ₹300-per-student fund. The rep pushes an expensive trip and nobody objects: groupthink. In discussion the trip grows from Digha to Darjeeling to Goa: groupshift towards risk. With the nominal group technique, students write ideas silently, present them, and vote privately, and they pick the farewell dinner most actually wanted."
    >
      <Heading>The ₹300-per-student class fund</Heading>
      <Txt x={4} y={40} size={9} bold caps tone="bad">GROUPTHINK + GROUPSHIFT</Txt>
      <Txt x={4} y={56} size={10} italic tone="mocha">Rep: “expensive trip!” Nobody wants to look cheap.</Txt>
      {shift.map((s, i) => (
        <g key={s}>
          <rect x={4 + i * 124} y={66} width={104} height={30} rx="10" className={i === 2 ? "fill-bad-bg" : "fill-foam stroke-line"} />
          <Txt x={56 + i * 124} y={86} size={11} bold tone={i === 2 ? "bad" : "espresso"} anchor="middle">{s}</Txt>
          {i < 2 && <Arrow x1={110 + i * 124} y1={81} x2={126 + i * 124} y2={81} tone="bad" />}
        </g>
      ))}
      <Txt x={180} y={112} size={9.5} tone="mocha2" anchor="middle">each round of talk makes it riskier</Txt>
      <Line x1={4} y1={124} x2={356} y2={124} tone="line" width={1} dash />
      <Txt x={4} y={146} size={9} bold caps tone="good">NOMINAL GROUP TECHNIQUE</Txt>
      {ngt.map((s, i) => (
        <g key={s}>
          <Box x={4 + i * 120} y={154} w={112} h={34} lines={[s]} />
          {i < 2 && <Arrow x1={117 + i * 120} y1={171} x2={123 + i * 120} y2={171} tone="mocha2" />}
        </g>
      ))}
      <rect x={60} y={200} width={240} height={38} rx="10" className="fill-good-bg" />
      <Txt x={180} y={224} size={11} bold tone="good" anchor="middle">Farewell dinner: what most wanted</Txt>
    </Figure>
  );
}

// ob-19 ────────────────────────────────────────────────────────────────
export function TeamTypes() {
  const t = [
    { x: 4, y: 26, n: "Problem-solving", l: ["6 kitchen staff meet", "weekly, save ₹250 a batch"] },
    { x: 184, y: 26, n: "Self-managed", l: ["Night crew sets its", "own schedule"] },
    { x: 4, y: 116, n: "Cross-functional", l: ["Chef + marketer + finance", "design a ₹149 combo"] },
    { x: 184, y: 116, n: "Virtual", l: ["Delivery team on video", "calls with Bengaluru"] },
  ];
  return (
    <Figure
      h={232}
      label="Four team types in a Kolkata biryani chain. Problem-solving: six kitchen staff meet weekly to save ₹250 a batch. Self-managed: the night crew sets its own schedule. Cross-functional: chef, marketer and finance head design a ₹149 combo. Virtual: the delivery team works over video calls with an app partner in Bengaluru."
    >
      <Heading>One biryani chain, four kinds of team</Heading>
      {t.map((b, i) => (
        <Box key={b.n} x={b.x} y={b.y} w={172} h={80} style={i === 2 ? "good" : "warm"} title={b.n} lines={b.l} />
      ))}
      <Txt x={180} y={216} size={10} tone="mocha" anchor="middle">Suggest only · run themselves · mix skills · work remotely</Txt>
    </Figure>
  );
}

// ob-20 ────────────────────────────────────────────────────────────────
export function TeamEffectiveness() {
  const rows = [
    { f: "Context", a: "no leader, no reward", b: "captain listens, pizza" },
    { f: "Composition", a: "6 friends, no roles", b: "5, clear roles" },
    { f: "Process", a: "no target", b: "₹5,000 by 8 pm" },
  ];
  const base = 214;
  return (
    <Figure
      h={248}
      label="Two fest teams each get ₹300 per member. Team A, six friends with no roles, no target and no clear leader, sells ₹1,500. Team B, five members with clear roles, a target of ₹5,000 by 8 pm, a captain who listens and a pizza reward, sells ₹6,200. Context, composition and process make the difference."
    >
      <Txt x={150} y={14} size={10} bold tone="bad" anchor="middle">Team A</Txt>
      <Txt x={286} y={14} size={10} bold tone="good" anchor="middle">Team B</Txt>
      {rows.map((r, i) => {
        const y = 22 + i * 34;
        return (
          <g key={r.f}>
            <Txt x={4} y={y + 18} size={10} bold tone="espresso">{r.f}</Txt>
            <rect x={84} y={y} width={132} height={28} rx="8" className="fill-bad-bg" />
            <Txt x={150} y={y + 18} size={9.5} tone="bad" anchor="middle">{`✗ ${r.a}`}</Txt>
            <rect x={222} y={y} width={134} height={28} rx="8" className="fill-good-bg" />
            <Txt x={289} y={y + 18} size={9.5} tone="good" anchor="middle">{`✓ ${r.b}`}</Txt>
          </g>
        );
      })}
      <rect x={120} y={base - 18} width={60} height={18} rx="5" className="fill-crema" />
      <rect x={256} y={base - 74} width={60} height={74} rx="5" className="fill-coffee" />
      <Txt x={150} y={base - 24} size={11} bold tone="espresso" anchor="middle">₹1,500</Txt>
      <Txt x={286} y={base - 80} size={11} bold tone="espresso" anchor="middle">₹6,200</Txt>
      <Line x1={84} y1={base} x2={356} y2={base} tone="mocha2" width={1} />
      <Txt x={180} y={238} size={10.5} bold tone="coffee" anchor="middle">Same ₹300 each. Different context, mix and process.</Txt>
    </Figure>
  );
}
