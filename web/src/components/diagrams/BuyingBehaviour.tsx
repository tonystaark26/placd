// Card mkt-07: the 2×2 of involvement × brand differences, using the hostel-student
// purchases from "The ₹100 example".

const COL_X = [40, 202];
const ROW_Y = [44, 172];
const W = 154;
const H = 120;

function Laptop() {
  return (
    <g className="stroke-coffee" fill="none" strokeWidth="1.8" strokeLinejoin="round">
      <rect x="4" y="0" width="26" height="17" rx="2" />
      <path d="M0 21 h34 l-3 4 h-28 z" />
    </g>
  );
}
function Mattress() {
  return (
    <g className="stroke-coffee" fill="none" strokeWidth="1.8">
      <rect x="0" y="6" width="34" height="14" rx="4" />
      <path d="M8 6 v14 M17 6 v14 M26 6 v14" strokeWidth="1" />
    </g>
  );
}
function Chips() {
  return (
    <g className="stroke-coffee" fill="none" strokeWidth="1.8" strokeLinejoin="round">
      <path d="M6 0 h22 l-2 4 q4 10 0 18 l2 4 h-22 l2 -4 q-4 -8 0 -18 z" />
      <path d="M12 11 l3 3 l5 -5" strokeWidth="1.4" />
    </g>
  );
}
function Biscuit() {
  return (
    <g className="stroke-coffee" fill="none" strokeWidth="1.8">
      <rect x="2" y="3" width="30" height="20" rx="3" />
      {[9, 17, 25].map((x) => (
        <g key={x}>
          <circle cx={x} cy="10" r="1" className="fill-coffee" stroke="none" />
          <circle cx={x} cy="16" r="1" className="fill-coffee" stroke="none" />
        </g>
      ))}
    </g>
  );
}

function Cell({
  col,
  row,
  type,
  item,
  price,
  lines,
  Icon,
}: {
  col: number;
  row: number;
  type: string;
  item: string;
  price: string;
  lines: [string, string];
  Icon: () => React.ReactElement;
}) {
  const x = COL_X[col];
  const y = ROW_Y[row];
  return (
    <g transform={`translate(${x} ${y})`}>
      <rect width={W} height={H} rx="10" className={row === 0 ? "fill-latte stroke-crema-line" : "fill-foam stroke-line"} />
      <text x="12" y="22" className="fill-espresso font-sans" fontSize="12" fontWeight="600">
        {type}
      </text>
      <g transform="translate(12 36)">
        <Icon />
      </g>
      <text x="56" y="47" className="fill-espresso font-sans" fontSize="10.5">
        {item}
      </text>
      <text x="56" y="61" className="fill-coffee font-sans" fontSize="12" fontWeight="600">
        {price}
      </text>
      <text x="12" y="90" className="fill-mocha font-sans" fontSize="10">
        {lines[0]}
      </text>
      <text x="12" y="104" className="fill-mocha font-sans" fontSize="10">
        {lines[1]}
      </text>
    </g>
  );
}

export function BuyingBehaviour() {
  return (
    <svg viewBox="0 0 360 300" role="img" aria-labelledby="bb-title" className="h-auto w-full">
      <title id="bb-title">
        Four buying types. High involvement and different brands: complex buying, like a ₹70,000 laptop.
        High involvement and similar brands: dissonance-reducing, like a ₹15,000 mattress. Low involvement and
        different brands: variety-seeking, like ₹20 chips in a new flavour. Low involvement and similar brands:
        habitual, like a ₹10 Parle-G.
      </title>

      {/* column headings */}
      <text x={COL_X[0] + W / 2} y="18" textAnchor="middle" className="fill-mocha-2 font-sans" fontSize="9.5" fontWeight="600" letterSpacing="1.2">
        BRANDS LOOK DIFFERENT
      </text>
      <text x={COL_X[1] + W / 2} y="18" textAnchor="middle" className="fill-mocha-2 font-sans" fontSize="9.5" fontWeight="600" letterSpacing="1.2">
        BRANDS LOOK SIMILAR
      </text>
      <line x1={COL_X[0]} y1="30" x2={COL_X[1] + W} y2="30" className="stroke-line" />

      {/* row headings */}
      <text transform={`translate(22 ${ROW_Y[0] + H / 2}) rotate(-90)`} textAnchor="middle" className="fill-coffee font-sans" fontSize="9.5" fontWeight="600" letterSpacing="1.2">
        HIGH INVOLVEMENT
      </text>
      <text transform={`translate(22 ${ROW_Y[1] + H / 2}) rotate(-90)`} textAnchor="middle" className="fill-mocha-2 font-sans" fontSize="9.5" fontWeight="600" letterSpacing="1.2">
        LOW INVOLVEMENT
      </text>

      <Cell col={0} row={0} type="Complex" item="Laptop" price="₹70,000" lines={["Weeks of reviews,", "specs and advice"]} Icon={Laptop} />
      <Cell col={1} row={0} type="Dissonance-reducing" item="Mattress" price="₹15,000" lines={["Picks fast, then asks", "“did I choose right?”"]} Icon={Mattress} />
      <Cell col={0} row={1} type="Variety-seeking" item="New-flavour chips" price="₹20" lines={["Switches brands", "just to try"]} Icon={Chips} />
      <Cell col={1} row={1} type="Habitual" item="Parle-G" price="₹10" lines={["Same pack every", "time, no thinking"]} Icon={Biscuit} />
    </svg>
  );
}
