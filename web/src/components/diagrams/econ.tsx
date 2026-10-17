// Pictures for the Managerial Economics cards. Every number comes from that card's "₹100 example".

import { Arrow, Axes, Box, Curve, Dot, Figure, Guide, Heading, Line, Pill, Txt } from "./parts";

/** Turns a function into an SVG path, sampling `steps` points between `from` and `to` */
function plot(from: number, to: number, f: (t: number) => [number, number], steps = 40) {
  return Array.from({ length: steps + 1 }, (_, i) => {
    const [x, y] = f(from + ((to - from) * i) / steps);
    return `${i === 0 ? "M" : "L"} ${x.toFixed(1)} ${y.toFixed(1)}`;
  }).join(" ");
}

// econ-01 ───────────────────────────────────────────────────────────────
export function LawOfDemand() {
  // samosas → x, price → y
  const x = (q: number) => 50 + q * 13;
  const y = (p: number) => 170 - p * 5.2;
  return (
    <Figure
      h={266}
      label="Samosas at ₹10: ₹100 buys 10. At ₹20: it buys only 5, so quantity demanded falls. Exceptions: Veblen goods like luxury watches, Giffen goods like coarse grains for very poor families, and speculation in gold or shares."
    >
      <Heading>₹100 for samosas</Heading>
      <Axes x={50} y={170} w={170} h={140} xName="samosas →" yName="Price" />
      <Guide ox={50} oy={170} x={x(5)} y={y(20)} xLabel="5" yLabel="₹20" />
      <Guide ox={50} oy={170} x={x(10)} y={y(10)} xLabel="10" yLabel="₹10" />
      <Curve d={`M 75 34 L 210 142`} />
      <Dot x={x(5)} y={y(20)} />
      <Dot x={x(10)} y={y(10)} />
      <Txt x={212} y={150} size={10} bold tone="coffee">
        Demand
      </Txt>
      <Box x={234} y={44} w={122} h={74} style="warm" title="Price doubles" lines={["₹100 buys 10 → 5", "Some switch to", "vada pav"]} />

      <Txt x={2} y={208} size={9.5} bold tone="mocha2" caps>
        WHEN THE LAW BREAKS
      </Txt>
      <Box x={2} y={214} w={113} h={50} title="Veblen" lines={["Luxury watches:", "pricier = status"]} titleSize={11} />
      <Box x={123.5} y={214} w={113} h={50} title="Giffen" lines={["Bajra, for very", "poor families"]} titleSize={11} />
      <Box x={245} y={214} w={113} h={50} title="Speculation" lines={["Gold, shares: buy", "before it rises"]} titleSize={11} />
    </Figure>
  );
}

