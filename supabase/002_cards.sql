-- =====================================================================
-- PLACED concept cards: 23 cards
-- Made automatically by scripts/cards-to-sql.mjs from the files in content/.
-- Don't edit this file by hand: edit the card files, then run the script again.
--
-- Run in Supabase: SQL Editor → New query → paste → Run.
-- Safe to run more than once: existing cards are updated, not duplicated.
-- =====================================================================

-- Two parts of each card that the first version of the table didn't have room for
alter table concept_cards add column if not exists news_label text;   -- e.g. '✅ Verified (Sept 2025)'
alter table concept_cards add column if not exists news       text;   -- "Seen in the news"
alter table concept_cards add column if not exists practice   jsonb;  -- the 3 practice questions with answers

insert into concept_cards
  (id, subject_id, num, title, one_line, explain, example, news_label, news,
   interview_q, interview_a, trap, practice, source, status)
values
(
  $c$econ-01$c$, $c$econ$c$, 1, $c$The Law of Demand (and when it breaks)$c$,
  $c$When a price goes up, people buy less; when it goes down, they buy more, as long as nothing else changes.$c$,
  $c$Economists add "ceteris paribus", which just means *other things staying the same*
(your income, your tastes, the prices of other goods). Why do we buy less when price
rises? Three reasons: we switch to cheaper alternatives (*substitution effect*), our
money now buys less (*income effect*), and each extra unit gives us less satisfaction
than the last (*diminishing marginal utility*), so we only buy more if it's cheaper.$c$,
  $c$You have ₹100 for snacks. Samosas cost ₹10, so you buy 10. The price rises to ₹20.
Now ₹100 buys only 5, and you might switch to vada pav instead. Same money, same
hunger, but the higher price means fewer samosas.

**But it breaks sometimes (interviewers love this part):**
| Exception | What happens | Example |
|---|---|---|
| **Veblen goods** | Higher price makes it *more* desirable, because it signals status | Luxury watches, diamonds |
| **Giffen goods** | A very poor household buys *more* of a cheap staple when its price rises, because it can no longer afford better food | Coarse grains like bajra |
| **Expectations / speculation** | People buy *more* while prices rise, expecting further rises | Shares, gold, property |$c$,
  $c$✅ Verified (2025)$c$,
  $c$On 23 July 2025, gold in India hit a record ₹1,00,130 per 10 grams. Two things happened at once:
- **Jewellery buying slowed.** That's the normal law of demand: price up, quantity down.
- **Gold ETF investment boomed.** By September 2025, Indian gold ETFs had drawn
  $2.18 billion for the year, already more than all of 2024 ($1.29 billion).

Same product, opposite reactions. People who buy gold to *wear* bought less. People who
buy it to *invest*, expecting prices to rise further, bought more.
*Sources: World Gold Council; 5paisa / Outlook Money reports on AMFI data.*$c$,
  $c$Is the law of demand always true? Give me a case where a price rise increases demand.$c$,
  $c$"Mostly yes, but not always. With Veblen goods like luxury watches,
a higher price adds status value, so demand can rise. With Giffen goods, very poor
households buy more of a staple when its price rises because they can't afford
substitutes. And when people expect prices to keep rising, as with gold or shares, they
buy more now. Strictly speaking that last case doesn't break the law; it shifts demand
through expectations."$c$,
  $c$Mixing up Giffen and Veblen. **Giffen = poor buyers + cheap staple. Veblen = rich buyers + status item.** They are opposite ends of the income scale.$c$,
  $c$[{"kind":"concept","question":"Which is a Veblen good? (a) Rice (b) A Rolex watch (c) Salt (d) Bus tickets","answer":"**(b).** Its appeal comes from its high price and status."},{"kind":"application","question":"All Giffen goods are inferior goods, but are all inferior goods Giffen goods?","answer":"**No.** A Giffen good is an inferior good with no close substitutes that takes up a large share of a poor household's budget. Most inferior goods don't meet all three conditions."},{"kind":"case","question":"A jewellery brand raises prices on its premium \"heritage\" line by 15%, and sales *rise*. The CFO calls it a pricing mistake that got lucky. Is she right?","answer":"Probably not. The heritage line is likely a Veblen good, where the higher price strengthens the status signal. The brand should test whether *discounting* would actually hurt that line."}]$c$::jsonb,
  $c$Demand_Notes.PDF pp. 2.7, 2.11–2.13 · Demand_in_Economics.pptx slide 8$c$, $c$draft$c$
),
(
  $c$econ-02$c$, $c$econ$c$, 2, $c$Change in Demand vs Change in Quantity Demanded$c$,
  $c$If the product's *own price* changes, we move *along* the demand curve. If *anything else* changes, the whole curve *shifts*.$c$,
  $c$Picture a demand curve as a menu: "at this price, I'll buy this much."
- **Movement along the curve** (called *expansion/contraction of demand*): only the
  product's own price changed. You simply pick a different line from the same menu.
- **Shift of the curve** (called *increase/decrease in demand*): something else changed,
  such as income, tastes, a substitute's price, expectations, population or government
  policy. You now have a whole new menu.$c$,
  $c$Ice cream costs ₹50 and you buy 2 a week. The price drops to ₹40, so you buy 4. That's a
**movement** (only the price changed). Now the price is back at ₹50, but your pocket
money doubles and you buy 3 at the *same* ₹50. That's a **shift** (your income changed).$c$,
  $c$✅ Verified (2025)$c$,
  $c$From 22 September 2025 ("GST 2.0"), GST on air conditioners and small cars was cut from
28% to 18%, which lowered their prices. Higher sales because of the lower price are a **movement
along** the curve. If AC sales jump because of a heatwave while prices stay the same,
that's a **shift**, since the weather is a non-price factor.
*Source: GST Council, 56th meeting (3 Sept 2025); notifications dated 17 Sept 2025.*$c$,
  $c$AC sales jumped 40% this summer. Is that a change in demand or quantity demanded?$c$,
  $c$"It depends on the cause. If brands cut prices and people bought more,
that's a change in quantity demanded, a movement along the curve. If prices stayed the
same and a heatwave or rising incomes drove sales, that's a change in demand, a rightward
shift. As a manager I'd want to know which, because one is bought with discounts and the
other comes free."$c$,
  $c$Saying "demand increased" when only the price fell. Economists keep the terms strictly separate: **price change = quantity demanded; everything else = demand.**$c$,
  $c$[{"kind":"concept","question":"Which causes a **shift** in the demand curve for tea? (a) Tea becomes cheaper (b) Coffee becomes more expensive (c) Tea becomes costlier (d) None","answer":"**(b).** Coffee's price is a non-price factor for tea, so tea's whole curve shifts right."},{"kind":"application","question":"An advertising campaign makes people want more of a soap at every price. Movement or shift?","answer":"**Shift (right).** Advertising changes tastes, a non-price factor. The notes point out this is exactly what advertising aims to do."},{"kind":"case","question":"A Kolkata sweet shop sells more rosogolla in October than in July at the same price. The owner credits his new signboard. What's a more likely explanation?","answer":"Durga Puja season. Festive demand (tastes, customs, gifting) shifts the demand curve right. The signboard may help, but the season is the bigger non-price factor."}]$c$::jsonb,
  $c$Demand_Notes.PDF pp. 2.13–2.17 · Demand_in_Economics.pptx slide 6$c$, $c$draft$c$
),
(
  $c$econ-03$c$, $c$econ$c$, 3, $c$Price Elasticity of Demand$c$,
  $c$How *strongly* buyers react to a price change, measured as the % change in quantity ÷ % change in price.$c$,
  $c$The law of demand tells us the *direction* (price up, quantity down). Elasticity tells us
the *size* of the reaction.
- **Elastic (more than 1):** buyers react a lot (restaurant meals, air travel, one brand of soap)
- **Inelastic (less than 1):** buyers barely react (salt, medicines, petrol overall)

What makes demand elastic? Many substitutes, being a luxury, taking a big share of your
budget, and having time to adjust. Habit and necessity make it inelastic.$c$,
  $c$A café sells 100 coffees a day at ₹100, which is **₹10,000** in revenue. It raises the price 10% to ₹110.
- If sales fall to **80** (−20%): elasticity = 20 ÷ 10 = **2, elastic**. Revenue = ₹8,800. **Lost money.**
- If sales fall to **95** (−5%): elasticity = 5 ÷ 10 = **0.5, inelastic**. Revenue = ₹10,450. **Gained money.**

Same price hike, opposite results. **That is why managers care about elasticity.**

| | Elastic | Unit elastic | Inelastic |
|---|---|---|---|
| Price ↑ | Revenue ↓ | Same | Revenue ↑ |
| Price ↓ | Revenue ↑ | Same | Revenue ↓ |$c$,
  $c$✅ Verified (2025)$c$,
  $c$GST 2.0 (September 2025) created a special **40% rate** for "sin and luxury" goods. Aerated
and sugary drinks moved from 28% to 40%. Tobacco and pan masala stayed at 28% plus a cess,
and will move to 40% once the states' compensation loans are repaid.
Why tax these so heavily? Demand for habit-forming goods is **inelastic**: people keep
buying even at higher prices, so tax revenue stays reliable, and the high price also
discourages some consumption.
*Source: GST Council, 56th meeting (3 Sept 2025); Vision IAS summary of The Hindu, 4 Sept 2025.*$c$,
  $c$You're a brand manager and need more revenue. Do you raise or cut the price?$c$,
  $c$"It depends on price elasticity. If demand is elastic, because there
are many substitutes, as in FMCG brands, a price cut brings in proportionally more buyers
and revenue rises. If it's inelastic, as with a strong brand or a necessity, a price
increase raises revenue. So first I'd estimate elasticity from past price changes."$c$,
  $c$Thinking *petrol* and *Indian Oil's petrol* have the same elasticity. Petrol as a whole is inelastic, but **one brand is elastic** because you can simply go to the next pump.$c$,
  $c$[{"kind":"concept","question":"Price falls 5%, quantity demanded rises 15%. Elasticity?","answer":"**3, elastic.**"},{"kind":"application","question":"Price drops from ₹6 to ₹4 and quantity rises from 10 to 15 units. Find elasticity.","answer":"(Δq ÷ Δp) × (p ÷ q) = (5 ÷ 2) × (6 ÷ 10) = **1.5, elastic.**"},{"kind":"case","question":"An airline and a salt company both plan a 10% price hike. Which should worry more about revenue, and why?","answer":"**The airline.** Air travel is elastic (substitutes like trains, and trips can be postponed), so revenue likely falls. Salt is highly inelastic (no substitute, tiny budget share), so revenue likely rises."}]$c$::jsonb,
  $c$Demand_Notes.PDF pp. 2.17–2.30 · Elasticity_in_Economics.pdf slides 4–6, 10$c$, $c$draft$c$
),
(
  $c$econ-04$c$, $c$econ$c$, 4, $c$Income Elasticity of Demand$c$,
  $c$How demand changes when people's *income* changes, which tells you whether a product is a necessity, a luxury or an inferior good.$c$,
  $c$Income elasticity = % change in demand ÷ % change in income.
| Value | Type of good | What it means |
|---|---|---|
| **Less than 0** | Inferior | Richer people buy *less* of it (they upgrade) |
| **0 to 1** | Necessity | Demand rises, but slower than income |
| **More than 1** | Luxury | Demand rises *faster* than income |

Note: "inferior" and "luxury" are economic labels, not judgements about quality.$c$,
  $c$Your monthly pocket money rises from ₹1,000 to ₹1,100 (+10%).
- Canteen thali spending rises 5% → elasticity **0.5, necessity**
- Café visits rise 30% → elasticity **3, luxury**
- Instant noodles fall 10% → elasticity **−1, inferior** (you've upgraded to proper meals)$c$,
  $c$✅ Verified (2024–25)$c$,
  $c$Indian consumer companies keep talking about **"premiumisation"**. NielsenIQ found that
premium FMCG brands are growing nearly **twice as fast** as mass brands: they make up 27%
of FMCG sales but drive 42% of the sector's value growth. Hindustan Unilever says its
premium segments grow about 30% faster than regular ones, even in rural India.
As incomes rise, spending shifts towards premium versions. That's income elasticity above 1 in action.
*Sources: NielsenIQ via Storyboard18; ICRA, Dec 2025.*$c$,
  $c$Why do luxury car sales fall harder in a slowdown than a salt company's sales?$c$,
  $c$"Income elasticity. Luxury cars have income elasticity above 1, so
when incomes fall, demand falls more than proportionally, and sales are highly cyclical.
Salt is a necessity with elasticity near zero, so its sales barely move. Some goods, like
used cars, can even sell *more* in a slowdown because they're inferior goods."$c$,
  $c$Assuming "inferior good" means bad quality. It only means people buy less of it as they get richer, like **used cars** in the notes' example, which have an elasticity of −0.375.$c$,
  $c$[{"kind":"concept","question":"Income rises 10%, TV demand rises 20%. What type of good?","answer":"**Luxury (elasticity 2).**"},{"kind":"application","question":"Income rises 5%, bajra demand falls 2%. Elasticity and type?","answer":"**−0.4, an inferior good.**"},{"kind":"case","question":"A car dealer sees new-car sales rise from 400 to 500 and used-car sales fall from 4,000 to 3,850 after incomes rose 10%. What should they stock more of if incomes keep rising?","answer":"**New cars.** New cars: +25% ÷ 10% = **2.5 (luxury)**. Used cars: −3.75% ÷ 10% = **−0.375 (inferior)**. Rising incomes favour new cars."}]$c$::jsonb,
  $c$Demand_Notes.PDF pp. 2.30–2.32 · Elasticity_in_Economics.pdf slide 7$c$, $c$draft$c$
),
(
  $c$econ-05$c$, $c$econ$c$, 5, $c$Cross Elasticity of Demand$c$,
  $c$How demand for one product reacts when the price of *another* product changes, which tells you if they're substitutes or complements.$c$,
  $c$Cross elasticity = % change in demand for X ÷ % change in price of Y.
- **Positive → substitutes.** Y gets costlier, so people switch to X (tea ↔ coffee).
- **Negative → complements.** Y gets costlier, so people buy less X too (cars ↔ petrol, printers ↔ ink).
- **Zero → unrelated** (salt ↔ sneakers).

The bigger the number, the closer the relationship.$c$,
  $c$At the college canteen, coffee goes from ₹20 to ₹22 (+10%). Tea sales go from 100 to 115
cups (+15%). Cross elasticity = 15 ÷ 10 = **+1.5**. Tea and coffee are **strong substitutes**,
and the tea stall just got customers for free.$c$,
  $c$✅ Verified (2024)$c$,
  $c$In early July 2024, Jio, Airtel and Vodafone Idea raised mobile tariffs by **10–27%**.
State-run BSNL did not raise prices, and its cheapest monthly plan was around ₹108 against
₹189–199 at the private telcos. In July, BSNL was the **only** telecom company to gain
subscribers, adding about 29 lakh, while Airtel, Vi and Jio all lost users.
Private telco prices went up, and demand for BSNL went up: **positive cross elasticity,
so they are substitutes.**
*Caution: the shift was partly temporary. BSNL still ended July 2024 with fewer users than in January 2024.*
*Source: TRAI subscriber data for July 2024, via Light Reading and Moneylife.*$c$,
  $c$Petrol prices rise sharply. Which companies win and which lose?$c$,
  $c$"Use cross elasticity. Petrol and petrol cars are complements, so
costlier petrol hurts demand for petrol cars. Electric vehicles and public transport
are substitutes for petrol, so EV makers and metro or bus services may gain. That's why
fuel price news moves auto stocks differently."$c$,
  $c$Assuming a negative cross elasticity *always* means complements. The notes warn that a strong **income effect** can also cause it. Positive reliably means substitutes; negative needs a closer look.$c$,
  $c$[{"kind":"concept","question":"Cross elasticity between two brands of notebooks is +1.5. What are they?","answer":"**Close substitutes.**"},{"kind":"application","question":"Printers are sold cheap but ink cartridges are expensive. Which concept explains this strategy?","answer":"**Complementary goods (tied demand).** Once you own the printer, your demand for that brand's ink is inelastic, so the company profits on the ink."},{"kind":"case","question":"A Kolkata metro fare cut is announced. Which local businesses should be worried: app-based cab services, or the tea stalls outside metro stations?","answer":"**Cab services.** Metro rides are a *substitute* for cabs (positive cross elasticity), so cheaper metro fares reduce cab demand. Tea stalls near stations are closer to *complements*, since more metro riders means more footfall, so they may gain."}]$c$::jsonb,
  $c$Demand_Notes.PDF pp. 2.29, 2.33–2.35 · Elasticity_in_Economics.pdf slide 8$c$, $c$draft$c$
),
(
  $c$econ-06$c$, $c$econ$c$, 6, $c$Scarcity & Opportunity Cost$c$,
  $c$Resources are limited but wants are not, so every choice costs you the best thing you gave up.$c$,
  $c$Economics starts with **scarcity**: we never have enough money, time or resources for
everything we want, so we must choose. Every choice is a **trade-off**. The
**opportunity cost** is the value of the *next-best* option you gave up, not every option
and not just the money. Smart decisions are also made **at the margin**: not "study or
sleep?" but "is *one more* hour of study worth *one less* hour of sleep?"$c$,
  $c$You have ₹100 and one evening. You could go for a pizza, buy a used exam guide, or
take an auto home instead of the bus. You pick pizza. If the exam guide was your second
choice, **the exam guide is the opportunity cost of the pizza.** The bus fare saving
doesn't count, because it wasn't your next-best option.$c$,
  $c$✅ Verified (Feb 2025)$c$,
  $c$In Union Budget 2025, the government made income up to **₹12 lakh tax-free** under the
new regime. Reports estimated the government would give up about **₹1 lakh crore** in
direct tax revenue. That money could have built roads or hospitals: that is the
**opportunity cost**. The government judged that leaving the money with about 1 crore
middle-class taxpayers, to spend and boost demand, was the better use.
*Sources: Business Today, 1 Feb 2025; Union Budget 2025–26.*$c$,
  $c$What's the opportunity cost of your MBA?$c$,
  $c$"Not just the fees. The bigger cost is the salary and work experience I
gave up for two years. I chose the MBA because I expect the long-term return, through
better roles and faster growth, to be higher than what I gave up."$c$,
  $c$Adding up *all* the alternatives, or counting only money. Opportunity cost is **only the single next-best option**, and it includes time and experience, not just rupees.$c$,
  $c$[{"kind":"concept","question":"Opportunity cost is… (a) the money you spend (b) the value of the next-best option you give up (c) the total of all options (d) a sunk cost","answer":"**(b).**"},{"kind":"application","question":"Rahul leaves a ₹6 lakh-a-year job for a 2-year MBA with ₹10 lakh in fees. What's the full economic cost?","answer":"**₹22 lakh** = ₹10 lakh fees (money actually paid) + ₹12 lakh salary given up (opportunity cost)."},{"kind":"case","question":"A company can spend ₹50 crore on a new factory or on a marketing campaign. It picks the factory. What should the CFO call the marketing campaign's expected return?","answer":"The **opportunity cost** of building the factory. The factory only makes sense if its expected return beats the campaign's."}]$c$::jsonb,
  $c$foundation of economics (1).ppt slides 2–10$c$, $c$draft$c$
),
(
  $c$econ-07$c$, $c$econ$c$, 7, $c$Production Possibility Frontier (PPF)$c$,
  $c$A curve showing the most an economy (or firm) can produce of two things with the resources and technology it has.$c$,
  $c$- **On the curve:** resources are fully used, so production is efficient.
- **Inside the curve:** some resources sit idle (unemployment, unused machines), so production is inefficient.
- **Outside the curve:** impossible *today*, but reachable later with more resources or better technology, which **shifts the curve outward**.

Why is it bowed outward? Because of **increasing opportunity cost**: resources are
specialised. To make more guns, you must turn dairy farms into factories, and each extra
gun costs more butter than the last.$c$,
  $c$The college canteen has 2 cooks and 1 hour. They can make **40 dosas, or 60 sandwiches**,
or a mix like 20 dosas + 35 sandwiches. If one cook calls in sick and they make only 15 of
each, they're **inside** the curve. If the canteen buys a dosa machine, the whole curve
**shifts out**: more of both becomes possible.$c$,
  $c$✅ Verified (2025–26)$c$,
  $c$The RBI's survey of factories found Indian manufacturing was using about **74–77% of its
capacity** through 2025–26 (77.4% in Jan–Mar 2026). So roughly a quarter of factory
capacity sat unused: the economy was working **inside** its PPF. Economists watch this
number closely, because when utilisation stays high, firms start building new capacity,
which shifts the curve out.
*Source: RBI, Order Books, Inventories and Capacity Utilisation Survey (OBICUS), Q2–Q4 2025–26.*$c$,
  $c$What does it mean if an economy is producing inside its PPF?$c$,
  $c$"It's wasting resources: there's unemployment or idle capacity. It could
produce more of *both* goods without giving anything up. The fix is better use of existing
resources, not new ones. Moving outward from the curve itself needs new resources or
better technology."$c$,
  $c$Calling points *outside* the curve "inefficient". They are **unattainable** for now. Points *inside* are the inefficient ones.$c$,
  $c$[{"kind":"concept","question":"A point inside the PPF shows… (a) efficiency (b) unused resources (c) an impossible output (d) growth","answer":"**(b).**"},{"kind":"application","question":"Which shifts India's PPF outward? (a) A strike in factories (b) Better use of idle machines (c) New technology in manufacturing (d) Moving along the curve","answer":"**(c).** (a) moves production inside the curve; (b) moves it *towards* the curve, not beyond it."},{"kind":"case","question":"A textile firm's machines run at 60% capacity, yet the CEO wants to build a new plant. What would you ask first?","answer":"\"Why not use the 40% idle capacity first?\" The firm is inside its own PPF. A new plant makes sense only if demand will outgrow even full capacity."}]$c$::jsonb,
  $c$foundation of economics (1).ppt slides 11–18$c$, $c$draft$c$
),
(
  $c$econ-08$c$, $c$econ$c$, 8, $c$Law of Supply & What Shifts It$c$,
  $c$When price rises, sellers offer more. When costs, technology, taxes or weather change, the whole supply curve shifts.$c$,
  $c$Supply is the mirror image of demand: price and quantity supplied move in the **same**
direction, because a higher price makes producing more profitable.
- **Movement along the curve:** only the product's own price changed.
- **Shift of the curve:** something else changed, such as cost of production, technology,
  taxes or subsidies, the number of sellers, expectations, or weather for farm goods.

**Exceptions:** perishable or seasonal goods (supply is nearly fixed in the short run), rare
items (only one painting exists) and labour (past a point, some people work *fewer* hours
as wages rise, because they value leisure more).$c$,
  $c$A juice stall sells 20 glasses a day at ₹20. A college fest raises the going price to ₹30, so
the owner stays open longer and makes 30 glasses. That's a **movement** along the curve.
Then oranges double in price: even at ₹30 a glass, he now makes only 15. That's a
**leftward shift**, because his costs rose.$c$,
  $c$✅ Verified (July 2024)$c$,
  $c$Extreme heat followed by heavy rain, and landslides that cut roads from Himachal
Pradesh, choked tomato supply in July 2024. By 20 July, government data showed tomatoes
averaging about **₹74/kg across India and ₹93/kg in Delhi** (₹100 at some outlets),
up from about ₹35 in early June. People didn't suddenly want more tomatoes: the
**supply curve shifted left**, and the price jumped.
*Source: Department of Consumer Affairs price data, via PTI / Deccan Herald, 21 July 2024.*$c$,
  $c$Tomato prices doubled this month. Is that a demand-side or supply-side story?$c$,
  $c$"Mostly supply-side. Weather and transport problems shifted the supply
curve left. Demand for a daily staple barely changes, so the price jumped. And because
tomatoes are perishable, supply can't respond quickly, which makes the spike sharper."$c$,
  $c$Saying "supply increased" when sellers sold more *because the price rose*. That's an increase in **quantity supplied** (a movement). **Supply** only increases when the curve shifts.$c$,
  $c$[{"kind":"concept","question":"Which causes a **shift** in supply? (a) The product's price rises (b) A new technology cuts production costs (c) Buyers' incomes rise (d) None","answer":"**(b).** (c) shifts *demand*, not supply."},{"kind":"application","question":"The government gives a subsidy to solar panel makers. What happens to the supply curve?","answer":"**It shifts right.** Lower costs mean more is supplied at every price."},{"kind":"case","question":"A Kolkata flower seller can't increase supply during Durga Puja even though prices triple. Which exception is this?","answer":"**Perishable / seasonal goods.** Supply is nearly fixed in the short run, so a demand spike becomes a price spike."}]$c$::jsonb,
  $c$Supply_in_Economics.pptx slides 2–8 · Demand_vs_Supply_Comparative_Analysis.pptx slides 2–6$c$, $c$draft$c$
),
(
  $c$econ-09$c$, $c$econ$c$, 9, $c$Market Equilibrium, Shortage & Surplus$c$,
  $c$The price where the quantity buyers want equals the quantity sellers offer. Above it there's a surplus; below it, a shortage.$c$,
  $c$- **Price too high → surplus:** unsold stock piles up, so sellers cut prices.
- **Price too low → shortage:** queues and "sold out", so prices get pushed up.
- The market keeps nudging back to **equilibrium**, where nothing is left over and nobody is left wanting.

| What changes | Price | Quantity |
|---|---|---|
| Demand ↑ (shifts right) | ↑ | ↑ |
| Demand ↓ | ↓ | ↓ |
| Supply ↑ (shifts right) | ↓ | ↑ |
| Supply ↓ | ↑ | ↓ |$c$,
  $c$The canteen makes 100 samosas. At **₹10**, exactly 100 students want one, which is equilibrium.
At **₹15**, only 60 want one, so 40 are left over (a **surplus**) and the price will come down.
At **₹5**, 150 want one, so 50 students leave hungry (a **shortage**) and the price will go up.$c$,
  $c$✅ Verified (Sept 2024 – Jan 2025)$c$,
  $c$When tickets for Coldplay's Mumbai shows (held in January 2025) went on sale on 22 September 2024,
about **1.3 crore people** logged in for roughly **1.5 lakh tickets**, priced at about ₹2,500–₹35,000.
They sold out in minutes, and resale listings appeared at **₹2–3 lakh and more**. The official
price was far **below equilibrium**, which created a huge shortage. The organisers' response
was to add more shows, increasing supply.
*Note: ticket scalping is illegal in India, and BookMyShow filed a police complaint.*
*Sources: Business Today, 24–25 Sept 2024; Outlook Business; The Week, 13 Nov 2024.*$c$,
  $c$Coldplay tickets sold out in minutes and resold for lakhs. Should they have charged more?$c$,
  $c$"Economically, the price was below equilibrium, so there was a shortage,
and scalpers captured the difference. They could raise prices, but that risks fan anger and
looks unfair. The better options are what they did: add shows to increase supply, and fight
resale with ID-linked tickets. It's a trade-off between revenue and brand goodwill."$c$,
  $c$Thinking a shortage just means "not enough was made". A shortage only exists **at a given price**: at a high enough price, the shortage disappears.$c$,
  $c$[{"kind":"concept","question":"If the price is set above equilibrium, there will be… (a) a shortage (b) a surplus (c) equilibrium (d) no effect","answer":"**(b).**"},{"kind":"application","question":"A heatwave raises demand for ACs while a GST cut makes them cheaper to supply. What happens to AC sales quantity?","answer":"**It rises.** Both demand ↑ and supply ↑ push quantity up. The price effect is unclear, since the two forces pull it in opposite directions."},{"kind":"case","question":"A new café's ₹49 cold coffee has a 30-minute queue every evening. What's the economic signal?","answer":"The price is below equilibrium, so there's a shortage. The café can raise the price, add capacity (supply), or accept the queue as free marketing."}]$c$::jsonb,
  $c$Demand_vs_Supply_Comparative_Analysis.pptx slides 4–8$c$, $c$draft$c$
),
(
  $c$econ-10$c$, $c$econ$c$, 10, $c$Law of Diminishing Marginal Utility$c$,
  $c$Each extra unit of the same thing gives you less extra satisfaction than the one before.$c$,
  $c$**Utility** = satisfaction. **Total utility (TU)** is all the satisfaction you get; **marginal
utility (MU)** is the *extra* satisfaction from one more unit:
**MU = TUₙ − TUₙ₋₁** (correcting a typo in the source notes, which show a + sign).

MU keeps falling, and can even hit zero or go negative (one samosa too many). This is
why demand curves slope down: you'll only buy more if it's cheaper, because each extra
unit is worth less to you.$c$,
  $c$From the notes' tea table: the 1st cup of tea gives 30 units of satisfaction, the 2nd gives 20,
the 3rd 15, the 4th 10… the 10th gives just 1, and the **11th gives −4**: total satisfaction
actually *drops* from 99 to 95. In rupees: if your first chai is worth ₹30 to you, the second
₹20 and the third ₹15, and chai costs ₹15, you stop at three cups.$c$,
  $c$✅ Verified (2025)$c$,
  $c$In July 2025, gold hit a record **₹1,00,130 per 10 grams**, while water is almost free.
Water is far more essential, so its **total** utility is enormous. But it's abundant, so the
**marginal** utility of one more litre is tiny. Gold is scarce, so each extra gram has high
marginal utility, and price follows **marginal**, not total, utility. This is the classic
**diamond–water paradox**.
*Source: World Gold Council / Outlook Money, July 2025.*$c$,
  $c$Water is essential and diamonds aren't. So why is water cheap and diamonds expensive?$c$,
  $c$"Because price depends on marginal utility, not total utility. Water is
plentiful, so the value of one extra litre is low. Diamonds are scarce, so one more carat is
valued highly. Total usefulness and price per unit are different things."$c$,
  $c$Mixing up total and marginal utility. Total utility can still be *rising* while marginal utility *falls*, as long as MU is positive.$c$,
  $c$[{"kind":"concept","question":"TU after 3 cups = 65, after 4 cups = 75. What is the MU of the 4th cup?","answer":"**10** (75 − 65)."},{"kind":"application","question":"When MU becomes negative, what happens to TU?","answer":"**TU starts falling.**"},{"kind":"case","question":"A pizza chain offers \"second pizza at 50% off\". Which concept explains the discount?","answer":"**Diminishing marginal utility.** The second pizza is worth less to you, so the chain lowers its price to match what you'd pay for it."}]$c$::jsonb,
  $c$Consumer Eqm. - revision basics.PDF slides 3–18 · Demand_Notes.PDF p. 2.11$c$, $c$draft$c$
),
(
  $c$econ-11$c$, $c$econ$c$, 11, $c$Indifference Curves & Consumer Equilibrium$c$,
  $c$You're happiest where your budget line just touches the highest indifference curve you can reach, where MRS = Pₓ ÷ Pᵧ.$c$,
  $c$- An **indifference curve (IC)** shows combinations of two goods that make you *equally*
  happy. This is the *ordinal* approach of Hicks & Allen: we only rank choices, we don't
  measure utility in numbers (unlike Marshall's *cardinal* approach).
- ICs slope down, bow towards the origin, **never cross**, and a higher IC means more satisfaction.
- The **marginal rate of substitution (MRS)** is how much of one good you'd give up for one
  more of the other, and it keeps falling.
- The **budget line** shows everything you can afford. **Equilibrium** is where the two
  touch: the best combination you can actually afford.$c$,
  $c$You have ₹100. Chai costs ₹10 and a samosa ₹20. Your budget line: 10 chai, *or* 5 samosas,
*or* mixes like 4 chai + 3 samosas (₹40 + ₹60). Among all the mixes costing exactly ₹100,
the one you enjoy most is your equilibrium.
From the notes' table: going from (1 apple, 10 oranges) to (2, 7), you give up 3 oranges for
1 apple. Next you give up 2, then 1. That's **diminishing MRS**, which is why ICs bow inward.$c$,
  $c$✅ Verified (Sept 2025)$c$,
  $c$GST 2.0 (22 September 2025) cut GST on air conditioners from **28% to 18%**. For a
household choosing between an AC and other spending, the AC's *relative price* fell, so the
budget line pivots outward on the AC side. The household can now reach a **higher
indifference curve**, and many will rearrange their spending towards the cheaper AC.
*Source: GST Council, 56th meeting, 3 Sept 2025.*$c$,
  $c$Explain consumer equilibrium in one line.$c$,
  $c$"It's the point where the consumer's budget line is tangent to the highest
indifference curve they can reach. There, the rate at which they're willing to swap two
goods (MRS) equals the rate at which the market lets them swap (the price ratio)."$c$,
  $c$Drawing two indifference curves that cross. They **never** intersect: that would mean one combination gives two different levels of satisfaction.$c$,
  $c$[{"kind":"concept","question":"Why are indifference curves convex to the origin?","answer":"**Diminishing MRS.** You give up less and less of one good for each extra unit of the other."},{"kind":"application","question":"Which approach does the indifference curve use: cardinal or ordinal?","answer":"**Ordinal** (Hicks & Allen). It ranks preferences without measuring utility."},{"kind":"case","question":"A student spends all her pocket money on chai and samosas. Chai's price doubles. What happens to her budget line, and can she stay on the same indifference curve?","answer":"The budget line pivots inward on the chai side. She can no longer afford her old combination, so she moves to a **lower** indifference curve and, in all likelihood, buys fewer chais."}]$c$::jsonb,
  $c$Consumer Eqm. - revision basics.PDF slides 2, 25–43$c$, $c$draft$c$
),
(
  $c$mkt-01$c$, $c$mkt$c$, 1, $c$Needs, Wants & Demands$c$,
  $c$A need is a basic requirement, a want is the specific form it takes, and demand is a want you can actually pay for.$c$,
  $c$- **Need:** a basic human requirement, such as food, transport or belonging.
- **Want:** that need shaped by culture, society and personality. Everyone needs transport; *you* want an SUV.
- **Demand:** a want backed by **purchasing power and willingness to buy**.

Marketers don't create needs; they influence how needs get expressed as wants, and then
make those wants affordable enough to become demand.$c$,
  $c$It's 1 pm and you're hungry: that's the **need**. You'd love the ₹250 burger at the café:
that's the **want**. You have ₹100 in your pocket, so you buy the ₹80 canteen thali:
that's the **demand**. The café's real market is people who want the burger *and* can pay ₹250.$c$,
  $c$✅ Verified (FY2025)$c$,
  $c$Utility vehicles, mostly SUVs plus some MPVs, made up about **65% of India's passenger
vehicle sales in FY2025**, up from around 60% a year earlier (SIAM data).
The **need** (getting around) hasn't changed. The **want** has shifted towards
SUVs, and rising incomes plus easy car loans turned that want into **demand**.
*Source: SIAM data via DTNext, April 2025.*$c$,
  $c$Does marketing create needs?$c$,
  $c$"No. Needs like hunger or safety already exist. Marketing shapes the
**want**, for example which brand or what kind of product, and helps turn it into **demand**
through pricing, financing and availability. India's shift to SUVs is a good example:
people always needed transport, but marketing and rising incomes shaped *how* they
want to meet that need."$c$,
  $c$Treating "want" and "demand" as the same thing. A want without purchasing power is not demand, so it doesn't count when estimating market size.$c$,
  $c$[{"kind":"concept","question":"A student wants an iPhone but can't afford one. Is this demand?","answer":"**No.** It's a want without purchasing power."},{"kind":"application","question":"A bank launches easy EMIs for two-wheelers. Which stage is it targeting?","answer":"**Turning wants into demand** by increasing purchasing power."},{"kind":"case","question":"A premium gym in Kolkata gets thousands of Instagram likes but few sign-ups. What's the likely gap?","answer":"High **want** but low **demand**. People like the idea but either can't afford or aren't willing to pay the price. Fixes: trial passes, monthly plans, student pricing."}]$c$::jsonb,
  $c$Introduction to Marketing Management.pdf slide 07$c$, $c$draft$c$
),
(
  $c$mkt-02$c$, $c$mkt$c$, 2, $c$Customer Value & Value Proposition$c$,
  $c$Customer value = perceived benefits − perceived costs, and the value proposition says why a customer should choose you over the alternatives.$c$,
  $c$- **Benefits** can be functional (it works), emotional (it feels good), social (it says
  something about me) or experiential (it's an experience).
- **Costs** are not just money. They include **time, effort, psychological cost and risk**.
- Value is **relative**: customers compare you with the alternatives, so a "better"
  product isn't automatically better value.
- A **value proposition** answers one question: *why should this customer choose us
  rather than an alternative?* For example: IKEA = design + affordability + self-service;
  Volvo = safety.$c$,
  $c$Chai at the gate stall costs **₹10** and takes 2 minutes. The café's cappuccino costs **₹100**,
with AC, Wi-Fi and a 15-minute wait. For a quick break between classes, the stall gives more
value, because benefits are similar and costs are lower. For a 2-hour group study session,
the café wins, because seating and Wi-Fi are worth the extra ₹90. **Same customer,
different situation, different value.**$c$,
  $c$✅ Verified (Nov–Dec 2025)$c$,
  $c$In November 2025, **Zepto removed handling and surge fees** and made delivery free on
orders above ₹99, while a rival still charged around ₹54 in combined fees on small orders.
Cutting the *cost* side of the equation raises customer value without changing the product.
In December 2025, the CCPA (consumer regulator) ordered Zepto to stop **adding charges only
at checkout**. Hidden costs raise the *psychological* cost and damage trust.
*Sources: Business Today, 3 Nov 2025; Inventiva, Dec 2025, on the CCPA order.*$c$,
  $c$Can a technically superior product create less customer value?$c$,
  $c$"Yes. Value is benefits minus costs, judged against the alternatives.
A phone with a 200 MP camera may be technically superior, but if the customer cares more
about battery life and price, a cheaper phone gives *more* value. That's why marketers
start with what the customer values, not with what the engineers can build."$c$,
  $c$Counting only price as cost. Time, effort and risk are costs too. That's why "10-minute delivery" sells even when prices are higher.$c$,
  $c$[{"kind":"concept","question":"Customer value is… (a) price paid (b) perceived benefits − perceived costs (c) product quality (d) brand awareness","answer":"**(b).**"},{"kind":"application","question":"Name two non-money costs a customer pays when shopping at a crowded mall on a Sunday.","answer":"For example, **time** (travel and queues) and **effort** (parking, crowds)."},{"kind":"case","question":"A café raises coffee prices by ₹20 but adds free Wi-Fi and charging points, and its student footfall *rises*. Explain using customer value.","answer":"Perceived benefits (work-friendly space) rose more than perceived costs (₹20), so net value went *up* for students who study there."}]$c$::jsonb,
  $c$Introduction to Marketing Management.pdf slides 09–11, 19$c$, $c$draft$c$
),
(
  $c$mkt-03$c$, $c$mkt$c$, 3, $c$Customer Satisfaction & Customer Lifetime Value (CLV)$c$,
  $c$Satisfaction = performance compared with expectations, and CLV is what a loyal customer is worth over the whole relationship, not just one sale.$c$,
  $c$- **Performance < expectations → dissatisfaction.** Equal → satisfaction. Better → **delight**.
- Expectations come from **ads, reviews, word of mouth, past experience, price and brand
  promises**. So marketing creates the promise, and the product and service must keep it.
- **The chain:** value → satisfaction → repeat purchase → loyalty → **customer lifetime
  value** → customer equity (the total value of all customers).
- The manager's question shifts from *"did we make this sale?"* to *"what is this
  relationship worth over time?"*$c$,
  $c$A regular at the canteen spends ₹100 a day, and the canteen makes **₹20 profit** on it.
Over 22 college days a month for 2 years: ₹20 × 22 × 24 = **₹10,560**.
Serve that student a stale samosa and lose them, and the canteen hasn't lost ₹20; it has
lost **₹10,560**, plus everyone they tell. (The notes use the same logic: ₹300 × 4
purchases a month × 36 months = ₹43,200.)$c$,
  $c$✅ Verified (Oct 2024)$c$,
  $c$Ola Electric led India's electric scooter market, but service complaints piled up. On
**7 October 2024**, the CCPA issued it a show-cause notice citing over **10,000 consumer
complaints**. Reports showed its monthly market share falling from about **39% in July
to about 27% in September 2024**. Performance fell below expectations, dissatisfaction
spread publicly, and future customers were lost along with existing ones.
*Sources: Entrackr, Oct 2024; YourStory, Dec 2024; company statement on CCPA complaints.*$c$,
  $c$Which customer is more valuable: a one-time big spender or a loyal small spender?$c$,
  $c$"Usually the loyal one. A one-time ₹10,000 purchase is worth ₹10,000.
A loyal customer spending ₹1,000 a month for three years is worth ₹36,000 in revenue, costs
less to serve because there's no acquisition cost again, and brings in referrals. That's
customer lifetime value. The exception is when the big spender also has high repeat
potential."$c$,
  $c$Thinking "delight" just means over-promising. If ads promise too much, expectations rise and the *same* performance now produces dissatisfaction. Under-promise and over-deliver.$c$,
  $c$[{"kind":"concept","question":"Performance exceeds expectations. The customer feels…","answer":"**Delight.**"},{"kind":"application","question":"A customer contributes ₹200 profit per purchase, buys twice a month and stays 2 years. CLV before adjustments?","answer":"₹200 × 2 × 24 = **₹9,600.**"},{"kind":"case","question":"A new app's ads promise \"delivery in 10 minutes, every time\", but deliveries average 18 minutes. Customers are angry, even though 18 minutes is faster than most rivals. Why?","answer":"Satisfaction compares performance with **expectations**, not with competitors. The ad set expectations at 10 minutes, so 18 feels like failure."}]$c$::jsonb,
  $c$Introduction to Marketing Management.pdf slides 12–14$c$, $c$draft$c$
),
(
  $c$mkt-04$c$, $c$mkt$c$, 4, $c$Marketing Orientations & Marketing Myopia$c$,
  $c$There are five philosophies of where a business should start: production, product, selling, marketing and societal. Starting with the customer's need, not the product, avoids myopia.$c$,
  $c$| Orientation | Starts with… | Risk |
|---|---|---|
| **Production** | Make it cheap and widely available | Ignores what customers want |
| **Product** | Make the best product | Features nobody asked for |
| **Selling** | Persuade people to buy | Short-term sales, no loyalty |
| **Marketing** | Find the customer's need, then build value | — |
| **Societal marketing** | Customer + company + long-term welfare of society | — |

**Marketing myopia** (Theodore Levitt): defining your business by the *product* instead of
the *customer need*. Railways that saw themselves as "train companies" rather than
"transport companies" lost out to cars and planes.$c$,
  $c$**the canteen test**

- *Production:* "How do we make a samosa for ₹5?"
- *Product:* "How do we make the best samosa in Kolkata?"
- *Selling:* "How do we push samosa + chai combos?"
- *Marketing:* "What do students actually want at 1 pm?" → *A quick, filling lunch before the 1:30 class.*
- *Societal:* "How do we do that without plastic plates and food waste?"$c$,
  $c$✅ Verified (Feb–Mar 2025)$c$,
  $c$In February 2025, **Zomato Ltd renamed itself "Eternal Ltd"**, and shareholders approved it in
March 2025. Its quick-commerce arm **Blinkit** had become a bigger growth driver than food
delivery, alongside District (going-out) and Hyperpure (restaurant supplies). The Zomato
app kept its name, but the company stopped defining itself by one product. That's the
opposite of myopia: it defines its business by broader customer needs, not "food delivery".
*Sources: TechCrunch, 6 Feb 2025; Angel One; People Matters.*$c$,
  $c$What is marketing myopia? Give a recent example.$c$,
  $c$"It's defining your business too narrowly, by your product rather than
by the customer need you serve, so you miss new competitors and opportunities. The fix
is outside-in thinking: *what problem do we solve, for whom, better than whom?* Zomato
becoming Eternal is a recent example of avoiding it: it saw itself as serving everyday
convenience, not just food delivery, and Blinkit became its biggest growth engine."$c$,
  $c$Thinking a *selling* orientation is the same as *marketing*. Selling starts with the product and pushes it out; marketing starts with the customer and pulls the product in.$c$,
  $c$[{"kind":"concept","question":"\"Consumers won't buy enough unless persuaded\" describes which orientation?","answer":"**Selling.**"},{"kind":"application","question":"A phone brand adds a 200 MP camera, but its target buyers care more about battery life. Which trap is this?","answer":"**Product orientation, leading to marketing myopia.** A superior feature isn't a superior value proposition."},{"kind":"case","question":"A paint company sees itself as being in \"the paint business\". What would a non-myopic definition be, and what new opportunities does it open?","answer":"\"Helping people create beautiful, lasting homes.\" That opens up waterproofing, home décor, painting services and design consultation."}]$c$::jsonb,
  $c$Introduction to Marketing Management.pdf slides 16–23$c$, $c$draft$c$
),
(
  $c$mkt-05$c$, $c$mkt$c$, 5, $c$The Marketing Environment: Micro & Macro (PESTLE)$c$,
  $c$Marketing decisions are shaped by nearby actors (the microenvironment) and by big societal forces (the macroenvironment) that no company controls.$c$,
  $c$- **Microenvironment (close to the firm):** the company itself, suppliers, intermediaries
  (distributors, retailers, quick-commerce apps), customers, competitors and publics
  (media, government, local communities, social media).
- **Macroenvironment (PESTLE):** **P**olitical, **E**conomic, **S**ocial, **T**echnological,
  **L**egal, **E**nvironmental.
- A marketer can't control these forces, only **scan → analyse → identify → respond**.
- Key idea: **the same change is an opportunity for one firm and a threat to another.**
  AI threatens a traditional ad agency but helps an AI-first one.$c$,
  $c$Your favourite Kolkata café:
- **Micro:** its milk supplier, Swiggy and Zomato, *you*, the café next door, and the local residents' association.
- **Macro:** milk prices rising with inflation (Economic), GST rates (Political), the
  plastic-straw ban (Environmental/Legal), UPI payments (Technological), students
  working from cafés (Social).

If your pocket money stays at ₹5,000 but prices rise 6%, your *real* spending power has
fallen, so the café's ₹100 coffee feels pricier even though nothing at the café changed.$c$,
  $c$✅ Verified (Nov 2025)$c$,
  $c$In November 2025, the government notified the **Digital Personal Data Protection (DPDP)
Rules**. The main obligations, including clear notice and consent before collecting
personal data and reporting data breaches, apply after **18 months**, around May 2027.
That's a **Legal** force reshaping marketing: every app, loyalty program and personalised ad
must now be built around consent.
*Sources: The Week / PTI, 14 Nov 2025; AZB & Partners and Mondaq legal summaries.*$c$,
  $c$Do a quick PESTLE analysis of electric vehicles in India.$c$,
  $c$"**Political:** government incentives and industrial policy. **Economic:**
fuel prices, financing, total cost of ownership. **Social:** urban buyers changing how
they travel. **Technological:** batteries, charging infrastructure, software. **Legal:**
safety and emission rules. **Environmental:** climate concerns. The point is that these
forces act *together*, so carmakers must change product, pricing, communication and
charging partnerships at the same time."$c$,
  $c$Listing PESTLE factors as a checklist. Interviewers want the **"so what"**: what each force means for the company's decisions.$c$,
  $c$[{"kind":"concept","question":"Are competitors part of the micro- or macroenvironment?","answer":"**Microenvironment.**"},{"kind":"application","question":"Rising edible-oil prices hit an FMCG company. Name three marketing responses from the notes.","answer":"For example, **raise prices, shrink pack sizes, reformulate, or revise promotions.**"},{"kind":"case","question":"A fashion app collects users' location, browsing and purchase history to personalise ads. Under DPDP, what must it change?","answer":"Get **clear, informed consent** for what it collects and why, give proper notice, protect the data and report breaches. Personalisation is still possible, but only built on trust and consent."}]$c$::jsonb,
  $c$Marketing Environment.pdf slides 02–18, 22$c$, $c$draft$c$
),
(
  $c$mkt-06$c$, $c$mkt$c$, 6, $c$Porter's Five Forces & Competitive Advantage$c$,
  $c$Five forces decide how attractive an industry's profits are: rivalry, new entrants, supplier power, buyer power and substitutes.$c$,
  $c$1. **Rivalry** is high when there are many similar competitors, slow growth and low switching costs.
2. **Threat of new entrants** is low when barriers are high: capital, scale, brand, distribution, network effects.
3. **Supplier power** is high when there are few suppliers and their input is critical and hard to replace.
4. **Buyer power** is high when customers have many alternatives, easy information and low switching costs.
5. **Substitutes** are *different products solving the same need*. Tea is a substitute for coffee, and so is a nap.

**Competitive advantage:** a feature is only an advantage if customers value it **and**
competitors can't easily copy it. Apple's advantage is its whole *system* (brand,
ecosystem, services), not the phone's specs.$c$,
  $c$**the photocopy shop at the college gate**

- **Rivalry:** three shops side by side, all charging ₹1–2 a page.
- **New entrants:** anyone with a printer can start one, so barriers are low.
- **Suppliers:** paper and toner are available everywhere, so supplier power is low.
- **Buyers:** students compare ₹1 vs ₹2 instantly and switch, so buyer power is high.
- **Substitutes:** PDFs on phones, the biggest threat of all.

Verdict: an **unattractive** industry, unless a shop builds an advantage such as binding,
late-night hours or WhatsApp ordering.$c$,
  $c$✅ Verified (2024–26)$c$,
  $c$India's quick-commerce market shows all five forces at once. **Blinkit** leads (about 3.4–3.6
million daily orders), followed by **Zepto** and **Swiggy Instamart**. Then big players
entered: **Flipkart Minutes** launched in August 2024 and passed 1,000 dark stores in under
two years, and **Amazon** joined with **Amazon Now**. Rivalry is intense, buyers can switch
apps in seconds, and the main entry barrier is the capital needed for dark stores.
*Sources: Business Today, 8 Aug 2024; TechCrunch (Datum Intelligence estimates); Inc42.*$c$,
  $c$Is quick commerce an attractive industry? Use Five Forces.$c$,
  $c$"Rivalry is very high: Blinkit, Zepto, Instamart and now Flipkart and
Amazon compete on speed and discounts. Buyer power is high, because switching apps costs
nothing. The threat of new entrants is moderate: dark stores need heavy capital, but deep-pocketed
players like Flipkart and Amazon can afford it. Substitutes include kirana stores and
regular e-commerce. So it's a tough industry for profits, and winners will need real
advantages such as density of dark stores, private labels and loyalty programs."$c$,
  $c$Defining substitutes as "similar products". A substitute solves the **same need** in a different way. Netflix competes with Instagram and sleep for your time, not just with Prime Video.$c$,
  $c$[{"kind":"concept","question":"Which force is high when switching costs are low and information is easily available?","answer":"**Bargaining power of buyers.**"},{"kind":"application","question":"Only two companies in the world make an advanced chip that phone makers need. Which force is strong?","answer":"**Supplier power.**"},{"kind":"case","question":"A coffee chain only tracks other coffee chains as competitors. What is it missing?","answer":"**Substitutes defined by need**: tea, energy drinks, soft drinks, even \"a place to sit with friends\". Its real competitive set is much broader."}]$c$::jsonb,
  $c$Industry Structure and Competitive Analysis.pdf slides 02–15$c$, $c$draft$c$
),
(
  $c$mkt-07$c$, $c$mkt$c$, 7, $c$Four Types of Buying Behaviour$c$,
  $c$How people buy depends on two things: how involved they are, and how different the brands look to them.$c$,
  $c$| | Brands look **different** | Brands look **similar** |
|---|---|---|
| **High involvement** | **Complex buying**: lots of research and comparison | **Dissonance-reducing**: decide fairly quickly, worry afterwards |
| **Low involvement** | **Variety-seeking**: switch just for novelty | **Habitual**: buy the familiar one without thinking |

**Involvement** isn't just about price. It's about **risk, personal relevance and consequences**.
What the marketer should do differs for each:
- **Complex:** explain the differences.
- **Dissonance-reducing:** reassure the customer *after* purchase.
- **Habitual:** be available everywhere.
- **Variety-seeking:** give people reasons to try.$c$,
  $c$In one month, a hostel student buys:
- a **₹10** Parle-G: *habitual*, the same pack every time.
- a **₹20** chips packet in a new flavour: *variety-seeking*, just to try it.
- a **₹15,000** mattress: *dissonance-reducing*. They all look the same, so the student picks one quickly, then wonders "did I choose right?"
- a **₹70,000** laptop: *complex*. Weeks of reviews, specs and asking seniors.$c$,
  $c$✅ Verified (Sept 2025)$c$,
  $c$On **2 September 2025**, Apple opened **Apple Hebbal** in Bengaluru, its third store in India
and its first in South India. An iPhone or MacBook is a classic **complex purchase**: high price,
high personal relevance, real brand differences. A store where buyers can handle devices,
compare models and ask questions lowers the **perceived risk** that makes complex buyers hesitate.
*Sources: Apple Newsroom via Business Wire; Storyboard18, Sept 2025.*$c$,
  $c$How would your marketing differ for a mattress versus a laptop?$c$,
  $c$"Both are high-involvement, but buyers see laptop brands as clearly different,
so that's complex buying: I'd help them compare, with spec guides, demos and reviews. Mattresses
look similar, so buyers decide fast and then doubt themselves. That's dissonance-reducing, so I'd
focus on *after* the sale: a 100-night trial, easy returns, follow-up calls, and reviews from
happy customers."$c$,
  $c$Assuming involvement just means "expensive". A ₹500 baby food can be very high-involvement because the risk to the baby feels high.$c$,
  $c$[{"kind":"concept","question":"Low involvement + significant brand differences = ?","answer":"**Variety-seeking buying.**"},{"kind":"application","question":"For habitual products like salt, what matters most to the marketer?","answer":"**Availability and easy recognition**: distribution, distinctive packaging, repetition."},{"kind":"case","question":"An insurance company finds that many customers cancel within 15 days of buying a policy. Which buying type is this, and what's the fix?","answer":"**Dissonance-reducing.** Policies look similar, so buyers doubt their choice afterwards. The fix is post-purchase reassurance: a welcome call, a clear benefits summary, and testimonials."}]$c$::jsonb,
  $c$Understanding Consumer and Business Markets.pdf slides 06–11$c$, $c$draft$c$
),
(
  $c$mkt-08$c$, $c$mkt$c$, 8, $c$The Consumer Decision Process (and Why It's No Longer a Straight Line)$c$,
  $c$Need recognition → information search → evaluation → purchase → post-purchase. Today, buyers loop back and forth between the stages.$c$,
  $c$1. **Need recognition:** a gap between where you are and where you want to be ("my laptop is too slow").
2. **Information search:** personal (friends), commercial (ads, sales staff), public (reviews,
   comparisons) and experiential (trying it in a store).
3. **Evaluation:** buyers weigh attributes differently. Some *trade off* (a weaker battery is OK
   if the camera is great); others use *cut-offs* (no 5G, no deal).
4. **Purchase decision:** **intention isn't purchase**. Stock-outs, EMI offers or family opinion can change it at the last minute.
5. **Post-purchase:** satisfaction, reviews, repeat purchase, or doubt ("dissonance").

Digital journeys loop: **showrooming** (look in the store, buy online) and **webrooming** (research online, buy in the store).$c$,
  $c$**a ₹15,000 phone**

You see an Instagram reel (need) → watch 3 YouTube reviews (search) → compare 2 models on
Flipkart (evaluation) → visit the store to hold both (webrooming) → buy the *other* model because
it has a ₹1,000 exchange offer (intention changed) → post a 4-star review (post-purchase), which
becomes the next buyer's information search.$c$,
  $c$✅ Verified (FY2025)$c$,
  $c$**Nykaa** started online, but ended FY2025 with **237 physical beauty stores in 79 cities**,
having added about 50 stores that year. Beauty buyers discover products on Instagram and in
reviews, but many still want to **test the shade or smell** before buying. Stores serve
the evaluation stage that screens can't.
*Sources: Nykaa Q4 FY25 results coverage (Business Standard, May 2025); Nykaa AGM presentation 2025.*$c$,
  $c$Why would an online-first brand open physical stores?$c$,
  $c$"Because buyers don't move in a straight line from search to purchase. In
categories like beauty, discovery happens online but evaluation needs touch and trial, so
stores reduce risk and lift conversion, and they make the online channel stronger too. Nykaa
reaching 237 stores is a good example. The brand has to feel like one experience across
every touchpoint."$c$,
  $c$Treating purchase *intention* as a sale. Plenty of things happen between "I'll buy this" and paying: stock, price, EMI, delivery time, family.$c$,
  $c$[{"kind":"concept","question":"Researching online, then buying in a store, is called…","answer":"**Webrooming.**"},{"kind":"application","question":"A buyer rejects every laptop under 16 GB RAM, however good the other features are. Which evaluation rule is this?","answer":"**A cut-off (non-compensatory) rule.**"},{"kind":"case","question":"An electronics brand sees high traffic on its product page but low sales. Using the decision process, where would you look first?","answer":"At **evaluation and purchase**: price compared with rivals, reviews, stock availability, EMI or exchange offers, delivery time. Traffic shows interest; something is blocking the final step."}]$c$::jsonb,
  $c$Understanding Consumer and Business Markets.pdf slides 12–28$c$, $c$draft$c$
),
(
  $c$mkt-09$c$, $c$mkt$c$, 9, $c$B2B Buying: The Buying Centre & Buying Situations$c$,
  $c$When businesses buy, many people decide together, and the effort depends on whether it's a routine reorder or a first-time purchase.$c$,
  $c$**Buying centre:** everyone who influences an organisation's purchase.
| Role | Who, typically |
|---|---|
| **Initiator** | Spots the need |
| **User** | Will actually use it |
| **Influencer** | Shapes the specifications (IT, technical experts) |
| **Decider** | Makes the final choice |
| **Approver** | Authorises the spend |
| **Buyer** | Negotiates and places the order (procurement) |
| **Gatekeeper** | Controls which vendors and information get through |

**Buying situations:** a **straight rebuy** is a routine reorder; a **modified rebuy** changes
the specs, price or supplier; a **new task** is a first-time purchase with the most research and risk.
**Derived demand:** business demand depends on *end-consumer* demand. Car-part makers sell more only when people buy more cars.$c$,
  $c$**total cost, not price**

A college is choosing between two projectors.
- **A** costs **₹40,000** and needs an **₹8,000** lamp every year for 5 years: **₹80,000** in total.
- **B** costs **₹55,000** but has an LED with no lamp to replace: **₹55,000** in total.

The cheaper invoice is the *costlier* choice. B2B buyers judge **total cost of ownership**.$c$,
  $c$✅ Verified (FY2024-25)$c$,
  $c$India's **Government e-Marketplace (GeM)**, the government's online procurement platform,
recorded about **₹5.4 lakh crore** in purchases in FY2024-25, a record. Micro and small
enterprises (MSEs) won about **37%** of the platform's cumulative order value, well above the
mandated 25%. This is B2B buying at scale: formal specifications, registered suppliers and
transparent comparison.
*Sources: AIR News / PIB, 8–9 Aug 2025; Outlook Business, Aug 2025.*$c$,
  $c$How is selling to a company different from selling to a consumer?$c$,
  $c$"Three big differences. First, many people decide, not one: users care about
ease of use, IT about compatibility, finance about total cost, and procurement about terms, so
you must create value for each. Second, it's more formal, with specifications, proposals and
negotiation. Third, it's relationship-driven: after-sales service and reliability decide whether
you get the repeat order. And demand is *derived*, so I'd watch the customer's own market."$c$,
  $c$Pitching only to the person who signs the order. In B2B, the user or the IT gatekeeper can quietly kill a deal the decider liked.$c$,
  $c$[{"kind":"concept","question":"A hospital reorders the same gloves from the same supplier every month. Which buying situation?","answer":"**Straight rebuy.**"},{"kind":"application","question":"Demand for steel rises because car sales are booming. What concept is this?","answer":"**Derived demand.**"},{"kind":"case","question":"You sell CRM software to a large company. The sales head loves your demo, but the deal stalls for months. Who in the buying centre should you engage?","answer":"The **IT team** (influencer and gatekeeper: security, integration), **finance** (total cost and approval) and **procurement** (buyer: terms). Winning the user isn't enough."}]$c$::jsonb,
  $c$Understanding Consumer and Business Markets.pdf slides 45–63$c$, $c$draft$c$
),
(
  $c$mkt-10$c$, $c$mkt$c$, 10, $c$Market Measurement & Demand Estimation$c$,
  $c$Before deciding anything, size the market, and always define exactly *which* market: product × customer × place × time.$c$,
  $c$- **Market demand:** what a defined group of customers would buy, in a given place and period.
- **Market potential:** the upper limit if the whole industry marketed as hard as possible.
- **Company demand / sales forecast:** *your* realistic share of that.
- A useful definition is specific: "premium electric SUVs in Bengaluru in FY2027", not "the EV market".
- **Chain-ratio method:** start with a base number and multiply through the filters.
  From the notes: 1.2 crore urban households × 28% buy premium coffee × 35% would try specialty
  coffee × 8 packs a year × ₹450 ≈ **₹423 crore**.$c$,
  $c$**cold coffee at your college**

2,000 students × 60% drink coffee × 40% would buy cold coffee × 3 cups a week × ₹50
= **₹72,000 a week**. Over 30 college weeks, that's **₹21.6 lakh a year** of market
potential. If your stall can realistically win 25%, your sales forecast is about **₹5.4 lakh**.
Change any one assumption and the answer moves, so always test optimistic, base and pessimistic cases.$c$,
  $c$✅ Verified (2025)$c$,
  $c$How big is India's digital advertising market? An **ET BrandEquity–Ipsos** report says about
**₹49,000 crore (44% of all ad spend)** for FY2025, but a **dentsu–e4m** report says about
**₹71,621 crore (59%)** for calendar 2025. Both are respected reports. The gap comes from
**definitions**: financial year versus calendar year, and what counts as "advertising". The
lesson for every market-sizing question: **define before you measure.**
*Sources: Ipsos India, "State of Digital Marketing in India 2025-26"; dentsu–e4m Digital Report via exchange4media.*$c$,
  $c$Estimate the annual market for cold coffee in Kolkata."* (a guesstimate)$c$,
  $c$"First I'd define it: say, ready-to-drink and café cold coffee, urban Kolkata,
per year. Then chain ratios: about 1.5 crore people → share in the 15–40 age group → share who
drink coffee → share who drink it cold → cups a month × months of warm weather × average price.
I'd state each assumption out loud and give a range, not one number. The structure matters
more than the exact answer."$c$,
  $c$Quoting one market-size number without saying *which* market and *which* period, or confusing **market potential** (the ceiling) with **your sales forecast** (your realistic share).$c$,
  $c$[{"kind":"concept","question":"The upper limit of industry sales as marketing effort becomes very large is called…","answer":"**Market potential.**"},{"kind":"application","question":"10,000 households × 20% buy × 4 packs a year × ₹100. What's the market?","answer":"**₹8,00,000 (₹8 lakh).**"},{"kind":"case","question":"Two consultants give a client very different market sizes for the same product. What's the first thing you check?","answer":"Their **definitions**: product scope, customer group, geography, time period (FY vs calendar year) and assumptions. Most gaps come from defining different markets."}]$c$::jsonb,
  $c$Market Measurement Research.pdf slides 05–12$c$, $c$draft$c$
),
(
  $c$mkt-11$c$, $c$mkt$c$, 11, $c$Marketing Research: From Data to Insight$c$,
  $c$Research starts with the decision you need to make, not with a questionnaire, and its goal is insight, not just data.$c$,
  $c$**Process:** define the problem and the decision → plan the research → collect → analyse → present → decide.
- **Secondary data** already exists (sales records, Census, industry reports, Google Trends). It's
  fast and cheap, but may be outdated or a poor fit. **Primary data** is collected fresh
  (interviews, surveys, experiments). It fits your question exactly, but costs time and money.
- **Qualitative** research answers *why* and *how*, with small samples (interviews, focus groups).
  **Quantitative** research answers *how many* and *how much*, with large samples (surveys, A/B tests).
- **Data → information → insight:** "repeat orders are 18% lower when the first delivery was late"
  is *information*. "First-delivery reliability builds trust, so fix fulfilment before spending on
  discounts" is an **insight**, because it changes a decision.$c$,
  $c$The canteen's samosa sales fell 30%. A weak response is "let's run a survey." A strong response:
1. **Check existing data first:** did the price go up from ₹10 to ₹15? Did a new café open nearby?
2. **Talk to 10 students** (qualitative) to learn *why*.
3. **Survey 200** (quantitative) to learn *how many* feel that way.
4. **Test a fix:** ₹12 samosas in one counter for a week, compared with the other counter.$c$,
  $c$✅ Verified (June 2025)$c$,
  $c$On **16 June 2025**, the government notified India's next **Census**, with a reference date of
**1 March 2027** (October 2026 for snow-bound areas). It will include caste enumeration. The last
Census was in **2011**, so for over a decade marketers have sized markets from 15-year-old
**secondary data** plus estimates. Census 2027 will reset many market-size calculations.
*Sources: Registrar General notification, 16 June 2025; WION and Deccan Herald reports.*$c$,
  $c$Our sales are falling. What research would you do?$c$,
  $c$"I wouldn't jump to a survey. First I'd define the decision: are we deciding
on price, product, channel or communication? Then I'd check internal data to see which segments,
regions and channels are falling. Next, qualitative interviews to understand why, then a survey
to size the main reasons, and finally a small experiment to test the fix. Secondary data first,
primary data only for what's still uncertain."$c$,
  $c$Treating search interest or likes as market size, or assuming **correlation means causation**. Ice-cream sales and AC sales rise together, but neither causes the other; summer causes both.$c$,
  $c$[{"kind":"concept","question":"\"Why do first-time users not return?\" Qualitative or quantitative?","answer":"**Qualitative first** (interviews, journey observation), then quantitative to size it."},{"kind":"application","question":"Which landing page converts better, A or B? Best method?","answer":"**A randomised A/B experiment.**"},{"kind":"case","question":"A manager says: \"Our survey of 5,000 Instagram followers shows 90% love our new flavour, so let's launch nationally.\" What's wrong?","answer":"**Sampling bias.** Followers already like the brand, so they don't represent the whole market. A large biased sample can still be confidently wrong."}]$c$::jsonb,
  $c$Market Measurement Research.pdf slides 14–31$c$, $c$draft$c$
),
(
  $c$mkt-12$c$, $c$mkt$c$, 12, $c$Marketing Ethics: Dark Patterns, Greenwashing & Disclosure$c$,
  $c$Legal isn't the same as ethical. Good marketing informs a free choice; unethical marketing exploits an information gap.$c$,
  $c$The key issues:
- **Deceptive advertising:** claims like "100% effective" with hidden conditions.
- **Manipulation:** deliberately exploiting fear, insecurity or vulnerability.
- **Dark patterns:** app designs that push you into choices you didn't intend: false urgency,
  pre-ticked add-ons, hard-to-cancel subscriptions, charges that appear only at checkout.
- **Privacy:** customers often don't know what data is collected, why, or who sees it.
- **Influencer disclosure:** paid posts must say so (#ad); otherwise people read them as honest opinions.
- **Greenwashing:** vague "eco-friendly" claims without evidence.

**Five tests for any decision:** Legal? Truthful? Transparent? Fair to the consumer? Would it survive the **front page** of a newspaper?$c$,
  $c$You add a ₹199 order to your cart. At checkout, a **₹99 membership is pre-ticked** and a
**₹15 "handling fee"** appears, so your total is now **₹313**. Nothing was hidden in the
small print, so it may be legal, but you were steered into spending **57% more** than you chose
to. That's a dark pattern, and India's consumer rules now prohibit it.$c$,
  $c$✅ Verified (June 2025)$c$,
  $c$On **5 June 2025**, India's consumer regulator, the **CCPA**, told all e-commerce platforms to
**self-audit for dark patterns within three months** and remove them. Its 2023 guidelines list
**13 banned practices**, including false urgency, basket sneaking (adding items you didn't choose)
and subscription traps. Pre-ticked consent boxes are not allowed.
*Sources: Storyboard18 and Outlook Money, June 2025; CCPA Guidelines on Dark Patterns, 2023.*$c$,
  $c$If something is legal, is it ethical enough for a brand to do it?$c$,
  $c$"No. Compliance is the floor, not the standard. A pre-ticked add-on or a
countdown timer that resets may have been legal once, but it exploits the customer and destroys
trust, which costs more than the extra revenue. I'd use five tests: legal, truthful, transparent,
fair, and the front-page test. India's 2025 dark-patterns crackdown shows the law is catching up
with what was already unethical."$c$,
  $c$Mixing up **CSR** (a company's responsibility to society), **social marketing** (using marketing to change behaviour for good, like road-safety campaigns) and **cause-related marketing** ("₹1 from every purchase goes to…").$c$,
  $c$[{"kind":"concept","question":"A shopping app adds an item to your cart that you didn't choose. Which dark pattern?","answer":"**Basket sneaking.**"},{"kind":"application","question":"A brand says \"eco-friendly packaging\" with no details or evidence. What's the issue?","answer":"**Greenwashing.** Claims must be specific and substantiated."},{"kind":"case","question":"A fitness creator praises a protein powder without mentioning the brand paid them ₹50,000. The post is popular. What's the problem, and what's the fix?","answer":"**Undisclosed paid promotion.** Followers think it's an independent opinion, which is misleading. Fix: a clear \"#ad / paid partnership\" label at the start, as advertising standards require."}]$c$::jsonb,
  $c$Ethics and Social Responsibility in Marketing.pdf slides 02–16 · Emerging Trends in Marketing.pdf slides 04, 10–11$c$, $c$draft$c$
)
on conflict (id) do update set
  subject_id = excluded.subject_id, num = excluded.num, title = excluded.title,
  one_line = excluded.one_line, explain = excluded.explain, example = excluded.example,
  news_label = excluded.news_label, news = excluded.news,
  interview_q = excluded.interview_q, interview_a = excluded.interview_a,
  trap = excluded.trap, practice = excluded.practice,
  source = excluded.source, status = excluded.status;

-- Check: this should list each subject with its number of cards
select subject_id, count(*) as cards from concept_cards group by subject_id order by subject_id;
