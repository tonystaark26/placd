// Card econ-03: the café coffee example from "The ₹100 example".
// Same price hike (₹100 → ₹110), two demand curves: flat (elastic) and steep (inelastic).

// Quantity → x position inside a panel (axis starts at x = 34)
const qx = (q: number) => 34 + (q - 50) * 2.2;
const P110 = 45; // y position of ₹110
const P100 = 80; // y position of ₹100
const AXIS_Y = 120;

function Panel({
  x,
  title,
  subtitle,
  qNew,
  curve,
  change,
  revenue,
  result,
  good,
}: {
  x: number;
  title: string;
  subtitle: string;
  qNew: number;
  curve: [number, number, number, number];
  change: string;
  revenue: string;
  result: string;
  good: boolean;
}) {
  const xOld = qx(100);
  const xNew = qx(qNew);
  return (
    <g transform={`translate(${x} 34)`}>
      <text x="0" y="0" className="fill-espresso font-sans" fontSize="12" fontWeight="600">
        {title}
      </text>
      <text x="0" y="15" className="fill-mocha font-sans" fontSize="10.5">
        {subtitle}
      </text>

      <g transform="translate(0 18)">
        {/* axes */}
        <line x1="34" y1="8" x2="34" y2={AXIS_Y} className="stroke-mocha-2" strokeWidth="1" />
        <line x1="34" y1={AXIS_Y} x2="165" y2={AXIS_Y} className="stroke-mocha-2" strokeWidth="1" />
        <text x="30" y={P110 + 3.5} textAnchor="end" className="fill-mocha font-sans" fontSize="9.5">₹110</text>
        <text x="30" y={P100 + 3.5} textAnchor="end" className="fill-mocha font-sans" fontSize="9.5">₹100</text>
        <text x="165" y={AXIS_Y + 13} textAnchor="end" className="fill-mocha-2 font-sans" fontSize="9">
          cups sold →
        </text>

        {/* guide lines */}
        <line x1="34" y1={P110} x2={xNew} y2={P110} className="stroke-line" strokeDasharray="3 3" />
        <line x1="34" y1={P100} x2={xOld} y2={P100} className="stroke-line" strokeDasharray="3 3" />
        <line x1={xNew} y1={P110} x2={xNew} y2={AXIS_Y} className="stroke-line" strokeDasharray="3 3" />
        <line x1={xOld} y1={P100} x2={xOld} y2={AXIS_Y} className="stroke-line" strokeDasharray="3 3" />

        {/* demand curve */}
        <line x1={curve[0]} y1={curve[1]} x2={curve[2]} y2={curve[3]} className="stroke-coffee" strokeWidth="2.5" strokeLinecap="round" />
        <circle cx={xOld} cy={P100} r="3.5" className="fill-coffee" />
        <circle cx={xNew} cy={P110} r="3.5" className="fill-coffee" />

        {/* how far quantity falls */}
        <line x1={xOld} y1={AXIS_Y - 7} x2={xNew + 4} y2={AXIS_Y - 7} className={good ? "stroke-good" : "stroke-bad"} strokeWidth="2" />
        <path d={`M ${xNew + 5} ${AXIS_Y - 10.5} L ${xNew} ${AXIS_Y - 7} L ${xNew + 5} ${AXIS_Y - 3.5}`} fill="none" className={good ? "stroke-good" : "stroke-bad"} strokeWidth="2" />
        <text x={xNew - 4} y={AXIS_Y - 4} textAnchor="end" className={`font-sans ${good ? "fill-good" : "fill-bad"}`} fontSize="10" fontWeight="600">
          {change}
        </text>
      </g>

      {/* revenue result */}
      <text x="0" y="168" className="fill-mocha font-sans" fontSize="10.5">
        Revenue {revenue}
      </text>
      <rect x="0" y="176" width="160" height="24" rx="12" className={good ? "fill-good-bg" : "fill-bad-bg"} />
      <text x="80" y="192" textAnchor="middle" className={`font-sans ${good ? "fill-good" : "fill-bad"}`} fontSize="11" fontWeight="600">
        {result}
      </text>
    </g>
  );
}

export function PriceElasticity() {
  // Elastic: flat line through (₹110, 80 cups) and (₹100, 100 cups)
  // Inelastic: steep line through (₹110, 95 cups) and (₹100, 100 cups)
  return (
    <svg viewBox="0 0 360 250" role="img" aria-labelledby="pe-title" className="h-auto w-full">
      <title id="pe-title">
        A café raises coffee from ₹100 to ₹110. With elastic demand, sales fall from 100 to 80 cups and
        revenue drops to ₹8,800. With inelastic demand, sales fall only to 95 cups and revenue rises to ₹10,450.
      </title>
      <text x="180" y="14" textAnchor="middle" className="fill-espresso font-sans" fontSize="12.5" fontWeight="600">
        Same price hike: coffee ₹100 → ₹110
      </text>
      <Panel
        x={4}
        title="Elastic demand"
        subtitle="Buyers walk away"
        qNew={80}
        curve={[70, 21, 160, 92.7]}
        change="−20%"
        revenue="₹10,000 → ₹8,800"
        result="Lost ₹1,200"
        good={false}
      />
      <Panel
        x={190}
        title="Inelastic demand"
        subtitle="Buyers barely react"
        qNew={95}
        curve={[123.6, 15, 153.4, 110]}
        change="−5%"
        revenue="₹10,000 → ₹10,450"
        result="Gained ₹450"
        good
      />
    </svg>
  );
}