// econ-02 ───────────────────────────────────────────────────────────────
export function MovementVsShift() {
  const y = (p: number) => 160 - p * 2;
  return (
    <Figure
      h={220}
      label="Left: ice cream price falls from ₹50 to ₹40 and you buy 4 instead of 2, a movement along the same demand curve. Right: price stays ₹50 but pocket money doubles, so you buy 3 instead of 2, and the whole curve shifts right."
    >
      {/* movement */}
      <Txt x={4} y={14} size={11.5} bold tone="espresso">Movement along</Txt>
      <Txt x={4} y={28} size={9.5}>Price ₹50 → ₹40: buy 2 → 4</Txt>
      <Axes x={30} y={160} w={140} h={118} xName="ice creams →" yName="₹" />
      <Guide ox={30} oy={160} x={82} y={y(50)} xLabel="2" yLabel="₹50" />
      <Guide ox={30} oy={160} x={134} y={y(40)} xLabel="4" yLabel="₹40" />
      <Line x1={50} y1={47.7} x2={165} y2={91.9} />
      <Arrow x1={88} y1={51} x2={130} y2={67} tone="coffee" width={2} />
      <Dot x={82} y={y(50)} />
      <Dot x={134} y={y(40)} />

      {/* shift */}
      <Txt x={190} y={14} size={11.5} bold tone="espresso">Shift of the curve</Txt>
      <Txt x={190} y={28} size={9.5}>Pocket money doubles: 2 → 3</Txt>
      <Axes x={215} y={160} w={140} h={118} xName="ice creams →" yName="₹" />
      <Guide ox={215} oy={160} x={267} y={y(50)} xLabel="2" yLabel="₹50" />
      <Line x1={225} y1={43.8} x2={320} y2={80.4} tone="mocha2" width={2} />
      <Line x1={251} y1={43.8} x2={346} y2={80.4} />
      <Txt x={320} y={92} size={9.5} tone="mocha2">D1</Txt>
      <Txt x={346} y={92} size={9.5} bold tone="coffee" anchor="end">D2</Txt>
      <Arrow x1={271} y1={y(50)} x2={289} y2={y(50)} tone="good" width={2} />
      <Dot x={267} y={y(50)} tone="mocha2" />
      <Dot x={293} y={y(50)} />
      <Txt x={293} y={172} size={9.5} anchor="middle">3</Txt>

      <Pill x={4} y={196} w={166} tone="crema">Only its own price changed</Pill>
      <Pill x={190} y={196} w={166} tone="good">Something else changed</Pill>
    </Figure>
  );
}

// econ-04 ───────────────────────────────────────────────────────────────
export function IncomeElasticity() {
  const zero = 190;
  const scale = 3.5; // px per %
  const rows = [
    { name: "Canteen thali", change: 5, e: "0.5", kind: "Necessity", tone: "crema" as const },
    { name: "Café visits", change: 30, e: "3", kind: "Luxury", tone: "good" as const },
    { name: "Instant noodles", change: -10, e: "−1", kind: "Inferior", tone: "bad" as const },
  ];
  return (
    <Figure
      h={232}
      label="Pocket money rises 10%. Canteen thali spending rises 5%, elasticity 0.5, a necessity. Café visits rise 30%, elasticity 3, a luxury. Instant noodles fall 10%, elasticity minus 1, an inferior good."
    >
      <Heading>Pocket money ₹1,000 → ₹1,100 (+10%)</Heading>
      <Line x1={zero} y1={34} x2={zero} y2={196} tone="mocha2" width={1} />
      <Line x1={zero + 10 * scale} y1={34} x2={zero + 10 * scale} y2={196} tone="coffee" width={1} dash />
      <Txt x={zero} y={31} size={9} anchor="middle" tone="mocha2">0</Txt>
      <Txt x={zero + 10 * scale + 4} y={31} size={9} tone="coffee" bold>income +10%</Txt>
      {rows.map((r, i) => {
        const top = 42 + i * 52;
        const w = Math.abs(r.change) * scale;
        const left = r.change >= 0 ? zero : zero - w;
        const fill = r.change < 0 ? "fill-bad" : r.change > 10 ? "fill-good" : "fill-coffee";
        return (
          <g key={r.name}>
            <Txt x={4} y={top + 13} size={11} bold tone="espresso">{r.name}</Txt>
            <Pill x={4} y={top + 20} w={70} h={16} size={9} tone={r.tone}>{r.kind}</Pill>
            <rect x={left} y={top + 4} width={w} height={20} rx="4" className={fill} />
            <Txt
              x={r.change >= 0 ? left + w + 5 : left - 5}
              y={top + 18}
              size={10}
              bold
              tone={r.change < 0 ? "bad" : "espresso"}
              anchor={r.change >= 0 ? "start" : "end"}
            >
              {`${r.change > 0 ? "+" : "−"}${Math.abs(r.change)}%`}
            </Txt>
            <Txt x={r.change >= 0 ? left + w + 5 : left - 5} y={top + 32} size={9} anchor={r.change >= 0 ? "start" : "end"}>
              {`elasticity ${r.e}`}
            </Txt>
          </g>
        );
      })}
      <Txt x={180} y={222} size={9.5} anchor="middle">
        Past the income line → luxury · short → necessity · negative → inferior
      </Txt>
    </Figure>
  );
}

