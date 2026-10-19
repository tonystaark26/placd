# Cost & Financial Accounting: Batch 1, Materials & Labour Cost

Status of every card: **VERIFIED** (reviewed by the user, 19 Oct 2026).
Format: [CARD_FORMAT.md](../CARD_FORMAT.md) · Rule: news examples from 2024 onwards, fact-checked.
Sources: `cost module 2.LMS.pptx`, `Module-2 Inventory_Control_Concept ( NSA).pptx`, `Formulas for Inventory control.docx`,
`LMS-MOdule -3.pptx`, `Module -3 Labour_Cost_Concept (NSA).pptx`.
All ₹ examples below are new, written for PLACED; they follow the course formulas but don't copy the slides' worked problems.

---

## Card C1 · Stock Levels: Reorder, Minimum, Maximum & Danger

**In one line**
Stock levels tell a storekeeper when to reorder, the lowest safe stock, and the most stock worth holding, so you never run out and never overstock.

**Explain it simply**
- **Reorder level (ROL)** = Maximum usage × Maximum lead time. When stock falls to this level, place the next order.
- **Minimum level** = ROL − (Normal usage × Normal lead time). Falling below it is a warning sign.
- **Maximum level** = ROL + Reorder quantity − (Minimum usage × Minimum lead time). Holding more than this wastes money and space.
- **Average stock** = Minimum level + ½ × Reorder quantity.
- **Danger level** = Normal usage × time needed for an *emergency* purchase. Below this, buy urgently, even at a higher price.
- **Safety stock** is the cushion that protects you when usage jumps or the supplier is late.

If "normal" values aren't given, take the average of the maximum and minimum.

**The ₹100 example: milk packets at the college canteen**
The canteen uses **20–40 packets a day** (normal 30). The dairy takes **2–4 days** to deliver (normal 3), and each order is **150 packets**.
- Reorder level = 40 × 4 = **160 packets**
- Minimum level = 160 − (30 × 3) = **70 packets**
- Maximum level = 160 + 150 − (20 × 2) = **270 packets**
- Average stock = 70 + ½ × 150 = **145 packets**
- If an emergency delivery takes 1 day, the danger level = 30 × 1 = **30 packets**

**Seen in the news** ✅ Verified (2024–25)
From early 2024, attacks on ships in the Red Sea forced many vessels to sail around Africa's
Cape of Good Hope instead of using the Suez Canal. For Indian exporters this added roughly
**10–20 days** per voyage, and India Ratings estimated working-capital cycles could stretch by
**15–20 days**. A longer lead time pushes the **reorder level** up: firms must order earlier and
hold more stock, which ties up more cash.
*Sources: Business Standard and Reuters reporting, Feb 2024; Outlook Business ("1,000 days of the Red Sea crisis", citing GTRI).*

**How interviewers ask it**
> *"Your key supplier's delivery time doubles. What changes in your inventory policy?"*

**Strong answer:** "The reorder level is maximum usage times maximum lead time, so if lead time
doubles, the reorder level roughly doubles too. I'd order earlier, raise safety stock for the
uncertainty, and accept higher working capital in the short run. Then I'd fix the cause: add a
second or local supplier, so we're not holding extra stock forever."

**Common trap**
Ordering when stock hits the **minimum** level. By then it's too late: the order should go out at the **reorder** level, which is higher.

**Quiz**
1. *(Concept)* Maximum usage is 40 units a day and maximum lead time is 4 days. What's the reorder level? **Answer: 160 units** (40 × 4).
2. *(Application)* Reorder level is 500 units, normal usage 60 units a week and normal lead time 5 weeks. What's the minimum level? **Answer: 200 units** (500 − 60 × 5).
3. *(Mini case)* Shipping delays add two weeks to an importer's lead time. What should it do first, and what's the cost?
   **Answer:** Raise the **reorder level and safety stock** (order earlier) so production doesn't stop. The cost is more **working capital** tied up in stock, so it should also look for nearer or second suppliers.