// econ-05 ───────────────────────────────────────────────────────────────
export function CrossElasticity() {
  return (
    <Figure
      h={236}
      label="Coffee price rises 10%, from ₹20 to ₹22. Tea sales rise 15%, from 100 to 115 cups. Cross elasticity is plus 1.5, so tea and coffee are substitutes. A negative number would mean complements, like petrol and petrol cars."
    >
      <Heading>At the college canteen</Heading>
      <Box x={6} y={28} w={142} h={80} title="Coffee" lines={["₹20 → ₹22"]} titleSize={12} />
      <Pill x={16} y={74} w={90} tone="bad">price +10%</Pill>
      <Box x={212} y={28} w={142} h={80} title="Tea" lines={["100 → 115 cups"]} titleSize={12} />
      <Pill x={222} y={74} w={90} tone="good">sales +15%</Pill>
      <Arrow x1={154} y1={68} x2={206} y2={68} tone="coffee" width={2} />
      <Txt x={180} y={88} size={9} anchor="middle">buyers</Txt>
      <Txt x={180} y={99} size={9} anchor="middle">switch</Txt>

      <rect x={6} y={122} width={348} height={42} rx="10" className="fill-coffee" />
      <Txt x={180} y={148} size={12.5} bold tone="cream" anchor="middle">
        Cross elasticity = 15 ÷ 10 = +1.5
      </Txt>

      <Box x={6} y={176} w={170} h={54} style="good" title="Positive (+)" lines={["Substitutes: tea ↔ coffee"]} titleSize={11} />
      <Box x={184} y={176} w={170} h={54} style="warm" title="Negative (−)" lines={["Complements: petrol ↔", "petrol cars"]} titleSize={11} />
    </Figure>
  );
}

// econ-06 ───────────────────────────────────────────────────────────────
export function OpportunityCost() {
  return (
    <Figure
      h={222}
      label="With ₹100 and one evening you can choose pizza, a used exam guide, or an auto home. You choose pizza. The exam guide, your next-best option, is the opportunity cost. The auto ride doesn't count."
    >
      <rect x={100} y={8} width={160} height={40} rx="10" className="fill-coffee" />
      <Txt x={180} y={33} size={12} bold tone="cream" anchor="middle">₹100 + one evening</Txt>
      <Arrow x1={150} y1={50} x2={64} y2={96} />
      <Arrow x1={180} y1={50} x2={180} y2={96} />
      <Arrow x1={210} y1={50} x2={296} y2={96} />

      <Box x={4} y={100} w={112} h={82} style="good" title="Pizza ✓" lines={["Your choice"]} />
      <Box x={124} y={100} w={112} h={82} style="warm" title="Exam guide" lines={["Your next-best", "option"]} />
      <Pill x={130} y={154} w={100} tone="coffee" size={9}>Opportunity cost</Pill>
      <Box x={244} y={100} w={112} h={82} style="faded" title="Auto home" lines={["3rd choice:", "doesn't count"]} dash />

      <Txt x={180} y={208} size={10} anchor="middle">
        The cost of a choice = the best thing you gave up
      </Txt>
    </Figure>
  );
}

// econ-07 ───────────────────────────────────────────────────────────────
export function PPF() {
  const x = (d: number) => 50 + d * 4;
  const y = (s: number) => 190 - s * 2.2;
  const k = 1.263; // bend that makes 20 dosas + 35 sandwiches sit on the curve
  const inner = plot(0, 40, (d) => [x(d), y(60 * (1 - Math.pow(d / 40, k)))]);
  const outer = plot(0, 48, (d) => [x(d), y(72 * (1 - Math.pow(d / 48, k)))]);
  return (
    <Figure
      h={220}
      label="The canteen's production possibility frontier: 40 dosas or 60 sandwiches, or mixes like 20 dosas plus 35 sandwiches on the curve. With a cook off sick, making 15 of each is inside the curve. A dosa machine shifts the whole curve out."
    >
      <Heading>Canteen: 2 cooks, 1 hour</Heading>
      <Axes x={50} y={190} w={210} h={162} xName="dosas →" yName="sandwiches" />
      <Txt x={46} y={y(60) + 3.5} size={9.5} anchor="end">60</Txt>
      <Txt x={x(40)} y={202} size={9.5} anchor="middle">40</Txt>
      <Curve d={outer} tone="mocha2" width={1.8} dash />
      <Curve d={inner} />
      <Arrow x1={172} y1={146} x2={182} y2={133} tone="good" width={1.8} />
      <Txt x={150} y={52} size={10} bold tone="good">Dosa machine:</Txt>
      <Txt x={150} y={65} size={10} tone="good">the curve shifts out</Txt>

      <Line x1={x(20)} y1={y(35)} x2={262} y2={y(35)} tone="line" width={1} dash />
      <Dot x={x(20)} y={y(35)} tone="good" r={4} />
      <Txt x={266} y={y(35) - 6} size={10} bold tone="espresso">On the curve</Txt>
      <Txt x={266} y={y(35) + 7} size={9.5}>20 dosas +</Txt>
      <Txt x={266} y={y(35) + 19} size={9.5}>35 sandwiches</Txt>

      <Line x1={x(15)} y1={y(15)} x2={262} y2={y(15)} tone="line" width={1} dash />
      <Dot x={x(15)} y={y(15)} tone="bad" r={4} />
      <Txt x={266} y={y(15) - 6} size={10} bold tone="bad">Inside: wasted</Txt>
      <Txt x={266} y={y(15) + 7} size={9.5}>a cook is off sick,</Txt>
      <Txt x={266} y={y(15) + 19} size={9.5}>only 15 of each</Txt>
    </Figure>
  );
}

// econ-08 ───────────────────────────────────────────────────────────────
export function LawOfSupply() {
  const x = (g: number) => 50 + g * 5;
  const y = (p: number) => 185 - p * 3.6;
  return (
    <Figure
      h={214}
      label="A juice stall makes 20 glasses at ₹20. At the fest the price rises to ₹30 and it makes 30, a movement along the supply curve. When oranges double in price it makes only 15 glasses even at ₹30: the supply curve shifts left."
    >
      <Heading>Juice stall at the college fest</Heading>
      <Axes x={50} y={185} w={190} h={155} xName="glasses →" yName="Price" />
      <Guide ox={50} oy={185} x={x(20)} y={y(20)} xLabel="20" yLabel="₹20" />
      <Guide ox={50} oy={185} x={x(30)} y={y(30)} xLabel="30" yLabel="₹30" />
      <Guide ox={50} oy={185} x={x(15)} y={y(30)} xLabel="15" />
      <Line x1={75} y1={113} x2={155} y2={55.4} tone="bad" width={2} />
      <Line x1={100} y1={149} x2={230} y2={55.4} />
      <Txt x={232} y={52} size={10} bold tone="coffee">S1</Txt>
      <Txt x={150} y={50} size={10} bold tone="bad">S2</Txt>
      <Arrow x1={159} y1={116} x2={198} y2={88} tone="coffee" width={2} />
      <Arrow x1={194} y1={y(30)} x2={132} y2={y(30)} tone="bad" width={2} />
      <Dot x={x(20)} y={y(20)} />
      <Dot x={x(30)} y={y(30)} />
      <Dot x={x(15)} y={y(30)} tone="bad" />

      <Box x={250} y={52} w={106} h={58} style="warm" title="Fest: ₹30" lines={["20 → 30 glasses", "move along S1"]} titleSize={11} />
      <Box x={250} y={118} w={106} h={58} style="bad" title="Oranges ×2" lines={["only 15 glasses", "shift left to S2"]} titleSize={11} />
    </Figure>
  );
}