**Source:** `cost module 2.LMS.pptx` slides 3–7 · `Formulas for Inventory control.docx`
**Status:** VERIFIED

---

## Card C2 · Economic Order Quantity (EOQ)

**In one line**
EOQ is the order size that keeps the total of **ordering costs + holding costs** as low as possible.

**Explain it simply**
EOQ = √(2DS ÷ H), where **D** = annual demand (units), **S** = cost of placing one order, **H** = cost of holding one unit for a year.
- Order **too often** in small lots → high ordering costs (delivery, paperwork).
- Order **too much** at once → high holding costs (storage, insurance, damage, and the **interest** on cash tied up in stock).
- At EOQ, yearly ordering cost = yearly holding cost.

It assumes steady demand, a fixed lead time, constant costs and no bulk discounts. Real life often breaks these.

**The ₹100 example: notebooks at a stationery shop**
The shop sells **3,600 notebooks a year**. Each order costs **₹50** (delivery + paperwork), and holding one notebook for a year costs **₹4**.
- EOQ = √(2 × 3,600 × 50 ÷ 4) = √90,000 = **300 notebooks**, so **12 orders a year** (once a month).
- Ordering cost = 12 × ₹50 = **₹600**. Holding cost = average stock 150 × ₹4 = **₹600**. Total **₹1,200**.
- Compare ordering 900 at a time: 4 orders × ₹50 = ₹200, but holding = 450 × ₹4 = ₹1,800. Total **₹2,000**.

**Seen in the news** ✅ Verified (2025)
The RBI cut the repo rate four times in 2025, by **125 basis points** in all, ending at **5.25%**
on 5 December 2025. Cheaper borrowing lowers the **interest cost of money stuck in stock**, which
is part of the holding cost (H). A lower H means a **larger EOQ**: firms can afford to order a little
more at a time. Because of the square root, the effect is gentle, not dramatic.
*Sources: RBI Monetary Policy Statement, 5 Dec 2025; Business Standard, 5 Dec 2025.*

**How interviewers ask it**
> *"Why might a company order more than its EOQ?"*

**Strong answer:** "EOQ only balances ordering and holding costs, and it assumes steady prices and
supply. A company may order more to get a **bulk discount**, to buy ahead of an expected **price rise**,
or to protect against **supply disruption**. I'd compare the total cost, including the purchase
price and the risk of a stockout, not just the EOQ cost."

**Common trap**
Thinking EOQ gives the cheapest *purchase price*. It doesn't consider discounts at all; it only minimises ordering + holding costs.

**Quiz**
1. *(Concept)* At the EOQ, how do yearly ordering costs compare with yearly holding costs? **Answer: They're equal.**
2. *(Application)* D = 800 units, S = ₹100 per order, H = ₹4 per unit per year. What's the EOQ? **Answer: 200 units** (√(2 × 800 × 100 ÷ 4) = √40,000).
3. *(Mini case)* A supplier offers a 5% discount if you order 1,000 units at a time, well above your EOQ of 300. How do you decide?
   **Answer:** Compare **total annual cost** both ways: purchase cost + ordering cost + holding cost. Take the discount only if the saving on price beats the extra holding cost (and you have space and cash).

**Source:** `cost module 2.LMS.pptx` slides 14–19 · `Module-2 Inventory_Control_Concept ( NSA).pptx` slide 7
**Status:** VERIFIED

---

## Card C3 · Valuing Stock: FIFO, LIFO & Weighted Average

**In one line**
When identical items were bought at different prices, the valuation method decides which cost goes to sales and which stays in closing stock, and that changes reported profit.

**Explain it simply**
- **FIFO (First In, First Out):** the oldest costs go to sales first; closing stock is at the **latest** prices.
- **LIFO (Last In, First Out):** the newest costs go to sales first; closing stock is at the **oldest** prices.
- **Weighted average:** one average cost per unit = total cost ÷ total units.

When prices are **rising**: FIFO shows **lower** cost of sales, so **higher profit**; LIFO shows higher cost, so lower profit.
In India, **Ind AS 2 and AS 2 don't allow LIFO** in financial statements, though it still appears in cost accounting exams.
These are **costing assumptions**: the physical goods can move in any order.

**The ₹100 example: pens at the college stationery shop**
The shop buys **10 pens at ₹10**, then **10 more at ₹14**. It sells **12 pens at ₹20** each (revenue ₹240).
| Method | Cost of 12 pens sold | Closing stock (8 pens) | Profit |
|---|---|---|---|
| FIFO | 10×₹10 + 2×₹14 = **₹128** | 8×₹14 = ₹112 | **₹112** |
| LIFO | 10×₹14 + 2×₹10 = **₹160** | 8×₹10 = ₹80 | **₹80** |
| Weighted avg (₹12) | 12×₹12 = **₹144** | 8×₹12 = ₹96 | **₹96** |

Same pens, same sales, three different profits.

**Seen in the news** ✅ Verified (2024)
Cocoa prices hit records in 2024 after poor harvests in West Africa. Futures passed **$10,000 a
tonne in March 2024** and **$11,000 in April**, several times their usual level. Chocolate makers
like KitKat's owner Nestlé and Hershey said the costs would squeeze them. Under FIFO, cheaper cocoa
bought earlier flows into cost of sales first, so margins look fine at first, then shrink as the
expensive cocoa works its way through.
*Sources: Bloomberg, 28 Mar 2024; BNN Bloomberg, 19 Jun 2024.*

**How interviewers ask it**
> *"Prices are rising. Which valuation method shows higher profit, and why?"*

**Strong answer:** "FIFO. It charges the older, cheaper costs to sales, so cost of sales is lower
and profit higher, while closing stock reflects current prices. LIFO would show lower profit and
lower tax, but LIFO isn't permitted under Ind AS 2 or AS 2 in India. So Indian companies choose
between FIFO and weighted average."

**Common trap**
Thinking FIFO or LIFO describes how goods physically leave the store. It's only how **costs** are assigned.

**Quiz**
1. *(Concept)* Under FIFO, closing stock is valued at… **Answer: The latest purchase prices.**
2. *(Application)* Opening stock 50 units at ₹20, purchase 50 units at ₹30, issue 60 units. Cost of the issue under FIFO? **Answer: ₹1,300** (50 × ₹20 + 10 × ₹30).
3. *(Mini case)* Inflation is high, and a CFO in India wants to switch to LIFO to cut taxes. What do you tell her?
   **Answer:** **LIFO isn't allowed** under Ind AS 2 / AS 2 for financial statements. She can choose FIFO or weighted average. Weighted average smooths price swings.

**Source:** `cost module 2.LMS.pptx` slides 20–33 · `Formulas for Inventory control.docx`
**Status:** VERIFIED

---

## Card C4 · ABC Analysis

**In one line**
Not all stock deserves the same attention: a few items make up most of the value, so control them tightly and keep the rest simple.

**Explain it simply**
ABC analysis follows the **Pareto (80/20) principle**:
| Category | Share of items | Share of value | Control |
|---|---|---|---|
| **A** | about 10–20% | about 70–80% | Very strict: frequent review, accurate records |
| **B** | about 20–30% | about 15–25% | Moderate |
| **C** | about 50–70% | about 5–10% | Simple: bulk orders, basic checks |

**Limitation:** it looks only at **value**, not at how **critical** an item is. That's why firms pair it with **VED analysis** (Vital, Essential, Desirable).

**The ₹100 example: the canteen's monthly purchases (₹1,00,000, 50 items)**
- **A:** 5 items (10%): gas cylinders, paneer, oil, rice, milk = **₹75,000** (75%). Check daily, buy carefully.
- **B:** 15 items (30%): vegetables, bread, sugar… = **₹18,000** (18%). Weekly review.
- **C:** 30 items (60%): napkins, toothpicks, spices… = **₹7,000** (7%). Buy in bulk once a month.