// econ-09 ───────────────────────────────────────────────────────────────
export function Equilibrium() {
  const x = (q: number) => 50 + q * 1.35;
  const y = (p: number) => 195 - p * 7.5;
  return (
    <Figure
      h={224}
      label="The canteen makes 100 samosas. At ₹10 exactly 100 students want one: equilibrium. At ₹15 only 60 want one, a surplus of 40, so the price falls. At ₹5, 150 want one, a shortage of 50, so the price rises."
    >
      <Heading>The canteen makes 100 samosas</Heading>
      <Axes x={50} y={195} w={215} h={165} xName="samosas →" yName="Price" />
      <Guide ox={50} oy={195} x={x(60)} y={y(15)} xLabel="60" yLabel="₹15" />
      <Guide ox={50} oy={195} x={x(150)} y={y(5)} xLabel="150" yLabel="₹5" />
      <Txt x={46} y={y(10) + 3.5} size={9.5} anchor="end">₹10</Txt>
      <Line x1={50} y1={y(10)} x2={x(100)} y2={y(10)} tone="line" width={1} dash />

      {/* fixed supply */}
      <Line x1={x(100)} y1={38} x2={x(100)} y2={195} tone="mocha2" width={2.5} />
      <Txt x={x(100) + 5} y={44} size={9.5} bold tone="mocha2">Supply</Txt>
      <Txt x={x(100)} y={207} size={9.5} anchor="middle">100</Txt>
      {/* demand */}
      <Curve d={`M 100 61 L ${x(60)} ${y(15)} L ${x(100)} ${y(10)} L ${x(150)} ${y(5)} L 258 162.5`} />
      <Txt x={96} y={56} size={9.5} bold tone="coffee" anchor="end">Demand</Txt>

      {/* gaps */}
      <Line x1={x(60)} y1={y(15)} x2={x(100)} y2={y(15)} tone="bad" width={4} />
      <Line x1={x(100)} y1={y(5)} x2={x(150)} y2={y(5)} tone="bad" width={4} />
      <Dot x={x(100)} y={y(10)} tone="good" r={5} />

      <Txt x={268} y={y(15) - 2} size={10} bold tone="bad">₹15: surplus 40</Txt>
      <Txt x={268} y={y(15) + 11} size={9.5}>price will fall</Txt>
      <Txt x={268} y={y(10) - 2} size={10} bold tone="good">₹10: balance</Txt>
      <Txt x={268} y={y(10) + 11} size={9.5}>100 = 100</Txt>
      <Txt x={268} y={y(5) - 8} size={10} bold tone="bad">₹5: shortage 50</Txt>
      <Txt x={268} y={y(5) + 5} size={9.5}>price will rise</Txt>
    </Figure>
  );
}

// econ-10 ───────────────────────────────────────────────────────────────
export function DiminishingUtility() {
  const base = 178;
  const cups = [
    { n: "1st", v: 30 },
    { n: "2nd", v: 20 },
    { n: "3rd", v: 15 },
    { n: "4th", v: 10 },
  ];
  const price = 15;
  return (
    <Figure
      h={246}
      label="Each extra cup of chai is worth less: the first ₹30, the second ₹20, the third ₹15, the fourth ₹10. Chai costs ₹15, so you stop at three cups. By the 11th cup satisfaction is negative and total satisfaction falls from 99 to 95."
    >
      <Heading>What each extra chai is worth to you</Heading>
      <Line x1={40} y1={base} x2={330} y2={base} tone="mocha2" width={1} />
      {cups.map((c, i) => {
        const x = 62 + i * 68;
        const h = c.v * 4;
        const buy = c.v >= price;
        return (
          <g key={c.n}>
            <rect x={x} y={base - h} width={46} height={h} rx="5" className={buy ? "fill-coffee" : "fill-crema stroke-crema-line"} strokeDasharray={buy ? undefined : "4 3"} />
            <Txt x={x + 23} y={base - h - 6} size={11} bold tone={buy ? "espresso" : "mocha2"} anchor="middle">{`₹${c.v}`}</Txt>
            <Txt x={x + 23} y={base + 14} size={10} anchor="middle">{`${c.n} cup`}</Txt>
            <Pill x={x + 3} y={base + 22} w={40} h={16} size={9} tone={buy ? "good" : "bad"}>{buy ? "buy" : "stop"}</Pill>
          </g>
        );
      })}
      <Line x1={40} y1={base - price * 4} x2={330} y2={base - price * 4} tone="bad" width={1.5} dash />
      <Txt x={332} y={base - price * 4 + 3.5} size={9.5} bold tone="bad">₹15</Txt>
      <Txt x={332} y={base - price * 4 + 15} size={9} tone="bad">price</Txt>
      <Txt x={180} y={236} size={9.5} anchor="middle">
        By the 11th cup it&apos;s −4: total satisfaction falls (99 → 95)
      </Txt>
    </Figure>
  );
}