**Seen in the news** ✅ Verified (2025)
In April 2025 China began requiring export licences for rare-earth magnets, and supplies to India
slowed sharply. These magnets are a **tiny share** of a vehicle's cost (a C item by value), yet
they are **vital** for electric motors. Bajaj Auto warned its electric-scooter output would be
disrupted from July 2025, and Maruti Suzuki reportedly cut its near-term e-Vitara production
targets. A pure ABC view would have missed the risk.
*Sources: Mobility Outlook and YourStory, Jun 2025; Outlook Business, 2025.*

**How interviewers ask it**
> *"A plant has 5,000 spare parts. How would you control them?"*

**Strong answer:** "ABC first: rank parts by annual consumption value, then focus tight control,
accurate counts and careful ordering on the few A items that hold most of the money. But I'd add a
criticality check like VED, because a cheap C part that stops the line deserves safety stock too.
The 2025 rare-earth magnet shortage is a good example."

**Common trap**
Treating C items as unimportant. **Low value isn't low risk.**

**Quiz**
1. *(Concept)* In ABC analysis, A items are roughly… **Answer: 10–20% of items but 70–80% of value.**
2. *(Application)* An item is 5% of the number of items but 60% of the value. Which category? **Answer: A.**
3. *(Mini case)* A ₹50 sensor runs out and stops a whole production line. What did the company's ABC-only system miss?
   **Answer:** **Criticality.** ABC ranks by value only. A VED (Vital, Essential, Desirable) check would mark the sensor as vital and keep safety stock.

**Source:** `cost module 2.LMS.pptx` slides 38–41 · `Module-2 Inventory_Control_Concept ( NSA).pptx` slides 5–6
**Status:** VERIFIED

---

## Card C5 · Inventory Turnover Ratio

**In one line**
How many times a business sells and replaces its stock in a year: faster turnover means less cash stuck on shelves.

**Explain it simply**
- **Inventory turnover** = Cost of goods sold ÷ Average inventory
- **Average inventory** = (Opening stock + Closing stock) ÷ 2
- **Inventory days** = 365 ÷ Inventory turnover (how long stock sits, on average)

**High** turnover means stock moves fast and less cash is tied up. **Low** turnover means slow sales, overstocking or obsolete stock.
But *very* high turnover can also mean the business keeps running out.

**The ₹100 example: a Kolkata kirana store**
Opening stock **₹40,000**, closing stock **₹60,000**, cost of goods sold **₹6,00,000** in the year.
- Average inventory = (40,000 + 60,000) ÷ 2 = **₹50,000**
- Turnover = 6,00,000 ÷ 50,000 = **12 times a year**
- Inventory days = 365 ÷ 12 ≈ **30 days**: the shelves are refilled about once a month.

A stationery shop with a turnover of **4** keeps stock for about **91 days**, so three times as much cash sits on its shelves for the same sales.

**Seen in the news** ✅ Verified (FY2025)
**DMart** (Avenue Supermarts) is known for moving stock fast. It holds only about **a month of
inventory**: roughly **29–36 days**, depending on how it's calculated (investor-update summaries
vs Screener's FY25 data). It does this by stocking a focused range of fast-selling items. With
FY25 revenue of about **₹57,790 crore**, every day of stock saved frees up a large amount of cash.
*Sources: Screener.in (Avenue Supermarts, standalone FY25); Quartr summaries of DMart investor updates.*

**How interviewers ask it**
> *"A company's inventory turnover fell from 8 to 5. Is that good or bad?"*

**Strong answer:** "Usually a warning. Stock now sits about 73 days instead of 46, so more cash is
tied up and the risk of obsolete or damaged stock rises. But I'd check why first: slowing demand
is bad news, while deliberately stocking up before a price rise or a new store launch may be
sensible. I'd compare with competitors too."

**Common trap**
Thinking higher turnover is *always* better. Too high can mean frequent stockouts and lost sales.