// econ-11 ───────────────────────────────────────────────────────────────
export function IndifferenceCurves() {
  const x = (c: number) => 50 + c * 17;
  const y = (s: number) => 190 - s * 24;
  // s = k ÷ c^(2/3); k = 7.56 touches the budget line exactly at 4 chai + 3 samosas
  const ic = (k: number, from: number) => plot(from, 11, (c) => [x(c), y(k / Math.pow(c, 2 / 3))]);
  return (
    <Figure
      h={220}
      label="With ₹100, chai at ₹10 and samosas at ₹20, the budget line runs from 10 chai to 5 samosas. The best mix is where the budget line just touches the highest reachable indifference curve, for example 4 chai and 3 samosas. Higher curves can't be afforded; lower ones are less satisfying."
    >
      <Heading>₹100: chai ₹10, samosa ₹20</Heading>
      <Axes x={50} y={190} w={200} h={160} xName="chai →" yName="samosas" />
      <Txt x={46} y={y(5) + 3.5} size={9.5} anchor="end">5</Txt>
      <Txt x={46} y={y(3) + 3.5} size={9.5} anchor="end">3</Txt>
      <Txt x={x(4)} y={202} size={9.5} anchor="middle">4</Txt>
      <Txt x={x(10)} y={202} size={9.5} anchor="middle">10</Txt>
      <Line x1={50} y1={y(3)} x2={x(4)} y2={y(3)} tone="line" width={1} dash />
      <Line x1={x(4)} y1={y(3)} x2={x(4)} y2={190} tone="line" width={1} dash />

      <Line x1={x(0)} y1={y(5)} x2={x(10)} y2={y(0)} tone="espresso" width={2} />
      <Txt x={x(10) + 4} y={184} size={9.5} bold tone="espresso">budget</Txt>
      <Curve d={ic(10.5, 2.2)} tone="mocha2" width={1.8} dash />
      <Curve d={ic(7.56, 1.6)} />
      <Curve d={ic(5, 1.2)} tone="mocha2" width={1.5} />
      <Txt x={242} y={y(10.5 / Math.pow(11, 2 / 3)) + 3} size={9}>IC3: can&apos;t afford</Txt>
      <Txt x={242} y={y(7.56 / Math.pow(11, 2 / 3)) + 3} size={9} bold tone="coffee">IC2: best reachable</Txt>
      <Txt x={242} y={y(5 / Math.pow(11, 2 / 3)) + 4} size={9}>IC1: less happy</Txt>

      <Line x1={x(4) + 4} y1={y(3) - 4} x2={250} y2={74} tone="line" width={1} dash />
      <Dot x={x(4)} y={y(3)} tone="good" r={5} />
      <Box x={250} y={36} w={106} h={52} style="good" title="Best mix" lines={["4 chai + 3 samosas"]} titleSize={11} />
      <Txt x={260} y={82} size={9.5} tone="good">MRS = Pₓ ÷ Pᵧ</Txt>
    </Figure>
  );
}