**Quiz**
1. *(Concept)* Inventory turnover is… **Answer: Cost of goods sold ÷ average inventory.**
2. *(Application)* Opening stock ₹30,000, closing stock ₹50,000, cost of goods sold ₹2,40,000. What's the turnover? **Answer: 6 times** (2,40,000 ÷ 40,000), about 61 days.
3. *(Mini case)* Two grocery chains have the same sales. Chain X turns its stock 12 times a year, chain Y 6 times. What does that tell an investor?
   **Answer:** **X needs about half as much cash tied up in stock** (about 30 vs 61 days), so it can fund growth more cheaply. Y may be overstocked or carry slow-moving items.

**Source:** `cost module 2.LMS.pptx` slides 34–37
**Status:** VERIFIED

---

## Card C6 · Paying Workers: Time Rate, Piece Rate, Halsey & Rowan

**In one line**
Workers can be paid for **time** spent, for **output** produced, or with a **bonus for time saved**, and each choice changes cost, speed and quality.

**Explain it simply**
- **Time rate:** wages = hours × rate. Simple and good for quality, but no push to work faster.
- **Piece rate:** wages = units × rate per unit. Rewards speed, but quality can suffer. Variants: straight piece rate, **Taylor's differential** piece rate (a higher rate for efficient workers), and piece rate with a **guaranteed** minimum time wage.
- **Halsey plan:** time wages + **50% of the time saved** × rate.
- **Rowan plan:** time wages + (time saved ÷ standard time) × time taken × rate.
- Labour is **direct** (traceable to a product, like machine operators) or **indirect** (supervisors, security).

**The ₹100 example: a print-shop job**
Standard time **8 hours**, actual time **6 hours**, rate **₹100 an hour**. Time saved = 2 hours.
- Time wages = 6 × ₹100 = **₹600**
- **Halsey:** bonus = 50% × 2 × ₹100 = ₹100 → **₹700**
- **Rowan:** bonus = (2 ÷ 8) × 6 × ₹100 = ₹150 → **₹750**

Rowan pays more here, because the worker saved **less than half** the standard time. If a worker saves **more than half**, Halsey pays more. At exactly half, they're equal.

**Seen in the news** ✅ Verified (Nov 2025)
India's **four labour codes** came into effect on **21 November 2025**, replacing 29 older labour
laws. The Code on Wages sets overtime pay at **twice the normal wage rate** as the legal minimum
(our course notes calculate overtime at 1.5×, and the problems here follow the notes). The Code on Social Security also brings **gig and
platform workers** into social security coverage, though many of the detailed rules and schemes are
still being notified.
*Sources: KPMG India Flash News, Nov 2025; SCC Online, 21 Nov 2025; RSM India newsflash.*

**How interviewers ask it**
> *"Should a call centre pay agents by the hour or per call?"*

**Strong answer:** "Pure piece rate (per call) would push speed at the cost of quality: agents would
rush customers. I'd use a time rate as the base, plus an incentive tied to measurable quality, like
resolution rate and customer ratings. Piece rate works best when output is easy to count and quality
is easy to check, as in garment stitching or data entry."

**Common trap**
Assuming Halsey always pays less than Rowan. It depends on how much time is saved; they're equal when exactly half the standard time is saved.

**Quiz**
1. *(Concept)* Under a piece rate system, wages depend on… **Answer: Units produced.**
2. *(Application)* A worker's normal day is 8 hours at ₹80 an hour. She works 10 hours, with overtime at 1.5 times the normal rate. Total wages? **Answer: ₹880** (8 × 80 = 640, plus 2 × 120 = 240).
3. *(Mini case)* Standard time is 12 hours, a worker takes 9 hours, and the rate is ₹60 an hour. Which plan does the worker prefer, Halsey or Rowan?
   **Answer: Rowan.** Time wages ₹540. Halsey bonus = 50% × 3 × 60 = ₹90 (₹630). Rowan bonus = (3 ÷ 12) × 9 × 60 = ₹135 (₹675). She saved less than half the standard time, so Rowan pays more.

**Source:** `LMS-MOdule -3.pptx` slides 3–13 · `Module -3 Labour_Cost_Concept (NSA).pptx` slides 4–7
**Status:** VERIFIED

---

## Card C7 · Labour Turnover

**In one line**
Labour turnover measures how fast people leave and are replaced, and every exit carries hidden costs well beyond the salary.

**Explain it simply**
All three methods divide by **average workers** = (workers at start + workers at end) ÷ 2, then × 100.
- **Separation method:** people who **left** ÷ average workers
- **Replacement method:** people hired **to replace** leavers ÷ average workers
- **Flux method:** (separations + replacements) ÷ average workers

New hires for **expansion** aren't replacements. Turnover costs include hiring, training, slower output from new joiners, overtime for the team covering gaps, and lost knowledge.
Causes: low pay, poor conditions, little growth, better offers. Remedies: fair pay, training, career paths, welfare.

**The ₹100 example: canteen staff in a year**
**18 staff** at the start, **22** at the end, so the average is **20**. **4 people left** and **3 were hired to replace them** (the rest were new posts).
- Separation = 4 ÷ 20 × 100 = **20%**
- Replacement = 3 ÷ 20 × 100 = **15%**
- Flux = (4 + 3) ÷ 20 × 100 = **35%**

If hiring and training each new cook costs ₹15,000, those 3 replacements cost **₹45,000** before counting slower service while they learn.

**Seen in the news** ✅ Verified (FY2025)
India's IT majors track attrition (their word for turnover) every quarter. For the twelve months
to March 2025, **TCS** reported attrition of **13.3%** and **Wipro 15%**. At companies employing
hundreds of thousands of people, even one percentage point means thousands of people to
re-hire and re-train, which is why retention, training and career paths get board-level attention.
*Sources: Storyboard18, TCS Q4 FY25 results (Apr 2025); People Matters, Wipro Q4 FY25 (Apr 2025).*

**How interviewers ask it**
> *"Attrition in your team is 25%. What does that cost the company?"*

**Strong answer:** "The visible costs are recruitment and training for one in four people every
year. The hidden costs are bigger: months of lower productivity while new joiners learn, overtime
for the people covering gaps, mistakes, lost client knowledge, and lower morale. I'd find the
causes through exit interviews, then target the biggest one, whether that's pay, managers or growth."

**Common trap**
Counting hires for **new posts** (expansion) as replacements. Only hires that fill someone's exit are replacements.

**Quiz**
1. *(Concept)* The separation method divides the number of leavers by… **Answer: The average number of workers.**
2. *(Application)* Average workers 200 and 50 separations. What's labour turnover by the separation method? **Answer: 25%.**
3. *(Mini case)* A factory starts the year with 80 workers and ends with 120. 10 workers left and 6 were replaced. What's the flux rate, and why is it useful?
   **Answer: 16%** ((10 + 6) ÷ 100 × 100). It shows the total churn, both exits and refills, which is what drives hiring and training costs.

**Source:** `LMS-MOdule -3.pptx` slides 14–20 · `Module -3 Labour_Cost_Concept (NSA).pptx` slides 8–9
**Status:** VERIFIED

---

## Notes from building this batch

1. **All 5 Cost & Financial Accounting files are used.** New subject **"Cost & Financial Accounting"**: **7 cards**. Total across subjects: **30 cards**.
2. **Checked the slides' worked examples:** stock levels, FIFO/LIFO, EOQ (≈707 units), turnover, Halsey/Rowan and labour turnover sums are all correct.
3. **Two notes on the slides:** (a) **decided (18 Oct):** calculations follow the notes' **1.5×** overtime; the card's news section still mentions that the Code on Wages sets 2× as the legal minimum. You may revisit this later. (b) Slide 9's "Question 2" shows formulas as images that didn't come through in the text, so I couldn't check that solution.
4. **Not used, could be a later card:** bin card vs stores ledger (slides 11–13), JIT (Module-2 slide 5).
5. **Not included, because I couldn't verify a single figure:** DMart's exact inventory days (sources range from 29 to 36), so the card gives the range.
