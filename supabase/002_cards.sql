-- =====================================================================
-- ChaiCase concept cards: 86 cards
-- Made automatically by scripts/cards-to-sql.mjs from the files in content/.
-- Don't edit this file by hand: edit the card files, then run the script again.
--
-- Run in Supabase: SQL Editor → New query → paste → Run.
-- Safe to run more than once: existing cards are updated, not duplicated.
-- =====================================================================

-- Subjects (new ones are added; existing ones are left alone)
insert into subjects (id, name, sort) values
  ('econ', 'Economics', 1), ('fin', 'Finance', 2), ('mkt', 'Marketing', 3),
  ('acct', 'Accounting', 4), ('ob', 'Organisational Behaviour', 5),
  ('law', 'Business Law', 6)
on conflict (id) do nothing;

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
  $c$You have ₹60 for snacks. Samosas cost ₹12, so you buy 5. The price rises to ₹20.
Now ₹60 buys only 3, and you might switch to vada pav instead. Same money, same
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
  $c$Demand_Notes.PDF pp. 2.7, 2.11–2.13 · Demand_in_Economics.pptx slide 8$c$, $c$verified$c$
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
  $c$Demand_Notes.PDF pp. 2.13–2.17 · Demand_in_Economics.pptx slide 6$c$, $c$verified$c$
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
  $c$A café sells 100 cold coffees a day at ₹40, which is **₹4,000** in revenue. It raises the price 10% to ₹44.
- If sales fall to **80** (−20%): elasticity = 20 ÷ 10 = **2, elastic**. Revenue = ₹3,520. **Lost money.**
- If sales fall to **95** (−5%): elasticity = 5 ÷ 10 = **0.5, inelastic**. Revenue = ₹4,180. **Gained money.**

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
  $c$Demand_Notes.PDF pp. 2.17–2.30 · Elasticity_in_Economics.pdf slides 4–6, 10$c$, $c$verified$c$
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
  $c$Demand_Notes.PDF pp. 2.30–2.32 · Elasticity_in_Economics.pdf slide 7$c$, $c$verified$c$
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
  $c$Demand_Notes.PDF pp. 2.29, 2.33–2.35 · Elasticity_in_Economics.pdf slide 8$c$, $c$verified$c$
),
(
  $c$econ-06$c$, $c$econ$c$, 6, $c$Scarcity & Opportunity Cost$c$,
  $c$Resources are limited but wants are not, so every choice costs you the best thing you gave up.$c$,
  $c$Economics starts with **scarcity**: we never have enough money, time or resources for
everything we want, so we must choose. Every choice is a **trade-off**. The
**opportunity cost** is the value of the *next-best* option you gave up, not every option
and not just the money. Smart decisions are also made **at the margin**: not "study or
sleep?" but "is *one more* hour of study worth *one less* hour of sleep?"$c$,
  $c$You have ₹250 and one evening. You could go for a pizza, buy a used exam guide, or
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
  $c$foundation of economics (1).ppt slides 2–10$c$, $c$verified$c$
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
  $c$foundation of economics (1).ppt slides 11–18$c$, $c$verified$c$
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
  $c$Supply_in_Economics.pptx slides 2–8 · Demand_vs_Supply_Comparative_Analysis.pptx slides 2–6$c$, $c$verified$c$
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
  $c$Demand_vs_Supply_Comparative_Analysis.pptx slides 4–8$c$, $c$verified$c$
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
  $c$Consumer Eqm. - revision basics.PDF slides 3–18 · Demand_Notes.PDF p. 2.11$c$, $c$verified$c$
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
  $c$You have ₹80. Chai costs ₹10 and a samosa ₹20. Your budget line: 8 chai, *or* 4 samosas,
*or* mixes like 4 chai + 2 samosas (₹40 + ₹40). Among all the mixes costing exactly ₹80,
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
  $c$Consumer Eqm. - revision basics.PDF slides 2, 25–43$c$, $c$verified$c$
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
that's the **want**. You have ₹120 in your pocket, so you buy the ₹80 canteen thali:
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
  $c$Introduction to Marketing Management.pdf slide 07$c$, $c$verified$c$
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
  $c$Chai at the gate stall costs **₹10** and takes 2 minutes. The café's cappuccino costs **₹180**,
with AC, Wi-Fi and a 15-minute wait. For a quick break between classes, the stall gives more
value, because benefits are similar and costs are lower. For a 2-hour group study session,
the café wins, because seating and Wi-Fi are worth the extra ₹170. **Same customer,
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
  $c$Introduction to Marketing Management.pdf slides 09–11, 19$c$, $c$verified$c$
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
  $c$A regular at the canteen spends ₹80 a day, and the canteen makes **₹20 profit** on it.
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
  $c$Introduction to Marketing Management.pdf slides 12–14$c$, $c$verified$c$
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
  $c$Introduction to Marketing Management.pdf slides 16–23$c$, $c$verified$c$
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
fallen, so the café's ₹150 coffee feels pricier even though nothing at the café changed.$c$,
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
  $c$Marketing Environment.pdf slides 02–18, 22$c$, $c$verified$c$
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
  $c$Industry Structure and Competitive Analysis.pdf slides 02–15$c$, $c$verified$c$
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
  $c$Understanding Consumer and Business Markets.pdf slides 06–11$c$, $c$verified$c$
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
  $c$Understanding Consumer and Business Markets.pdf slides 12–28$c$, $c$verified$c$
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
  $c$Understanding Consumer and Business Markets.pdf slides 45–63$c$, $c$verified$c$
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
  $c$Market Measurement Research.pdf slides 05–12$c$, $c$verified$c$
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
  $c$Market Measurement Research.pdf slides 14–31$c$, $c$verified$c$
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
  $c$Ethics and Social Responsibility in Marketing.pdf slides 02–16 · Emerging Trends in Marketing.pdf slides 04, 10–11$c$, $c$verified$c$
),
(
  $c$acct-01$c$, $c$acct$c$, 1, $c$Stock Levels: Reorder, Minimum, Maximum & Danger$c$,
  $c$Stock levels tell a storekeeper when to reorder, the lowest safe stock, and the most stock worth holding, so you never run out and never overstock.$c$,
  $c$- **Reorder level (ROL)** = Maximum usage × Maximum lead time. When stock falls to this level, place the next order.
- **Minimum level** = ROL − (Normal usage × Normal lead time). Falling below it is a warning sign.
- **Maximum level** = ROL + Reorder quantity − (Minimum usage × Minimum lead time). Holding more than this wastes money and space.
- **Average stock** = Minimum level + ½ × Reorder quantity.
- **Danger level** = Normal usage × time needed for an *emergency* purchase. Below this, buy urgently, even at a higher price.
- **Safety stock** is the cushion that protects you when usage jumps or the supplier is late.

If "normal" values aren't given, take the average of the maximum and minimum.$c$,
  $c$**milk packets at the college canteen**

The canteen uses **20–40 packets a day** (normal 30). The dairy takes **2–4 days** to deliver (normal 3), and each order is **150 packets**.
- Reorder level = 40 × 4 = **160 packets**
- Minimum level = 160 − (30 × 3) = **70 packets**
- Maximum level = 160 + 150 − (20 × 2) = **270 packets**
- Average stock = 70 + ½ × 150 = **145 packets**
- If an emergency delivery takes 1 day, the danger level = 30 × 1 = **30 packets**$c$,
  $c$✅ Verified (2024–25)$c$,
  $c$From early 2024, attacks on ships in the Red Sea forced many vessels to sail around Africa's
Cape of Good Hope instead of using the Suez Canal. For Indian exporters this added roughly
**10–20 days** per voyage, and India Ratings estimated working-capital cycles could stretch by
**15–20 days**. A longer lead time pushes the **reorder level** up: firms must order earlier and
hold more stock, which ties up more cash.
*Sources: Business Standard and Reuters reporting, Feb 2024; Outlook Business ("1,000 days of the Red Sea crisis", citing GTRI).*$c$,
  $c$Your key supplier's delivery time doubles. What changes in your inventory policy?$c$,
  $c$"The reorder level is maximum usage times maximum lead time, so if lead time
doubles, the reorder level roughly doubles too. I'd order earlier, raise safety stock for the
uncertainty, and accept higher working capital in the short run. Then I'd fix the cause: add a
second or local supplier, so we're not holding extra stock forever."$c$,
  $c$Ordering when stock hits the **minimum** level. By then it's too late: the order should go out at the **reorder** level, which is higher.$c$,
  $c$[{"kind":"concept","question":"Maximum usage is 40 units a day and maximum lead time is 4 days. What's the reorder level?","answer":"**160 units** (40 × 4)."},{"kind":"application","question":"Reorder level is 500 units, normal usage 60 units a week and normal lead time 5 weeks. What's the minimum level?","answer":"**200 units** (500 − 60 × 5)."},{"kind":"case","question":"Shipping delays add two weeks to an importer's lead time. What should it do first, and what's the cost?","answer":"Raise the **reorder level and safety stock** (order earlier) so production doesn't stop. The cost is more **working capital** tied up in stock, so it should also look for nearer or second suppliers."}]$c$::jsonb,
  $c$cost module 2.LMS.pptx slides 3–7 · Formulas for Inventory control.docx$c$, $c$verified$c$
),
(
  $c$acct-02$c$, $c$acct$c$, 2, $c$Economic Order Quantity (EOQ)$c$,
  $c$EOQ is the order size that keeps the total of **ordering costs + holding costs** as low as possible.$c$,
  $c$EOQ = √(2DS ÷ H), where **D** = annual demand (units), **S** = cost of placing one order, **H** = cost of holding one unit for a year.
- Order **too often** in small lots → high ordering costs (delivery, paperwork).
- Order **too much** at once → high holding costs (storage, insurance, damage, and the **interest** on cash tied up in stock).
- At EOQ, yearly ordering cost = yearly holding cost.

It assumes steady demand, a fixed lead time, constant costs and no bulk discounts. Real life often breaks these.$c$,
  $c$**notebooks at a stationery shop**

The shop sells **3,600 notebooks a year**. Each order costs **₹50** (delivery + paperwork), and holding one notebook for a year costs **₹4**.
- EOQ = √(2 × 3,600 × 50 ÷ 4) = √90,000 = **300 notebooks**, so **12 orders a year** (once a month).
- Ordering cost = 12 × ₹50 = **₹600**. Holding cost = average stock 150 × ₹4 = **₹600**. Total **₹1,200**.
- Compare ordering 900 at a time: 4 orders × ₹50 = ₹200, but holding = 450 × ₹4 = ₹1,800. Total **₹2,000**.$c$,
  $c$✅ Verified (2025)$c$,
  $c$The RBI cut the repo rate four times in 2025, by **125 basis points** in all, ending at **5.25%**
on 5 December 2025. Cheaper borrowing lowers the **interest cost of money stuck in stock**, which
is part of the holding cost (H). A lower H means a **larger EOQ**: firms can afford to order a little
more at a time. Because of the square root, the effect is gentle, not dramatic.
*Sources: RBI Monetary Policy Statement, 5 Dec 2025; Business Standard, 5 Dec 2025.*$c$,
  $c$Why might a company order more than its EOQ?$c$,
  $c$"EOQ only balances ordering and holding costs, and it assumes steady prices and
supply. A company may order more to get a **bulk discount**, to buy ahead of an expected **price rise**,
or to protect against **supply disruption**. I'd compare the total cost, including the purchase
price and the risk of a stockout, not just the EOQ cost."$c$,
  $c$Thinking EOQ gives the cheapest *purchase price*. It doesn't consider discounts at all; it only minimises ordering + holding costs.$c$,
  $c$[{"kind":"concept","question":"At the EOQ, how do yearly ordering costs compare with yearly holding costs?","answer":"**They're equal.**"},{"kind":"application","question":"D = 800 units, S = ₹100 per order, H = ₹4 per unit per year. What's the EOQ?","answer":"**200 units** (√(2 × 800 × 100 ÷ 4) = √40,000)."},{"kind":"case","question":"A supplier offers a 5% discount if you order 1,000 units at a time, well above your EOQ of 300. How do you decide?","answer":"Compare **total annual cost** both ways: purchase cost + ordering cost + holding cost. Take the discount only if the saving on price beats the extra holding cost (and you have space and cash)."}]$c$::jsonb,
  $c$cost module 2.LMS.pptx slides 14–19 · Module-2 Inventory_Control_Concept ( NSA).pptx slide 7$c$, $c$verified$c$
),
(
  $c$acct-03$c$, $c$acct$c$, 3, $c$Valuing Stock: FIFO, LIFO & Weighted Average$c$,
  $c$When identical items were bought at different prices, the valuation method decides which cost goes to sales and which stays in closing stock, and that changes reported profit.$c$,
  $c$- **FIFO (First In, First Out):** the oldest costs go to sales first; closing stock is at the **latest** prices.
- **LIFO (Last In, First Out):** the newest costs go to sales first; closing stock is at the **oldest** prices.
- **Weighted average:** one average cost per unit = total cost ÷ total units.

When prices are **rising**: FIFO shows **lower** cost of sales, so **higher profit**; LIFO shows higher cost, so lower profit.
In India, **Ind AS 2 and AS 2 don't allow LIFO** in financial statements, though it still appears in cost accounting exams.
These are **costing assumptions**: the physical goods can move in any order.$c$,
  $c$**pens at the college stationery shop**

The shop buys **10 pens at ₹10**, then **10 more at ₹14**. It sells **12 pens at ₹20** each (revenue ₹240).
| Method | Cost of 12 pens sold | Closing stock (8 pens) | Profit |
|---|---|---|---|
| FIFO | 10×₹10 + 2×₹14 = **₹128** | 8×₹14 = ₹112 | **₹112** |
| LIFO | 10×₹14 + 2×₹10 = **₹160** | 8×₹10 = ₹80 | **₹80** |
| Weighted avg (₹12) | 12×₹12 = **₹144** | 8×₹12 = ₹96 | **₹96** |

Same pens, same sales, three different profits.$c$,
  $c$✅ Verified (2024)$c$,
  $c$Cocoa prices hit records in 2024 after poor harvests in West Africa. Futures passed **$10,000 a
tonne in March 2024** and **$11,000 in April**, several times their usual level. Chocolate makers
like KitKat's owner Nestlé and Hershey said the costs would squeeze them. Under FIFO, cheaper cocoa
bought earlier flows into cost of sales first, so margins look fine at first, then shrink as the
expensive cocoa works its way through.
*Sources: Bloomberg, 28 Mar 2024; BNN Bloomberg, 19 Jun 2024.*$c$,
  $c$Prices are rising. Which valuation method shows higher profit, and why?$c$,
  $c$"FIFO. It charges the older, cheaper costs to sales, so cost of sales is lower
and profit higher, while closing stock reflects current prices. LIFO would show lower profit and
lower tax, but LIFO isn't permitted under Ind AS 2 or AS 2 in India. So Indian companies choose
between FIFO and weighted average."$c$,
  $c$Thinking FIFO or LIFO describes how goods physically leave the store. It's only how **costs** are assigned.$c$,
  $c$[{"kind":"concept","question":"Under FIFO, closing stock is valued at…","answer":"**The latest purchase prices.**"},{"kind":"application","question":"Opening stock 50 units at ₹20, purchase 50 units at ₹30, issue 60 units. Cost of the issue under FIFO?","answer":"**₹1,300** (50 × ₹20 + 10 × ₹30)."},{"kind":"case","question":"Inflation is high, and a CFO in India wants to switch to LIFO to cut taxes. What do you tell her?","answer":"**LIFO isn't allowed** under Ind AS 2 / AS 2 for financial statements. She can choose FIFO or weighted average. Weighted average smooths price swings."}]$c$::jsonb,
  $c$cost module 2.LMS.pptx slides 20–33 · Formulas for Inventory control.docx$c$, $c$verified$c$
),
(
  $c$acct-04$c$, $c$acct$c$, 4, $c$ABC Analysis$c$,
  $c$Not all stock deserves the same attention: a few items make up most of the value, so control them tightly and keep the rest simple.$c$,
  $c$ABC analysis follows the **Pareto (80/20) principle**:
| Category | Share of items | Share of value | Control |
|---|---|---|---|
| **A** | about 10–20% | about 70–80% | Very strict: frequent review, accurate records |
| **B** | about 20–30% | about 15–25% | Moderate |
| **C** | about 50–70% | about 5–10% | Simple: bulk orders, basic checks |

**Limitation:** it looks only at **value**, not at how **critical** an item is. That's why firms pair it with **VED analysis** (Vital, Essential, Desirable).$c$,
  $c$**the canteen's monthly purchases (₹1,00,000, 50 items)**

- **A:** 5 items (10%): gas cylinders, paneer, oil, rice, milk = **₹75,000** (75%). Check daily, buy carefully.
- **B:** 15 items (30%): vegetables, bread, sugar… = **₹18,000** (18%). Weekly review.
- **C:** 30 items (60%): napkins, toothpicks, spices… = **₹7,000** (7%). Buy in bulk once a month.$c$,
  $c$✅ Verified (2025)$c$,
  $c$In April 2025 China began requiring export licences for rare-earth magnets, and supplies to India
slowed sharply. These magnets are a **tiny share** of a vehicle's cost (a C item by value), yet
they are **vital** for electric motors. Bajaj Auto warned its electric-scooter output would be
disrupted from July 2025, and Maruti Suzuki reportedly cut its near-term e-Vitara production
targets. A pure ABC view would have missed the risk.
*Sources: Mobility Outlook and YourStory, Jun 2025; Outlook Business, 2025.*$c$,
  $c$A plant has 5,000 spare parts. How would you control them?$c$,
  $c$"ABC first: rank parts by annual consumption value, then focus tight control,
accurate counts and careful ordering on the few A items that hold most of the money. But I'd add a
criticality check like VED, because a cheap C part that stops the line deserves safety stock too.
The 2025 rare-earth magnet shortage is a good example."$c$,
  $c$Treating C items as unimportant. **Low value isn't low risk.**$c$,
  $c$[{"kind":"concept","question":"In ABC analysis, A items are roughly…","answer":"**10–20% of items but 70–80% of value.**"},{"kind":"application","question":"An item is 5% of the number of items but 60% of the value. Which category?","answer":"**A.**"},{"kind":"case","question":"A ₹50 sensor runs out and stops a whole production line. What did the company's ABC-only system miss?","answer":"**Criticality.** ABC ranks by value only. A VED (Vital, Essential, Desirable) check would mark the sensor as vital and keep safety stock."}]$c$::jsonb,
  $c$cost module 2.LMS.pptx slides 38–41 · Module-2 Inventory_Control_Concept ( NSA).pptx slides 5–6$c$, $c$verified$c$
),
(
  $c$acct-05$c$, $c$acct$c$, 5, $c$Inventory Turnover Ratio$c$,
  $c$How many times a business sells and replaces its stock in a year: faster turnover means less cash stuck on shelves.$c$,
  $c$- **Inventory turnover** = Cost of goods sold ÷ Average inventory
- **Average inventory** = (Opening stock + Closing stock) ÷ 2
- **Inventory days** = 365 ÷ Inventory turnover (how long stock sits, on average)

**High** turnover means stock moves fast and less cash is tied up. **Low** turnover means slow sales, overstocking or obsolete stock.
But *very* high turnover can also mean the business keeps running out.$c$,
  $c$**a Kolkata kirana store**

Opening stock **₹40,000**, closing stock **₹60,000**, cost of goods sold **₹6,00,000** in the year.
- Average inventory = (40,000 + 60,000) ÷ 2 = **₹50,000**
- Turnover = 6,00,000 ÷ 50,000 = **12 times a year**
- Inventory days = 365 ÷ 12 ≈ **30 days**: the shelves are refilled about once a month.

A stationery shop with a turnover of **4** keeps stock for about **91 days**, so three times as much cash sits on its shelves for the same sales.$c$,
  $c$✅ Verified (FY2025)$c$,
  $c$**DMart** (Avenue Supermarts) is known for moving stock fast. It holds only about **a month of
inventory**: roughly **29–36 days**, depending on how it's calculated (investor-update summaries
vs Screener's FY25 data). It does this by stocking a focused range of fast-selling items. With
FY25 revenue of about **₹57,790 crore**, every day of stock saved frees up a large amount of cash.
*Sources: Screener.in (Avenue Supermarts, standalone FY25); Quartr summaries of DMart investor updates.*$c$,
  $c$A company's inventory turnover fell from 8 to 5. Is that good or bad?$c$,
  $c$"Usually a warning. Stock now sits about 73 days instead of 46, so more cash is
tied up and the risk of obsolete or damaged stock rises. But I'd check why first: slowing demand
is bad news, while deliberately stocking up before a price rise or a new store launch may be
sensible. I'd compare with competitors too."$c$,
  $c$Thinking higher turnover is *always* better. Too high can mean frequent stockouts and lost sales.$c$,
  $c$[{"kind":"concept","question":"Inventory turnover is…","answer":"**Cost of goods sold ÷ average inventory.**"},{"kind":"application","question":"Opening stock ₹30,000, closing stock ₹50,000, cost of goods sold ₹2,40,000. What's the turnover?","answer":"**6 times** (2,40,000 ÷ 40,000), about 61 days."},{"kind":"case","question":"Two grocery chains have the same sales. Chain X turns its stock 12 times a year, chain Y 6 times. What does that tell an investor?","answer":"**X needs about half as much cash tied up in stock** (about 30 vs 61 days), so it can fund growth more cheaply. Y may be overstocked or carry slow-moving items."}]$c$::jsonb,
  $c$cost module 2.LMS.pptx slides 34–37$c$, $c$verified$c$
),
(
  $c$acct-06$c$, $c$acct$c$, 6, $c$Paying Workers: Time Rate, Piece Rate, Halsey & Rowan$c$,
  $c$Workers can be paid for **time** spent, for **output** produced, or with a **bonus for time saved**, and each choice changes cost, speed and quality.$c$,
  $c$- **Time rate:** wages = hours × rate. Simple and good for quality, but no push to work faster.
- **Piece rate:** wages = units × rate per unit. Rewards speed, but quality can suffer. Variants: straight piece rate, **Taylor's differential** piece rate (a higher rate for efficient workers), and piece rate with a **guaranteed** minimum time wage.
- **Halsey plan:** time wages + **50% of the time saved** × rate.
- **Rowan plan:** time wages + (time saved ÷ standard time) × time taken × rate.
- Labour is **direct** (traceable to a product, like machine operators) or **indirect** (supervisors, security).$c$,
  $c$**a print-shop job**

Standard time **8 hours**, actual time **6 hours**, rate **₹80 an hour**. Time saved = 2 hours.
- Time wages = 6 × ₹80 = **₹480**
- **Halsey:** bonus = 50% × 2 × ₹80 = ₹80 → **₹560**
- **Rowan:** bonus = (2 ÷ 8) × 6 × ₹80 = ₹120 → **₹600**

Rowan pays more here, because the worker saved **less than half** the standard time. If a worker saves **more than half**, Halsey pays more. At exactly half, they're equal.$c$,
  $c$✅ Verified (Nov 2025)$c$,
  $c$India's **four labour codes** came into effect on **21 November 2025**, replacing 29 older labour
laws. The Code on Wages sets overtime pay at **twice the normal wage rate** as the legal minimum
(our course notes calculate overtime at 1.5×, and the problems here follow the notes). The Code on Social Security also brings **gig and
platform workers** into social security coverage, though many of the detailed rules and schemes are
still being notified.
*Sources: KPMG India Flash News, Nov 2025; SCC Online, 21 Nov 2025; RSM India newsflash.*$c$,
  $c$Should a call centre pay agents by the hour or per call?$c$,
  $c$"Pure piece rate (per call) would push speed at the cost of quality: agents would
rush customers. I'd use a time rate as the base, plus an incentive tied to measurable quality, like
resolution rate and customer ratings. Piece rate works best when output is easy to count and quality
is easy to check, as in garment stitching or data entry."$c$,
  $c$Assuming Halsey always pays less than Rowan. It depends on how much time is saved; they're equal when exactly half the standard time is saved.$c$,
  $c$[{"kind":"concept","question":"Under a piece rate system, wages depend on…","answer":"**Units produced.**"},{"kind":"application","question":"A worker's normal day is 8 hours at ₹80 an hour. She works 10 hours, with overtime at 1.5 times the normal rate. Total wages?","answer":"**₹880** (8 × 80 = 640, plus 2 × 120 = 240)."},{"kind":"case","question":"Standard time is 12 hours, a worker takes 9 hours, and the rate is ₹60 an hour. Which plan does the worker prefer, Halsey or Rowan?","answer":"**Rowan.** Time wages ₹540. Halsey bonus = 50% × 3 × 60 = ₹90 (₹630). Rowan bonus = (3 ÷ 12) × 9 × 60 = ₹135 (₹675). She saved less than half the standard time, so Rowan pays more."}]$c$::jsonb,
  $c$LMS-MOdule -3.pptx slides 3–13 · Module -3 Labour_Cost_Concept (NSA).pptx slides 4–7$c$, $c$verified$c$
),
(
  $c$acct-07$c$, $c$acct$c$, 7, $c$Labour Turnover$c$,
  $c$Labour turnover measures how fast people leave and are replaced, and every exit carries hidden costs well beyond the salary.$c$,
  $c$All three methods divide by **average workers** = (workers at start + workers at end) ÷ 2, then × 100.
- **Separation method:** people who **left** ÷ average workers
- **Replacement method:** people hired **to replace** leavers ÷ average workers
- **Flux method:** (separations + replacements) ÷ average workers

New hires for **expansion** aren't replacements. Turnover costs include hiring, training, slower output from new joiners, overtime for the team covering gaps, and lost knowledge.
Causes: low pay, poor conditions, little growth, better offers. Remedies: fair pay, training, career paths, welfare.$c$,
  $c$**canteen staff in a year**

**18 staff** at the start, **22** at the end, so the average is **20**. **4 people left** and **3 were hired to replace them** (the rest were new posts).
- Separation = 4 ÷ 20 × 100 = **20%**
- Replacement = 3 ÷ 20 × 100 = **15%**
- Flux = (4 + 3) ÷ 20 × 100 = **35%**

If hiring and training each new cook costs ₹15,000, those 3 replacements cost **₹45,000** before counting slower service while they learn.$c$,
  $c$✅ Verified (FY2025)$c$,
  $c$India's IT majors track attrition (their word for turnover) every quarter. For the twelve months
to March 2025, **TCS** reported attrition of **13.3%** and **Wipro 15%**. At companies employing
hundreds of thousands of people, even one percentage point means thousands of people to
re-hire and re-train, which is why retention, training and career paths get board-level attention.
*Sources: Storyboard18, TCS Q4 FY25 results (Apr 2025); People Matters, Wipro Q4 FY25 (Apr 2025).*$c$,
  $c$Attrition in your team is 25%. What does that cost the company?$c$,
  $c$"The visible costs are recruitment and training for one in four people every
year. The hidden costs are bigger: months of lower productivity while new joiners learn, overtime
for the people covering gaps, mistakes, lost client knowledge, and lower morale. I'd find the
causes through exit interviews, then target the biggest one, whether that's pay, managers or growth."$c$,
  $c$Counting hires for **new posts** (expansion) as replacements. Only hires that fill someone's exit are replacements.$c$,
  $c$[{"kind":"concept","question":"The separation method divides the number of leavers by…","answer":"**The average number of workers.**"},{"kind":"application","question":"Average workers 200 and 50 separations. What's labour turnover by the separation method?","answer":"**25%.**"},{"kind":"case","question":"A factory starts the year with 80 workers and ends with 120. 10 workers left and 6 were replaced. What's the flux rate, and why is it useful?","answer":"**16%** ((10 + 6) ÷ 100 × 100). It shows the total churn, both exits and refills, which is what drives hiring and training costs."}]$c$::jsonb,
  $c$LMS-MOdule -3.pptx slides 14–20 · Module -3 Labour_Cost_Concept (NSA).pptx slides 8–9$c$, $c$verified$c$
),
(
  $c$acct-08$c$, $c$acct$c$, 8, $c$What Accounting Is, Its Branches & Who Uses It$c$,
  $c$Accounting is the language of business: it records money events and turns them into reports that different people use to make decisions.$c$,
  $c$**The process:** identify → measure → record → classify → summarise → analyse and interpret → communicate.
- **Book-keeping** is the clerical part: recording every transaction regularly.
- **Accounting** prepares and presents the accounts.
- **Accountancy** is the whole body of knowledge: the rules that explain *why* and *how*.

**Three branches:**
| Branch | Focus |
|---|---|
| **Financial accounting** | The whole organisation's performance and position, for everyone |
| **Cost accounting** | The cost of products, jobs and departments, and how to cut it |
| **Management accounting** | Financial + cost data used for planning, control and decisions |

**Users:** *internal* (managers, employees) and *external* (investors, lenders and creditors, suppliers, customers, tax authorities, regulators).$c$,
  $c$**your college fest**

The treasurer notes every ₹ spent and received: that's **book-keeping**. After the fest, she prepares a statement showing ₹4,00,000 raised and ₹3,60,000 spent, a ₹40,000 surplus: that's **accounting**. Now see who reads it:
- the **principal** (management) checks it was well run,
- **sponsors** (like investors) want to know their money was well used,
- the **sound vendor** (a creditor) wants to know it will be paid,
- the **college auditor** (like a regulator) checks it's true.

Same numbers, different questions.$c$,
  $c$✅ Verified (Aug 2025)$c$,
  $c$India's new **Income-tax Act, 2025** received the President's assent on **21 August 2025** and
comes into force on **1 April 2026**, replacing the Income-tax Act of 1961. It cuts the law from
**819 sections to 536** without changing tax rates. Tax authorities are among the biggest
**external users** of accounting: every business's profit for tax starts from its books.
*Sources: All India Radio News, 22 Aug 2025; Taxmann; IBFD.*$c$,
  $c$Who uses a company's financial statements, and what does each user look for?$c$,
  $c$"Internally, managers use them to plan and control, and employees look at job
security and bonuses. Externally, investors check profitability and growth, lenders check whether
the company can repay, suppliers check whether they'll be paid, tax authorities check taxable
profit, and regulators like SEBI check compliance. The same statements answer very different
questions, which is why they must be reliable and standardised."$c$,
  $c$Using book-keeping and accounting as if they mean the same thing. Book-keeping is just the recording step; accounting goes on to summarise, interpret and communicate.$c$,
  $c$[{"kind":"concept","question":"The routine, clerical recording of transactions is called…","answer":"**Book-keeping.**"},{"kind":"application","question":"The canteen wants to know what each plate of biryani really costs. Which branch of accounting helps?","answer":"**Cost accounting.**"},{"kind":"case","question":"A bank is deciding whether to lend ₹50 lakh to a small firm. Which kind of user is the bank, and what will it focus on?","answer":"An **external user (a lender/creditor)**. It will focus on the firm's ability to repay: cash flows, existing debt, assets available as security and steady profits."}]$c$::jsonb,
  $c$Introduction to Financial Accounting (2).pptx slides 3–9$c$, $c$verified$c$
),
(
  $c$acct-09$c$, $c$acct$c$, 9, $c$The Accounting Equation$c$,
  $c$Assets = Liabilities + Capital: everything a business owns is financed either by outsiders or by the owner, and every transaction keeps the two sides equal.$c$,
  $c$- **Assets:** resources owned and controlled that give future benefits (cash, stock, machines, buildings).
- **Liabilities:** obligations to outsiders (loans, creditors, outstanding expenses).
- **Capital:** the owner's claim, which equals assets minus liabilities.

Every transaction has two sides (the **dual aspect**), so the equation always balances. It is the base of **double-entry** book-keeping, and the balance sheet is simply this equation written out in detail.
**Profit increases capital. Expenses, losses and drawings reduce it.**$c$,
  $c$**Riya's chai stall**

| Transaction | Assets | = Liabilities | + Capital |
|---|---|---|---|
| Starts with ₹50,000 of her own cash | 50,000 | 0 | 50,000 |
| Buys a stove for ₹8,000 cash (asset swap) | 50,000 | 0 | 50,000 |
| Buys tea leaves worth ₹5,000 on credit | 55,000 | 5,000 | 50,000 |
| Pays ₹2,000 rent (an expense) | 53,000 | 5,000 | 48,000 |
| Sells tea costing ₹3,000 for ₹5,000 cash | 55,000 | 5,000 | 50,000 |

After every step, the left side equals the right side.$c$,
  $c$✅ Verified (Apr 2024)$c$,
  $c$In April 2024, **Vodafone Idea** raised about **₹18,000 crore** through a follow-on public
offer (FPO), India's largest ever. In equation terms: **cash (an asset) went up ₹18,000 crore,
and share capital went up by the same amount**. Before this, its net worth had been
**negative** (December 2023): its liabilities were larger than its assets, so the "capital" side
of the equation was below zero.
*Sources: Business Standard, 12 Apr 2024; PTI via The Week, 22 Apr 2024; Share.Market.*$c$,
  $c$A company buys a machine on credit. What happens to the accounting equation?$c$,
  $c$"Assets go up by the machine's cost, and liabilities go up by the same amount,
since we owe the supplier. Capital doesn't change, because no income or expense has happened yet.
The equation stays balanced. Later, depreciation on the machine will reduce both assets and capital."$c$,
  $c$Thinking an expense paid in cash only reduces assets. It reduces **capital** too, which keeps the equation balanced.$c$,
  $c$[{"kind":"concept","question":"Which equation is the basis of double-entry book-keeping?","answer":"**Assets = Liabilities + Capital.**"},{"kind":"application","question":"A firm has assets of ₹2,00,000 and liabilities of ₹80,000. What's the capital?","answer":"**₹1,20,000.**"},{"kind":"case","question":"A firm pays ₹5,000 salary in cash. Which parts of the equation change?","answer":"**Assets fall ₹5,000 (cash), and capital falls ₹5,000** (an expense reduces the owner's claim). Liabilities don't change."}]$c$::jsonb,
  $c$3. Accounting Equation (1).docx sections 3.1–3.2 and Illustration 1$c$, $c$verified$c$
),
(
  $c$acct-10$c$, $c$acct$c$, 10, $c$Reading the Financial Statements$c$,
  $c$The balance sheet is a **photo** of what a business owns and owes on one day; the profit and loss statement is a **video** of how it performed over the year.$c$,
  $c$Indian companies follow the **Schedule III** formats (Companies Act, 2013).
- **Balance sheet ("as at" a date):**
  - **Assets:** **non-current** (property, plant and equipment; intangibles; long-term investments) and **current** (inventories, trade receivables, cash).
  - **Equity and liabilities:** **equity** (share capital, retained earnings), then **non-current liabilities** (long-term borrowings) and **current liabilities** (trade payables, short-term borrowings).
- **Statement of profit and loss ("for the year ended"):** revenue from operations + other income − expenses (materials, employee benefits, finance costs, depreciation, others) = profit before tax − tax = **profit for the period**, then **earnings per share (EPS)**.

**Kinds of assets:**
- **Tangible:** you can touch them, like aircraft and machines.
- **Intangible:** software, patents, goodwill, franchises, licences.
- **Financial:** deposits, bonds, money market funds.$c$,
  $c$**Riya's chai stall after one year**

*Profit and loss for the year:*
- Revenue **₹6,00,000** − tea, milk and sugar **₹3,60,000** − rent and helper's wages **₹1,20,000** − depreciation on the ₹8,000 stove **₹1,600**
- = **profit ₹1,18,400** before tax

*Balance sheet at year end:*
- **Assets:** stove ₹6,400 (non-current: ₹8,000 − ₹1,600), plus stock ₹7,000 and cash ₹1,60,000 (current) = **₹1,73,400**
- **Liabilities and capital:** creditors ₹5,000 + capital ₹1,68,400 (her ₹50,000 + profit ₹1,18,400) = **₹1,73,400**

Both sides match: it's the accounting equation again.$c$,
  $c$✅ Verified (FY2025)$c$,
  $c$**Infosys** reported FY2025 revenue of **₹1,62,990 crore** (up 6.1%), an **operating margin of
21.1%** and **earnings per share of ₹64.50**. Each figure comes straight from the statement of
profit and loss: revenue at the top, operating profit after expenses, and EPS at the very bottom.
Analysts compare these lines quarter by quarter.
*Sources: Infosys FY25 results press release (via PR Newswire, 17 Apr 2025); Angel One; Simply Wall St.*$c$,
  $c$What's the difference between a balance sheet and a profit and loss statement?$c$,
  $c$"The balance sheet shows the financial position at one point in time: what the
company owns, what it owes and the owners' equity. The P&L shows performance over a period:
revenue, expenses and profit. They connect: the year's profit flows into retained earnings on the
balance sheet. If I had to pick one for a quick health check, I'd read both, plus the cash flow statement."$c$,
  $c$Thinking profit equals cash. A company can be profitable but short of cash, for example when customers pay late (high trade receivables).$c$,
  $c$[{"kind":"concept","question":"Which statement shows the financial position on a particular date?","answer":"**The balance sheet.**"},{"kind":"application","question":"Classify: a patent, a fixed deposit and a delivery van.","answer":"Patent: **intangible**. Fixed deposit: **financial**. Van: **tangible**."},{"kind":"case","question":"A company reports record profit, but its cash balance fell and trade receivables doubled. What's going on?","answer":"It's **selling on credit and not collecting cash fast enough**. Profit is recorded when sales are made, but the cash is stuck with customers. Check the cash flow statement and customers' credit quality."}]$c$::jsonb,
  $c$Introduction to Financial Accounting (2).pptx slides 10–16$c$, $c$verified$c$
),
(
  $c$acct-11$c$, $c$acct$c$, 11, $c$Accounting Concepts I: Entity, Money Measurement, Going Concern, Dual Aspect & Periodicity$c$,
  $c$Accounting concepts are the basic assumptions every accountant follows, so that everyone's books are built on the same foundation.$c$,
  $c$- **Business entity:** the business is separate from its owner. The owner's personal spending is **drawings**, not a business expense.
- **Money measurement:** only events measurable in money are recorded. A loyal team or a great reputation isn't recorded until it's bought.
- **Going concern:** the business is assumed to continue for the foreseeable future, so assets are spread over their useful life, not valued at fire-sale prices.
- **Dual aspect:** every transaction has a giving side and a receiving side. This is the backbone of double entry.
- **Periodicity (accounting period):** the business's life is split into periods (usually a year) so results can be measured and compared.$c$,
  $c$**Riya's chai stall again**

- She pays her **personal ₹500 phone bill** from the stall's cash → **drawings** (entity concept), not an expense.
- Her regulars love her chai, but that loyalty isn't recorded → **money measurement**.
- The ₹8,000 stove is spread over **5 years**, about ₹1,600 a year, because she plans to keep going → **going concern**.
- Buying the stove for cash: stove up, cash down → **dual aspect**.
- She checks her profit every **31 March** → **periodicity**.$c$,
  $c$✅ Verified (Apr 2025)$c$,
  $c$On **15 April 2025**, SEBI passed an interim order against **Gensol Engineering**. It said loans
of about **₹978 crore**, taken mainly from IREDA and PFC to buy electric vehicles for BluSmart, were
partly **diverted to promoter-linked entities**, including money used towards a luxury flat at DLF's
The Camellias in Gurugram. SEBI barred the promoters from the securities market. These were *prima
facie* findings, not a final ruling. Treating a company's money as the owner's own breaks the most
basic idea in accounting: the **business entity concept**.
*Sources: Outlook Business and Deccan Herald, Apr 2025; The Week (PTI), 12 May 2025.*$c$,
  $c$Why can't a sole proprietor pay his family's school fees from the business account and call it an expense?$c$,
  $c$"Because of the business entity concept: the business and the owner are separate
in the books. Personal payments are drawings, which reduce the owner's capital. They aren't business
expenses, so they mustn't reduce business profit. Mixing them would overstate expenses, understate
profit and taxes, and mislead lenders. It's exactly the concern SEBI raised in the Gensol case."$c$,
  $c$Thinking the entity concept applies only to companies. It applies to a sole proprietor too, even though the law sees owner and business as one.$c$,
  $c$[{"kind":"concept","question":"\"The business will continue to operate for the foreseeable future.\" Which concept?","answer":"**Going concern.**"},{"kind":"application","question":"The owner takes ₹10,000 of stock home for personal use. How is it treated?","answer":"**Drawings**, which reduce capital (entity concept), not a business expense."},{"kind":"case","question":"A start-up's founder wants to record the \"value\" of a newly hired star manager as a ₹10 lakh asset. Is that allowed?","answer":"**No.** Under **money measurement** (and the cost concept), only transactions measured in money are recorded. The manager's talent wasn't purchased as an asset; the salary is an expense."}]$c$::jsonb,
  $c$Accounting Concepts and Conventions (1).pptx slides 6–9, 11–14$c$, $c$verified$c$
),
(
  $c$acct-12$c$, $c$acct$c$, 12, $c$Accounting Concepts II: Accrual, Cost, Matching & Revenue Recognition$c$,
  $c$Record income when it's **earned** and expenses when they're **incurred** (not when cash moves), record assets at **cost**, and match each period's expenses with its revenue.$c$,
  $c$- **Accrual:** transactions are recorded on a "due" basis. Income is recorded when earned, expenses when incurred, whether or not cash has changed hands. This creates outstanding expenses, prepaid expenses, accrued income and income received in advance.
- **Cost concept:** assets are recorded at what was paid for them, not at today's market value.
- **Matching:** this period's revenue is matched with the costs incurred to earn it, giving a true profit.
- **Revenue recognition (realisation):** revenue is recognised when the sale is made or the service is delivered, not when an order is placed or an advance arrives.$c$,
  $c$**the college fest's March accounts**

- A sponsor pays **₹50,000 in February** for the **March** fest → it counts as March revenue (earned in March). In February it's **income received in advance**, a liability.
- The **₹12,000 electricity bill** for the fest arrives in April → it's still a **March** expense (accrual and matching).
- The society bought a **laptop for ₹60,000**. A similar one now sells for ₹70,000, but it stays in the books at **₹60,000** (cost concept).$c$,
  $c$✅ Verified (Sept 2024 – Jan 2025)$c$,
  $c$Tickets for **Coldplay's** India concerts went on sale in **September 2024**, but the Mumbai and
Ahmedabad shows were held in **January 2025**. For a promoter, the cash came in months early, but
the revenue is **earned only when the concert happens**. Until then, the money is **income received
in advance**, owed to fans if the show is cancelled. That's revenue recognition and accrual in action.
*Sources: Coverage of the BookMyShow ticket sale, Sept 2024; concert reporting, Jan 2025.*$c$,
  $c$A company receives ₹12 lakh in March for a one-year service contract starting 1 March. How much is revenue for the year ending 31 March?$c$,
  $c$"Only ₹1 lakh: one month of service has been delivered. The remaining ₹11 lakh is
income received in advance, a liability, because the company still owes 11 months of service. That's
the accrual and revenue recognition concepts. Cash received isn't the same as revenue earned."$c$,
  $c$Treating cash received as revenue. Advances are a **liability** until the goods or service are delivered.$c$,
  $c$[{"kind":"concept","question":"Assets are recorded at their purchase price, not their current market value. Which concept is this?","answer":"**The cost concept.**"},{"kind":"application","question":"March's rent of ₹20,000 is paid on 5 April. In which year's accounts is it an expense, if the year ends 31 March?","answer":"**The year ending 31 March** (accrual). It's shown as an outstanding expense."},{"kind":"case","question":"A coaching institute collects ₹1,20,000 in January for a 12-month course starting 1 January, and its year ends 31 March. How much revenue should it record for the year?","answer":"**₹30,000** (3 months × ₹10,000). The remaining **₹90,000 is income received in advance**, a liability, because those classes haven't been delivered yet."}]$c$::jsonb,
  $c$Accounting Concepts and Conventions (1).pptx slides 9–12$c$, $c$verified$c$
),
(
  $c$acct-13$c$, $c$acct$c$, 13, $c$Accounting Conventions: Consistency, Full Disclosure, Materiality & Conservatism$c$,
  $c$Conventions are the customs accountants follow when preparing statements: stay consistent, disclose what matters, ignore what's trivial, and be cautious about gains.$c$,
  $c$- **Consistency:** once a method is chosen (say FIFO, or straight-line depreciation), keep using it so years can be compared.
- **Full disclosure:** reveal everything material, including notes on **contingent liabilities** like pending lawsuits.
- **Materiality:** small, insignificant items can be treated simply. A ₹50 stapler is expensed, not recorded as an asset.
- **Conservatism (prudence):** don't record expected gains, but do provide for expected losses. Stock is valued at the **lower of cost or net realisable value**, and doubtful debts get a provision.

**Concepts vs conventions:** concepts are basic assumptions set by accounting bodies and are uniform; conventions grew from practice and involve more judgement.$c$,
  $c$**the stationery shop's year-end**

- Calculators cost **₹20,000** but can now sell for only **₹15,000** → show **₹15,000** (conservatism).
- If they could sell for ₹25,000 → still show **₹20,000**: no unrealised gain is booked.
- A **₹50 stapler** goes straight to expenses (materiality).
- A customer is suing for **₹1,00,000**, outcome unknown → disclose it in the notes as a contingent liability (full disclosure).
- It has used FIFO every year → keeps using FIFO (consistency).$c$,
  $c$✅ Verified (Mar–Apr 2025)$c$,
  $c$In March 2025, **IndusInd Bank** disclosed problems in how it had accounted for internal derivative
trades. An external review in April 2025 found that incorrect accounting had **recorded "notional
profits"** (gains that weren't real), with a negative impact of **₹1,979 crore**, about **2.27% of
its net worth**. It's the opposite of conservatism: recognising gains that hadn't truly been earned.
The bank had to disclose the issue and absorb the loss in FY25.
*Sources: IndusInd Bank filing to NSE, 15 Apr 2025; Outlook Business, Apr 2025.*$c$,
  $c$What is the conservatism convention, and isn't it unfair to recognise losses but not gains?$c$,
  $c$"Conservatism means anticipating losses but not gains: for example, valuing
inventory at the lower of cost or net realisable value and providing for doubtful debts. It looks
lopsided, but it protects users from over-optimistic statements. Over-stated profits mislead investors
and lenders far more than cautious ones. The IndusInd case shows the damage when gains are booked
before they're real."$c$,
  $c$Taking conservatism too far and creating hidden reserves by under-valuing assets on purpose. Prudence means caution, not distortion.$c$,
  $c$[{"kind":"concept","question":"Valuing stock at the lower of cost or net realisable value follows which convention?","answer":"**Conservatism.**"},{"kind":"application","question":"A company switches its depreciation method every year to show smoother profits. Which convention does it break?","answer":"**Consistency.**"},{"kind":"case","question":"A company faces a ₹50 crore lawsuit that it may or may not lose. Its CFO wants to leave it out of the annual report. What do you advise?","answer":"**Disclose it as a contingent liability** in the notes to the accounts (full disclosure). If a loss becomes probable and can be estimated, provide for it (conservatism)."}]$c$::jsonb,
  $c$Accounting Concepts and Conventions (1).pptx slides 15–20$c$, $c$verified$c$
),
(
  $c$acct-14$c$, $c$acct$c$, 14, $c$Double Entry: The Rules of Debit and Credit$c$,
  $c$Every transaction touches at least two accounts, one debited and one credited for the same amount, so the books always balance.$c$,
  $c$**Debit (Dr.)** is the left side of an account; **credit (Cr.)** is the right side. Neither word means "good" or "bad".

**Modern (accounting-equation) rules:**
| Increase in… | Record as |
|---|---|
| Assets, expenses | **Debit** |
| Liabilities, capital, incomes | **Credit** |
Decreases go the other way.

**Traditional (golden) rules:**
- **Personal accounts** (people, firms, banks): debit the **receiver**, credit the **giver**.
- **Real accounts** (things: cash, stock, machines): debit **what comes in**, credit **what goes out**.
- **Nominal accounts** (expenses, incomes): debit **expenses and losses**, credit **incomes and gains**.

Entries are first written in the **journal** (book of original entry), then posted to the **ledger**.$c$,
  $c$**Riya's chai stall, in journal form**

| Transaction | Debit | Credit |
|---|---|---|
| Starts with ₹50,000 of her own cash | Cash ₹50,000 | Capital ₹50,000 |
| Buys a stove for ₹8,000 cash | Stove ₹8,000 | Cash ₹8,000 |
| Buys tea leaves worth ₹5,000 on credit from Mondal Traders | Purchases ₹5,000 | Mondal Traders ₹5,000 |
| Pays ₹2,000 rent | Rent ₹2,000 | Cash ₹2,000 |
| Sells tea for ₹5,000 cash | Cash ₹5,000 | Sales ₹5,000 |

Every row has equal debits and credits. That's double entry.$c$,
  $c$✅ Verified (Apr 2026)$c$,
  $c$In April 2026, after a Supreme Court order allowed the government to reassess them, the Department of
Telecommunications reportedly **cut Vodafone Idea's AGR (licence-fee) dues by about ₹23,649 crore** and
allowed staggered payments until FY2041. In double-entry terms, a **liability falling is a debit** to the
dues account; the matching credit goes to the other side of the entry (exactly which account is a matter
for the company and its auditors).
*Sources: Business Today, 30 Apr 2026; coverage of the Supreme Court order, 27 Oct 2025.*$c$,
  $c$What happens in the books when a company repays a ₹10 lakh loan?$c$,
  $c$"Two accounts change. The loan, a liability, falls, so we debit the loan account
₹10 lakh. The bank balance, an asset, falls too, so we credit bank ₹10 lakh. Debits equal credits, and
the accounting equation still balances: assets and liabilities both go down by the same amount."$c$,
  $c$Thinking "credit" means money coming in, as on a bank statement. In the business's books, cash coming in is a **debit** to cash. A bank statement shows the bank's view, which is reversed.$c$,
  $c$[{"kind":"concept","question":"An increase in an expense is recorded as a…","answer":"**Debit.**"},{"kind":"application","question":"The stall pays ₹10,000 to Mondal Traders, a creditor. What's the entry?","answer":"**Debit Mondal Traders** (liability falls), **credit Cash** (asset falls), ₹10,000 each."},{"kind":"case","question":"A business takes a ₹5 lakh bank loan, credited to its bank account. Which accounts are debited and credited?","answer":"**Debit Bank** (asset rises), **credit Bank Loan** (liability rises), ₹5 lakh each."}]$c$::jsonb,
  $c$ICAI Ch 2 Unit 1, paras 1.1–1.9 (93942bos-aps6170-ch2u1.pdf)$c$, $c$verified$c$
),
(
  $c$acct-15$c$, $c$acct$c$, 15, $c$The Trial Balance, and the Errors It Can't Catch$c$,
  $c$A trial balance lists every ledger balance to check that total debits equal total credits, but agreement proves only arithmetic accuracy, not that the books are right.$c$,
  $c$After posting to the ledger, all debit balances and credit balances are listed; the two totals should match.
**Errors it does NOT reveal** (the trial balance still agrees):
- **Complete omission:** the transaction isn't recorded at all.
- **Error of principle:** recorded against accounting principles, like buying an asset but debiting an expense.
- **Wrong account on the correct side** (an error of commission), or a wrong amount written in both columns.
- **Posting twice** to both sides.
- **Compensating errors:** two mistakes that cancel each other out.

**Errors it does reveal:** one-sided mistakes, like posting to the wrong side, wrong totals, or partial omission.
If the difference can't be found in time, it's parked in a temporary **suspense account**, which is cleared when the errors are rectified.$c$,
  $c$**the chai stall's year-end**

- Riya buys a **₹30,000 laptop** for the stall but books it as "office expenses". The trial balance still agrees, but profit is **understated by ₹30,000** and assets are missing a ₹30,000 laptop (error of principle).
- She posts a ₹500 rent payment to the rent account but forgets the cash side. The debits now exceed the credits by **₹500**, so the trial balance doesn't agree. Until she finds it, ₹500 sits in **suspense**.$c$,
  $c$✅ Verified (Mar–Apr 2025)$c$,
  $c$In 2025, **IndusInd Bank** found that internal derivative trades had been accounted for incorrectly,
recording "notional profits" that weren't real. An external review put the impact at **₹1,979 crore**,
about **2.27% of its net worth**. Such problems are errors of principle and judgement, the kind a trial
balance can never catch: the books can balance perfectly while being wrong.
*Sources: IndusInd Bank filing to NSE, 15 Apr 2025; Outlook Business, Apr 2025.*$c$,
  $c$If a company's trial balance agrees, can we be sure its accounts are correct?$c$,
  $c$"No. Agreement only proves that debits equal credits. Errors of principle, complete
omissions, compensating errors and postings to the wrong account on the correct side all leave the trial
balance agreeing. That's why we still need reconciliations, internal controls and audits."$c$,
  $c$Treating the suspense account as permanent. It's a **temporary** holding account, and must be cleared once the errors are found.$c$,
  $c$[{"kind":"concept","question":"Which error does NOT affect the agreement of the trial balance?","answer":"**An error of principle** (e.g., an asset purchase debited to expenses)."},{"kind":"application","question":"The trial balance's debit side is ₹500 more than the credit side, and the error can't be found yet. What do you do?","answer":"Put ₹500 on the credit side of a **suspense account** until the error is found and rectified."},{"kind":"case","question":"A ₹2,000 credit sale to Mr Sen is left out of the books completely. Will the trial balance agree, and what's the effect?","answer":"**It will agree** (complete omission). But sales and debtors are both **understated by ₹2,000**, and so is profit."}]$c$::jsonb,
  $c$ICAI Ch 2 Unit 3, paras 3.1–3.5; Unit 6, paras 6.2–6.5$c$, $c$verified$c$
),
(
  $c$acct-16$c$, $c$acct$c$, 16, $c$Subsidiary Books, the Cash Book and Petty Cash$c$,
  $c$Instead of one giant journal, businesses keep separate day books for each common type of transaction, and a cash book that is both a journal and a ledger.$c$,
  $c$The usual **subsidiary books** (books of original entry):
1. **Cash book:** all cash and bank receipts and payments
2. **Purchases book:** **credit** purchases of goods dealt in
3. **Purchase returns book**
4. **Sales book:** **credit** sales of goods dealt in
5. **Sales returns book**
6. **Bills receivable book**
7. **Bills payable book**
8. **Journal proper:** everything else (opening entries, adjustments, rectifications)

They allow division of work, specialisation and easier checking.
The **cash book** comes as simple (cash only), **two-column** (cash + discount) or **three-column** (cash, bank and discount).
**Petty cash book (imprest system):** a petty cashier gets a fixed float for small payments, and is reimbursed exactly what was spent at the end of each period.$c$,
  $c$**the canteen's petty cash**

The petty cashier starts each week with an imprest of **₹2,000**. This week she spends ₹300 on autos, ₹850 on cleaning and ₹500 on stationery, **₹1,650** in all. On Saturday the main cashier hands her **₹1,650**, bringing the float back to ₹2,000. Small spending is controlled without clogging the main cash book.$c$,
  $c$✅ Verified (Sept 2026)$c$,
  $c$UPI handled about **24.07 billion transactions worth ₹29.37 lakh crore in September 2026**, and for the
first time averaged more than **800 million payments a day**. For a shop, most "cash" sales now arrive in
the **bank column** of the cash book, not the till. Small cash payments (autos, tips, repairs) still need
a petty cash system.
*Sources: MediaNama and Entrackr, Oct 2026 (NPCI data).*$c$,
  $c$Why do businesses keep subsidiary books instead of recording everything in one journal?$c$,
  $c$"Volume and control. Most transactions are repetitive: cash, credit purchases and
credit sales. Grouping them into separate books lets different staff work in parallel, makes each person
efficient at one book, makes totals easy to post to the ledger, and makes errors and fraud easier to
spot. The journal proper is kept only for unusual entries."$c$,
  $c$Recording a **cash** purchase in the purchases book. The purchases book is only for **credit** purchases of goods; cash purchases go in the cash book.$c$,
  $c$[{"kind":"concept","question":"A credit purchase of goods for resale is recorded in the…","answer":"**Purchases book.**"},{"kind":"application","question":"Where does a cash sale of goods go?","answer":"**The cash book** (not the sales book, which records only credit sales)."},{"kind":"case","question":"A petty cashier holds an imprest of ₹5,000 and spends ₹4,200 during the month. How much does the main cashier give her at month-end?","answer":"**₹4,200**, exactly what was spent, restoring the float to ₹5,000."}]$c$::jsonb,
  $c$ICAI Ch 2 Unit 4, paras 4.1–4.6; Unit 5, paras 5.1–5.4$c$, $c$verified$c$
),
(
  $c$acct-17$c$, $c$acct$c$, 17, $c$Accounting for GST: Input Tax Credit$c$,
  $c$Under GST, tax paid on purchases (input tax) is set off against tax collected on sales (output tax), so each business pays tax only on the value it adds.$c$,
  $c$- GST is levied on **supply** of goods and services. It's a **destination-based** consumption tax, and the final consumer bears it.
- **Intra-state** supply: **CGST** (to the Centre) **+ SGST** (to the State). **Inter-state** supply: **IGST**.
- **Input tax credit (ITC):** GST paid on purchases is recorded as an **asset (a credit)**, not added to the cost of goods. It's then set off against GST charged on sales (a liability).
- This removes the old "tax on tax" (cascading) problem.$c$,
  $c$**a Kolkata stationery trader (18% GST, within West Bengal)**

- Buys stock worth **₹1,00,000 + ₹18,000 GST** (₹9,000 CGST + ₹9,000 SGST). Cost of stock: **₹1,00,000**; the ₹18,000 is input tax credit.
- Sells it for **₹1,50,000 + ₹27,000 GST**.
- Pays the government only **₹27,000 − ₹18,000 = ₹9,000**, which is exactly 18% of the **₹50,000 value added**.$c$,
  $c$✅ Verified (Sept 2026)$c$,
  $c$India's **gross GST collections were about ₹2.04 lakh crore in September 2026, up 14.7%** from a year
earlier. GST on imports jumped about 26% to roughly ₹65,500 crore, and refunds (largely unused input tax
credit returned to exporters and others) came to about **₹27,000 crore**, leaving net collections near
₹1.76 lakh crore.
*Sources: CAclubindia and A2Z Taxcorp summaries of official GST data, Oct 2026.*$c$,
  $c$Why isn't GST paid on purchases counted as part of the cost of inventory?$c$,
  $c$"Because the business gets it back as input tax credit. It's set off against the GST
it collects on sales, so it's really an asset, a claim against the government, not a cost. Adding it to
inventory would overstate costs and double-count the tax. Only when credit isn't available, for example
on blocked items, does GST become part of cost."$c$,
  $c$Thinking businesses "bear" GST. They collect it and pass the credit along the chain; the **final consumer** bears the tax.$c$,
  $c$[{"kind":"concept","question":"A supply from West Bengal to Odisha attracts which GST?","answer":"**IGST** (inter-state)."},{"kind":"application","question":"Input GST paid is ₹18,000 and output GST charged is ₹27,000. How much GST does the business pay the government?","answer":"**₹9,000.**"},{"kind":"case","question":"A company gets a GST demand because it claimed input tax credit on invoices its suppliers never reported. What should it fix?","answer":"Its **ITC controls**: claim credit only on valid invoices that suppliers have actually reported, and reconcile the purchases register with supplier filings every month, before filing returns."}]$c$::jsonb,
  $c$ICAI Ch 2 Unit 1, para 1.11 (Accounting for GST)$c$, $c$verified$c$
),
(
  $c$acct-18$c$, $c$acct$c$, 18, $c$Capital vs Revenue: Expenditure and Receipts$c$,
  $c$Spending that gives benefits beyond this year is capital (it goes to the balance sheet); spending used up within the year is revenue (it goes to the P&L).$c$,
  $c$- **Capital expenditure:** acquires or improves assets for lasting benefit, or increases capacity or cuts costs (machines, buildings, licence fees, legal fees to buy property). It's shown as an asset and charged to profit gradually through depreciation.
- **Revenue expenditure:** maintains earning capacity within the period (salaries, rent, ordinary repairs, replacing worn-out parts).
- **How to tell them apart:** the nature of the business (furniture is stock for a furniture dealer), whether it recurs, its purpose (maintain vs improve), its effect on earning capacity, and materiality.
- **Receipts:** **revenue receipts** come from normal operations (sales, interest) and go to the P&L. **Capital receipts** (sale of fixed assets, loans, owner's capital, share premium) don't, except for any **profit or loss** on selling an asset.$c$,
  $c$**the college canteen**

- New **₹60,000 oven** → capital.
- **₹1,200** monthly gas-burner servicing → revenue.
- **₹15,000** to rebuild the burners for 30% more output → capital (it increases capacity).
- Sells an old fridge with book value **₹8,000** for **₹10,000** → the ₹10,000 is a capital receipt; only the **₹2,000 profit** goes to the P&L.$c$,
  $c$✅ Verified (Feb 2026)$c$,
  $c$In the **Union Budget 2026–27**, the Centre budgeted **capital expenditure of about ₹12.22 lakh crore**
(roads, railways, defence assets), about 9% more than the previous year's budget. Including grants to
states for building assets, "effective capex" is about **₹17.15 lakh crore**, out of total spending of
about **₹53.47 lakh crore**. The rest is largely revenue spending: salaries, interest, subsidies.
*Sources: PIB; Axis Bank Budget 2026–27 highlights; ORF, Feb 2026.*$c$,
  $c$Why does it matter whether an expense is capital or revenue?$c$,
  $c$"Because it changes this year's profit. Revenue expenditure hits the P&L immediately,
while capital expenditure sits on the balance sheet and is depreciated over its life. Wrongly capitalising
routine costs inflates profit and assets. Wrongly expensing an asset understates both. Investors watch
this, and it's a classic way profits get manipulated."$c$,
  $c$Treating the whole sale price of an old asset as income. Only the **profit or loss** on the sale goes to the P&L; the rest is a capital receipt.$c$,
  $c$[{"kind":"concept","question":"Ordinary repairs to keep a machine running are…","answer":"**Revenue expenditure.**"},{"kind":"application","question":"Legal fees paid to buy a plot of land are…","answer":"**Capital expenditure** (part of the land's cost)."},{"kind":"case","question":"A ₹2,00,000 fixed deposit matures and the bank also pays ₹14,000 interest. How is each amount treated?","answer":"The **₹2,00,000 is a capital receipt** (return of the investment). The **₹14,000 interest is a revenue receipt**, credited to the P&L."}]$c$::jsonb,
  $c$ICAI Ch 1 Unit 3, paras 3.1–3.4 (93937bos-aps6170-ch1u3.pdf)$c$, $c$verified$c$
),
(
  $c$acct-19$c$, $c$acct$c$, 19, $c$Contingent Liabilities, Provisions and Contingent Assets$c$,
  $c$A possible obligation that depends on an uncertain future event is disclosed in the notes; a probable, measurable one is provided for; a possible gain isn't recorded at all.$c$,
  $c$- **Contingent liability:** a *possible* obligation from past events, confirmed only by uncertain future events, **or** a present obligation where an outflow isn't probable or can't be reliably measured. Examples: claims not acknowledged as debts, guarantees for others, disputed statutory dues. It is **disclosed in the notes**, not recorded in the balance sheet (unless the chance of paying is remote, in which case it isn't even disclosed).
- **Provision:** a **present** obligation where an outflow is **probable** and can be **reliably estimated**. It is **recognised** in the accounts.
- **Contingent asset:** a possible inflow, such as a claim you're pursuing in court. It is **not recognised** (prudence). It's recognised only when it becomes virtually certain.$c$,
  $c$**Riya's chai stall**

- A customer sues for **₹50,000**, claiming food poisoning. Her lawyer thinks she will probably win → **contingent liability**, disclosed in a note.
- If the lawyer says she will probably lose, and a ₹20,000 settlement is likely → record a **₹20,000 provision**.
- She is suing a supplier for **₹10,000** over spoilt milk → **contingent asset**: not recorded until it's virtually certain.$c$,
  $c$✅ Verified (Sept 2026)$c$,
  $c$On 10 September 2026, an appeals commissioner upheld a GST demand of about **₹3,365 crore** against
**HDFC Life** for 2017–2022: about ₹942 crore of tax and ₹2,423 crore of penalty, plus interest. The
insurer said it expects **no material adverse impact** and will appeal to the GST Appellate Tribunal.
While a demand is disputed, companies typically show it as a **contingent liability** in the notes rather
than as a definite debt.
*Sources: Angel One and StudyCafe, Sept 2026 (company filing to stock exchanges, 11 Sept 2026).*$c$,
  $c$What's the difference between a provision and a contingent liability?$c$,
  $c$"Both relate to obligations of uncertain timing or amount. A provision is a present
obligation where payment is probable and can be reliably estimated, so it's recorded and reduces profit.
A contingent liability is only possible, or not probable, or can't be measured, so it's disclosed in the
notes without hitting profit. As a case develops, a contingent liability can become a provision."$c$,
  $c$Recording a contingent **asset** as income because you expect to win. Prudence says don't, until it's virtually certain.$c$,
  $c$[{"kind":"concept","question":"How is a contingent liability shown?","answer":"**Disclosed in the notes to accounts**, not recorded in the balance sheet."},{"kind":"application","question":"A company guarantees a bank loan taken by another company. What is the guarantee?","answer":"**A contingent liability.**"},{"kind":"case","question":"A lawsuit that was \"unlikely to succeed\" now looks likely to cost about ₹10 lakh. What changes in the accounts?","answer":"It becomes a **provision**: record ₹10 lakh as a liability and an expense, because the outflow is now **probable and measurable**."}]$c$::jsonb,
  $c$ICAI Ch 1 Unit 4, paras 4.1–4.4 (93938bos-aps6170-ch1u4.pdf)$c$, $c$verified$c$
),
(
  $c$acct-20$c$, $c$acct$c$, 20, $c$Accounting Standards, Policies and Estimates$c$,
  $c$Standards set the rules everyone follows; policies are the specific methods a company chooses within them; estimates are the judgements inside those methods.$c$,
  $c$- **Accounting Standards (AS):** issued through ICAI's **Accounting Standards Board** (formed in 1977). Companies not on Ind AS follow AS notified under the Companies (Accounting Standards) Rules, 2021.
- **Ind AS:** IFRS-converged standards (converged, not adopted word for word). They apply to **listed companies**, NBFCs, and **unlisted companies with net worth of ₹250 crore or more**.
- **Accounting policies:** the specific principles and methods a company adopts, for example how it values inventories or investments. They're chosen using **prudence, substance over form and materiality**.
- **Change a policy only if** a statute or standard requires it, or the change gives a more appropriate presentation. The effect must be **quantified and disclosed**.
- **Estimates:** judgements such as useful life or doubtful debts. When estimates change, the change applies going forward.$c$,
  $c$**the stationery shop**

- Its policy is weighted-average stock valuation. Switching to FIFO when prices are rising would raise this year's profit from **₹96 to ₹112** (see Card C3). That's a **policy change**, and it's allowed only with a proper reason, quantified and disclosed.
- It decides its ₹8,000 shelves will last **8 years instead of 5** → yearly depreciation falls from ₹1,600 to ₹1,000. That's an **estimate change**.$c$,
  $c$✅ Verified (Mar–Apr 2026)$c$,
  $c$India's insurance regulator **IRDAI** approved a roadmap on 30 March 2026 moving insurers to **Ind AS**,
including **Ind AS 117 (Insurance Contracts)**, from **1 April 2026**. Insurers that weren't ready could
seek a one-year forbearance. It's a textbook case of a **change in accounting policy required by
regulation**, and it changes how insurers report profit from their policies.
*Sources: Grant Thornton India; S.R. Batliboi (EY), 2026.*$c$,
  $c$Can a company change its accounting policy to show better profits?$c$,
  $c$"No. A policy can change only if a law or accounting standard requires it, or if the
new policy gives a more appropriate presentation. Even then, the company must quantify and disclose the
effect, so users can compare years. Changing policies to manage profit breaks consistency and misleads
investors."$c$,
  $c$Mixing up a **policy** change (changing the method, e.g. FIFO → weighted average) with an **estimate** change (revising a judgement within the method, e.g. useful life).$c$,
  $c$[{"kind":"concept","question":"Which companies must follow Ind AS?","answer":"**Listed companies, NBFCs and unlisted companies with net worth of ₹250 crore or more.**"},{"kind":"application","question":"Which is a valid reason to change an accounting policy?","answer":"It's **required by law or an accounting standard**, or it gives a **more appropriate presentation**."},{"kind":"case","question":"A CFO wants to switch the inventory method every year, picking whichever gives higher profit. What's wrong?","answer":"It breaks **consistency**: years can't be compared and profits are manipulated. Policy changes need a valid reason and must be quantified and disclosed."}]$c$::jsonb,
  $c$ICAI Ch 1 Unit 5, paras 5.1–5.3; Unit 7, paras 7.1–7.5$c$, $c$verified$c$
),
(
  $c$acct-21$c$, $c$acct$c$, 21, $c$Measurement Bases: Historical Cost, Current Cost, Realisable Value and Present Value$c$,
  $c$The same asset can be valued four ways: what you paid, what it would cost now, what you could sell it for, and what its future cash is worth today.$c$,
  $c$| Basis | Asset is valued at… | Commonly used for |
|---|---|---|
| **Historical cost** | What was paid to acquire it (including installation) | Long-term assets like machinery |
| **Current cost** | What it would cost to buy the same asset now | Replacement-cost thinking |
| **Realisable value** | What it would fetch in an orderly sale now | Inventories (lower of cost and NRV) |
| **Present value** | Today's value of the future net cash it will generate | Investments, loans |

Liabilities are measured the same way: proceeds received, current settlement amount, settlement value, or discounted future payments.$c$,
  $c$**the canteen's oven**

- Bought in 2022 for ₹40,000 + ₹5,000 installation → **historical cost ₹45,000**.
- The same oven new today costs **₹70,000** → current cost.
- Sold today, it would fetch **₹25,000** → realisable value.
- It will save ₹12,000 a year for 3 more years. At 10%, that's worth **about ₹29,840** today → present value.$c$,
  $c$✅ Verified (Sept–Oct 2026)$c$,
  $c$Indian government bond yields rose sharply: the 10-year yield crossed 7% on 11 September and closed
September at **7.17%**, with the RBI then hiking rates in October. When yields rise, **bond prices fall**,
so banks that measure parts of their bond portfolios at **current market value** are expected to book
**mark-to-market treasury losses** for July–September, even though they haven't sold the bonds.
*Sources: Business Standard, 4 Oct 2026; Business Recorder (Reuters), Oct 2026.*$c$,
  $c$Why do accountants mostly use historical cost, if market value is more relevant?$c$,
  $c$"Historical cost is objective and verifiable: there's an invoice. Market values can
be subjective and volatile, especially for unique assets like a 30-year-old factory. But for items
traded in active markets, like bonds and listed shares, current values are more useful, so standards
use them there. And inventories are capped at realisable value for prudence. It's a trade-off between
reliability and relevance."$c$,
  $c$Assuming the balance sheet shows what a company is "worth". Most assets are at historical cost less depreciation, not market value.$c$,
  $c$[{"kind":"concept","question":"Inventories are measured at…","answer":"**The lower of cost and net realisable value.**"},{"kind":"application","question":"A machine costs ₹7,00,000 plus ₹1,00,000 for installation. What's its historical cost?","answer":"**₹8,00,000.**"},{"kind":"case","question":"A bank bought a government bond for ₹100. After yields rose, its market price is ₹96. If the bank measures it at market value, what does it report?","answer":"A **mark-to-market loss of ₹4**, even though it hasn't sold the bond. That's the cost of measuring at current value."}]$c$::jsonb,
  $c$ICAI Ch 1 Unit 6, paras 6.6–6.8 (93940bos-aps6170-ch1u6.pdf)$c$, $c$verified$c$
),
(
  $c$acct-22$c$, $c$acct$c$, 22, $c$Depreciation: Straight Line vs Written Down Value$c$,
  $c$Depreciation spreads an asset's cost, minus its residual value, over its useful life, matching the cost to the years that benefit from it.$c$,
  $c$Under Schedule II of the Companies Act 2013, depreciation is the **systematic allocation of the depreciable amount** (cost − residual value) over the asset's **useful life**.
**Causes:** wear and tear, obsolescence (newer technology) and the passage of time.
- **Straight Line Method (SLM, fixed instalment):** the same amount every year = (cost − residual value) ÷ useful life. Simple.
- **Written Down Value (WDV, reducing balance):** a fixed **percentage** of the remaining book value each year. Higher depreciation early, lower later, which suits assets that lose value fast or need more repairs as they age.$c$,
  $c$**the canteen's ₹60,000 oven (residual ₹6,000, life 5 years)**

| Year | SLM charge | WDV charge at 20% | WDV book value |
|---|---|---|---|
| 1 | ₹10,800 | ₹12,000 | ₹48,000 |
| 2 | ₹10,800 | ₹9,600 | ₹38,400 |
| 3 | ₹10,800 | ₹7,680 | ₹30,720 |

SLM charges (60,000 − 6,000) ÷ 5 = ₹10,800 every year. WDV starts higher and falls each year.$c$,
  $c$✅ Verified (Jul–Aug 2026)$c$,
  $c$Telecom companies show how today's capex becomes tomorrow's depreciation. In April–June 2026,
**Jio Platforms'** profit of about **₹7,764 crore** was up about 9% on the year but **slipped from the
previous quarter**, reportedly weighed down by **higher depreciation and finance costs from its 5G
rollout**. **Bharti Airtel's** capital spending in the same quarter was reported up about 61%, which
will feed its depreciation for years.
*Sources: Entrepreneur India; Investor Feed, Q1 FY27 results coverage.*$c$,
  $c$Depreciation is a non-cash expense. Why does it matter?$c$,
  $c$"Because the cash was spent when the asset was bought, and depreciation spreads that
cost over the years that use the asset. Without it, profit would be overstated in later years. It also
reduces taxable profit, which does save cash. And heavy depreciation signals heavy past investment:
telecom companies show this after 5G rollouts."$c$,
  $c$Thinking depreciation is a fund of cash set aside to replace the asset. It's an **allocation of cost**, not a savings account.$c$,
  $c$[{"kind":"concept","question":"Under the straight line method, the depreciation charge is…","answer":"**The same amount every year.**"},{"kind":"application","question":"Cost ₹1,00,000, residual value ₹10,000, useful life 9 years. What's the annual SLM depreciation?","answer":"**₹10,000.**"},{"kind":"case","question":"A company's laptops lose most of their value in the first two years. Which method fits better, and why?","answer":"**Written down value.** It charges more depreciation early, when the laptops actually lose most of their value (obsolescence)."}]$c$::jsonb,
  $c$ICAI Ch 5, paras on meaning of depreciation, SLM and reducing balance methods (93957bos-aps6170-ch5.pdf)$c$, $c$verified$c$
),
(
  $c$acct-23$c$, $c$acct$c$, 23, $c$Bills of Exchange and Promissory Notes$c$,
  $c$A bill of exchange is a creditor's written **order** to a debtor to pay; a promissory note is the debtor's written **promise** to pay. Both turn credit sales into tradeable paper.$c$,
  $c$| | Bill of exchange | Promissory note |
|---|---|---|
| Nature | An unconditional **order** to pay | An unconditional **promise** to pay |
| Made by | The **creditor** (drawer) | The **debtor** (maker) |
| Parties | 3: drawer, drawee (who accepts and pays), payee | 2: maker and payee |
| Acceptance | Needed from the drawee | Not needed |

- **Maturity:** a time bill gets **3 days of grace** after the due date.
- **Discounting:** the holder can encash a bill at a bank **before maturity**, receiving less than its face value (the bank's discount).
- **Dishonour:** if the drawee doesn't pay at maturity, the entry is reversed and **noting charges** are recovered from the drawee.$c$,
  $c$**a Burrabazar saree wholesaler**

- Sells sarees worth **₹1,00,000** to a Siliguri retailer and draws a **3-month bill dated 1 January**, which the retailer accepts.
- Due date 1 April + 3 days of grace = **maturity on 4 April**.
- Needing cash now, the wholesaler **discounts** it at a bank at 12% a year for 3 months, a discount of about **₹3,000**, and receives about **₹97,000** today.$c$,
  $c$✅ Verified (Jun 2026)$c$,
  $c$Today's version of bill discounting for small firms is **TReDS**, RBI-authorised online platforms where
MSMEs sell their invoices on big buyers to banks for early payment. Invoice discounting on TReDS grew from
about ₹40,000 crore in FY2021-22 to **₹3.47 lakh crore in FY2025-26**. From **30 June 2026**, the
government requires all central public sector enterprises to **settle MSME invoices through TReDS**.
*Sources: PIB press release, June 2026; Data Diaries analysis of TReDS data, 2026.*$c$,
  $c$Why would a small supplier accept a lower amount by discounting its bills or invoices?$c$,
  $c$"For liquidity. A supplier selling on 90-day credit still has to pay workers and buy
materials now. Discounting turns a receivable into cash today for a small cost, like interest. It also
shifts the collection wait to the bank. Platforms like TReDS make this cheaper for MSMEs, because the bank
is really relying on the big buyer's credit, not the small supplier's."$c$,
  $c$Mixing up the parties. In a bill, the **creditor** draws it and the **debtor** accepts it. In a promissory note, the **debtor** makes it.$c$,
  $c$[{"kind":"concept","question":"How many parties does a bill of exchange generally have?","answer":"**Three:** drawer, drawee and payee."},{"kind":"application","question":"A bill dated 1 March is payable 2 months after date. When does it mature?","answer":"**4 May** (due 1 May + 3 days of grace)."},{"kind":"case","question":"A bill for ₹50,000 is dishonoured at maturity, and the bank charges ₹200 noting charges. What does the drawer do in its books?","answer":"**Debit the drawee ₹50,200** (bill amount + noting charges) and reverse the bills receivable entry. The customer owes the full amount again, plus the charges."}]$c$::jsonb,
  $c$ICAI Ch 6, paras 1–8 (93958bos-aps6170-ch6.pdf)$c$, $c$verified$c$
),
(
  $c$ob-01$c$, $c$ob$c$, 1, $c$What Organisational Behaviour Is$c$,
  $c$OB studies how people think, feel and act at work, so managers can understand, predict and shape that behaviour.$c$,
  $c$Fred Luthans put it in three verbs: OB is about **understanding, predicting and controlling** human behaviour in organisations.
It works at **three levels**:
- **Individual:** personality, perception, motivation, stress.
- **Group:** teams, roles, norms, conflict, leadership.
- **Organisation:** structure, culture, change.

OB borrows from other subjects:
- **psychology** for the individual;
- **sociology** and **social psychology** for groups;
- **anthropology** for culture;
- **political science** for power.

It is **applied**: the aim is better performance and more satisfied people.$c$,
  $c$Two tea stalls stand side by side near College Street. Both charge **₹10** a cup and have the same kettle. One sells **200** cups a day, the other **80**.
The difference isn't the tea. In one stall, the helper is greeted, trusted and shares tips. In the other, he is shouted at and keeps leaving.
That gap of **120 cups (₹1,200 a day)** is OB.$c$,
  $c$✅ Verified (Sept 2024)$c$,
  $c$On **16 September 2024**, Amazon CEO Andy Jassy told corporate staff to return to the office **five days a week from 2 January 2025**. Since May 2023 they had come in three days a week.
He said he wanted Amazon to run like "the world's largest startup", and planned fewer layers of managers.
One decision touched all three OB levels:
- **individual:** commute, stress, motivation;
- **team:** how people collaborate;
- **organisation:** culture and structure.

*Sources: Amazon memo as reported by Sinclair/ABC News affiliates, Sept 2024.*$c$,
  $c$What is organisational behaviour, and why should a finance or marketing manager care?$c$,
  $c$"OB is the study of how individuals, groups and structures shape behaviour at work, used to improve performance and satisfaction. Every manager gets results *through* people.
A great pricing strategy fails if the sales team is demotivated. A budget fails if teams hide bad news.
OB gives me tools to read people, build teams and manage change. Those are the things that decide whether a plan actually gets done."$c$,
  $c$Calling OB "common sense". Research often contradicts common sense: for example, a happy worker is not automatically a productive one. OB tests these beliefs systematically.$c$,
  $c$[{"kind":"concept","question":"Name the three levels at which OB studies behaviour.","answer":"**Individual, group and organisation.**"},{"kind":"application","question":"A company studies how its office culture differs between its Kolkata and Tokyo branches. Which discipline is OB borrowing from most?","answer":"**Anthropology**, the study of cultures and how they shape behaviour."},{"kind":"case","question":"A startup has good funding and a strong product, but 40% of new hires quit within six months. The founder says \"it's a salary problem\". What would an OB view add?","answer":"**Look beyond pay to all three levels.** Individual: role fit and stress. Group: how managers and teams treat newcomers. Organisation: culture and onboarding. Exit interviews would show which level is driving the quits."}]$c$::jsonb,
  $c$OB_Introduction_2026.pptx slides 11–15; Robbins & Judge 15e, ch. 1$c$, $c$draft$c$
),
(
  $c$ob-02$c$, $c$ob$c$, 2, $c$Lewin's Equation: B = f(P, E)$c$,
  $c$Behaviour is a function of the Person and the Environment. To change what people do, change one or both.$c$,
  $c$Kurt Lewin (1936) gave OB its simplest model:
- **B** is behaviour: what we can see someone do.
- **P** is the person: personality, skills, values, mood.
- **E** is the environment: the boss, team, rules, rewards, the physical setting.

The same person behaves differently in different settings. Different people behave differently in the same setting.
For a manager, **E** is often easier to change than **P**. You can redesign rewards, rules and teams far faster than you can change someone's personality.$c$,
  $c$Riya is quiet in a 60-student lecture at her Park Street college. She never speaks.
In a 5-person case-study group with a friendly senior, she speaks up and wins a **₹500** book-voucher prize for the best idea.
Her **P** didn't change; the **E** did, from a big hall to a small, safe group. So did her **B**.$c$,
  $c$✅ Verified (Apr 2024)$c$,
  $c$In **April 2024**, TCS tied employees' **quarterly variable pay to office attendance**, according to an HR note reported by NDTV Profit and Business Today.
Below 60% attendance meant no variable pay. Full pay needed 85% or more.
TCS's HR head later said about **70%** of staff were back in office.
That is Lewin in action: TCS didn't try to change people's personalities (**P**). It changed the reward environment (**E**), and behaviour (**B**) followed.
*Sources: Business Today, NDTV Profit, Apr 2024.*$c$,
  $c$If an employee is underperforming, is it the person or the situation?$c$,
  $c$"Usually both. Lewin said behaviour is a function of the person and the environment.
Before blaming the person, I'd check the environment:
- Are the targets clear?
- Do they have the tools?
- Is the manager supportive?
- Do the rewards match what we want?

If others in the same setting do well, the issue may be skills or fit. Then I'd coach or move them to a better-fitting role.
Fixing the environment is often faster and helps the whole team."$c$,
  $c$Treating it as maths. You can't plug in numbers. It's a way of thinking that says don't explain behaviour by personality *alone*.$c$,
  $c$[{"kind":"concept","question":"In B = f(P, E), what does E stand for?","answer":"**Environment**: the situation around the person, such as the boss, team, rules and rewards."},{"kind":"application","question":"A bank cuts long queues by adding a token machine and seating, and staff complaints drop. Which part of Lewin's equation did it change?","answer":"**E, the environment**, which changed staff behaviour without changing the staff."},{"kind":"case","question":"A star salesperson becomes average after moving from Kolkata to the Delhi branch. Use Lewin's equation to suggest two causes.","answer":"**Look at E and P together.** E: a different manager, territory or team support. P: stress from relocating, or a mismatch between their skills and the new market."}]$c$::jsonb,
  $c$OB_Introduction_2026.pptx slide 22$c$, $c$draft$c$
),
(
  $c$ob-03$c$, $c$ob$c$, 3, $c$The Five OB Models: Autocratic to System$c$,
  $c$Organisations run on different beliefs about people, from "obey because I'm the boss" to "we're partners who trust each other".$c$,
  $c$| Model | Rests on | Employee feels | Result |
|---|---|---|---|
| **Autocratic** | Power | Obedience, fear | Minimum effort |
| **Custodial** | Money and benefits | Security, dependence | Passive cooperation |
| **Supportive** | Leadership | Recognition | Motivated effort |
| **Collegial** | Partnership | Responsibility | Enthusiasm, teamwork |
| **System** | Trust and community | Meaning, belonging | Passion, commitment |

Most firms mix models. The trend over time has been from top to bottom: from power towards trust.$c$,
  $c$Five sweet shops in Kolkata pay their helpers the same **₹300** for an evening shift:
- **Autocratic:** "Do it or you're out."
- **Custodial:** the owner adds free dinner.
- **Supportive:** the owner coaches the helper and thanks him.
- **Collegial:** the helper suggests a new sandesh flavour and the owner tries it.
- **System:** the helper feels the shop is *his* too, and stays late in the Durga Puja rush without being asked.$c$,
  $c$✅ Verified (Jan 2025)$c$,
  $c$In **January 2025**, a video of L&T chairman **S.N. Subrahmanyan** went viral. He said he wished he could make staff work on Sundays, and asked "how long can you stare at your wife?" He was talking about a **90-hour week**.
The backlash was swift:
- Bajaj Auto's **Rajiv Bajaj** said the quality of work matters, not the hours.
- **Harsh Goenka** joked about renaming Sunday "Sun-duty".

L&T said the remarks were about "nation-building", not a mandate. The debate was really autocratic thinking (output through pressure) against supportive and collegial thinking (output through engagement).
*Sources: People Matters, Gulf News, Storyboard18, Jan 2025.*$c$,
  $c$Which OB model would you use to manage a team, and why?$c$,
  $c$"It depends on the team. A new team in a crisis might need clear, firm direction for a short time. But for knowledge work I'd aim for the **supportive and collegial** models.
People who feel trusted and responsible bring ideas, not just hours. Fear-based control gets minimum effort and high attrition.
Custodial benefits help with security, but they don't create drive."$c$,
  $c$Thinking custodial means caring. Benefits create *dependence and security*, not motivation. People stay but don't push themselves.$c$,
  $c$[{"kind":"concept","question":"Which OB model is based on economic resources such as pensions and benefits?","answer":"**The custodial model.**"},{"kind":"application","question":"A startup gives every employee a say in product decisions and treats them as partners. Which model is this?","answer":"**Collegial**, built on partnership and shared responsibility."},{"kind":"case","question":"A factory pays well and offers housing, but workers do the bare minimum and never suggest improvements. Diagnose it.","answer":"**A custodial model with no leadership support.** Benefits buy loyalty and security, but not effort. Moving towards supportive (recognition, coaching) and collegial (involving workers in decisions) would raise motivation."}]$c$::jsonb,
  $c$OB_Introduction_2026.pptx slide 21; OB models after Keith Davis$c$, $c$draft$c$
),
(
  $c$ob-04$c$, $c$ob$c$, 4, $c$Schools of Management Thought$c$,
  $c$Management thinking moved from "people are parts of a machine" (classical), to "people have feelings and needs" (neoclassical), to "it depends on the situation" (modern).$c$,
  $c$**1. Classical (about 1880–1920): efficiency first.**
- **Scientific management (Taylor):** study each task, find the "one best way", pay by output.
- **Administrative (Fayol):** principles for managing the whole organisation, such as planning, organising and command.
- **Bureaucracy (Weber):** a clear hierarchy and written rules, not personal favours.

**2. Neoclassical (about 1920–1950): people first.**
- **Human relations:** satisfied workers work better, so communication, leadership and group behaviour matter.
- **Behavioural:** study what actually drives behaviour at work.

**3. Modern: it depends.**
- **Systems:** the organisation is a set of connected parts.
- **Contingency:** there is no single best way; fit the style to the situation.
- **Organisational humanism:** let people use all their abilities.
- **Management science:** use numbers and models.$c$,
  $c$A momo stall near New Market sells plates at **₹60**:
- **Taylor** times every step and finds rolling takes 40 seconds, so he redesigns the counter and output doubles.
- **Fayol** writes clear roles: who cooks, who serves, who handles cash.
- **Weber** fixes rules: no free plates for friends.
- **Human relations:** the owner notices staff work faster when he eats with them.
- **Contingency:** on Puja nights he hires two more people and simplifies the menu. On a rainy Tuesday he doesn't.$c$,
  $c$✅ Verified (Dec 2024)$c$,
  $c$In **December 2024**, a US Senate committee led by **Bernie Sanders** released a report on Amazon's warehouses, "The Injury-Productivity Trade-off".
It said Amazon's internal studies linked **speed quotas** to injuries. It also said executives rejected safety staff's advice to ease the quotas.
Amazon called the report "fundamentally flawed". It said injury rates had fallen while speed rose.
This is the oldest debate in management: Taylor's focus on measured efficiency against the human relations view that worker wellbeing drives long-term performance.
*Sources: US Senate HELP Committee report; CNN, Boston Globe, Dec 2024.*$c$,
  $c$Is Taylor's scientific management still relevant today?$c$,
  $c$"Very much. Delivery apps timing every order, call centres tracking handling time, and warehouse pick rates are all Taylor's ideas with software added.
But the classical schools ignored people's feelings and needs. That's why human relations followed.
Today, contingency thinking makes most sense to me. Measure efficiency where tasks are routine, but give autonomy where work needs judgement and creativity. And watch the human cost of pure speed targets."$c$,
  $c$Thinking the newer schools replaced the old ones. They didn't. Modern firms use all of them together, in different parts of the business.$c$,
  $c$[{"kind":"concept","question":"Who is linked with bureaucracy, the ideal of a hierarchy governed by written rules?","answer":"**Max Weber.**"},{"kind":"application","question":"A manager says \"there's no one best way; it depends on our market and technology\". Which school is this?","answer":"**Contingency theory.**"},{"kind":"case","question":"A call centre doubles productivity by scripting and timing every call, but attrition hits 60% a year. Which school drove the gain, and which school explains the problem?","answer":"**Scientific management drove the gain; human relations explains the attrition.** Ignoring workers' needs for recognition and autonomy made them leave. The fix is to keep the efficient processes and add people-focused practices."}]$c$::jsonb,
  $c$Schools of Thought.pdf pages 3–19$c$, $c$draft$c$
),
(
  $c$ob-05$c$, $c$ob$c$, 5, $c$OB's Big Challenges Today$c$,
  $c$Managers today must handle diverse, global, often temporary workforces, while pushing quality, empowerment and constant innovation.$c$,
  $c$The challenges (and opportunities) that OB helps with:
- **People skills:** managers succeed through others, so they need soft skills.
- **Quality and productivity:** for example, Total Quality Management, where everyone improves the process.
- **Workforce diversity:** different genders, ages, regions, languages and abilities.
- **Globalisation:** working across cultures and time zones.
- **Empowerment:** pushing decisions down to the people closest to the work.
- **Temporariness:** contracts, gig work and constant reorganisation.
- **Innovation and change:** adapt fast or fall behind.$c$,
  $c$A Salt Lake café's evening team:
- a Bengali manager;
- a Nepali chef;
- two part-time students from Odisha;
- a delivery rider from an app, paid about **₹40** per delivery.

In one shift the manager handles diversity (three languages), temporariness (the rider changes every week) and empowerment (letting the chef change the menu).
That is today's OB in one small kitchen.$c$,
  $c$✅ Verified (Feb 2025)$c$,
  $c$In the **Union Budget on 1 February 2025**, Finance Minister Nirmala Sitharaman announced that gig and platform workers would get:
- **identity cards**;
- registration on the **e-Shram** portal;
- health cover under **PM-JAY**.

That covers workers who deliver or drive for platforms such as Zomato, Swiggy, Blinkit, Ola and Uber. The plan was expected to help about **1 crore** gig workers.
It is a policy answer to OB's "temporariness" challenge: people who work for a company without being its employees.
*Sources: Union Budget 2025-26 coverage, Outlook Money, Exchange4media, YourStory, Feb 2025.*$c$,
  $c$What's the biggest people challenge Indian companies face today?$c$,
  $c$"I'd say the shift to a temporary, hybrid and diverse workforce.
- A growing share of work is done by gig workers, contractors and remote teams who may never meet the manager.
- At the same time, firms need innovation, which needs trust and commitment.

So the challenge is building engagement with people who aren't permanent or present. Clear goals, fair treatment, recognition and inclusion become more important, not less."$c$,
  $c$Listing challenges without the "opportunity" side. For example, diversity is a challenge to manage, but it is also a source of better ideas and wider markets.$c$,
  $c$[{"kind":"concept","question":"What does \"coping with temporariness\" mean in OB?","answer":"**Managing in constant change**: contract and gig workers, frequent reorganisation, and skills that go out of date fast."},{"kind":"application","question":"A bank lets branch staff approve small loans without head-office sign-off. Which challenge is it responding to?","answer":"**Empowering people.** Decisions are pushed to those closest to the customer."},{"kind":"case","question":"A Kolkata IT firm wins its first Japanese client, and its project team now spans three cities and two cultures. Name two OB challenges and one response to each.","answer":"**Globalisation and workforce diversity.** For globalisation: cross-cultural training on Japanese business norms. For diversity: clear communication norms and inclusive meetings, so no one city dominates."}]$c$::jsonb,
  $c$OB_Introduction_2026.pptx slide 9; Robbins & Judge 15e, ch. 1$c$, $c$draft$c$
),
(
  $c$ob-06$c$, $c$ob$c$, 6, $c$Personality: The Big Five (and the MBTI)$c$,
  $c$Personality is a person's stable pattern of thinking, feeling and acting. The Big Five is the best-supported way to describe it.$c$,
  $c$The **Big Five** traits (remember **OCEAN**):
- **O: Openness.** Curious and creative, or conventional.
- **C: Conscientiousness.** Organised and dependable, or careless.
- **E: Extraversion.** Sociable and energetic, or reserved.
- **A: Agreeableness.** Warm and cooperative, or tough and critical.
- **N: Neuroticism.** Anxious, or emotionally stable.

**Conscientiousness** predicts job performance best, across almost all jobs.
Earlier models in the notes:
- **Jung:** introvert or extrovert.
- **Eysenck:** three factors, including introversion–extraversion and stability–neuroticism.
- **Cattell:** 16 traits.

The popular **MBTI** sorts people into 16 types using four pairs (E/I, S/N, T/F, J/P). It's useful for self-awareness, but research says it predicts job performance poorly.$c$,
  $c$Five friends each get **₹200** at a Gariahat fair:
- **High C:** writes a budget and keeps ₹50 back.
- **High O:** tries the strangest street food.
- **High E:** spends it treating everyone.
- **High A:** lends half to a friend who forgot his wallet.
- **High N:** worries the whole time about losing it.

Same money, five different stable patterns.$c$,
  $c$✅ Verified (Oct 2024)$c$,
  $c$**Ratan Tata** died on **9 October 2024**, aged 86. The tributes kept naming the same traits:
- the Tata Group's statement and PM Modi stressed his **humility** and kindness: high **agreeableness**;
- Tata Sons chairman N. Chandrasekaran also praised his humility;
- others pointed to his ethical consistency, a sign of high **conscientiousness**, and to his bold bets, which show high **openness**.

Whatever one thinks of individual deals, the public remembered the *pattern*. That is what personality means.
*Sources: Deccan Herald, ETV Bharat, Asia News Network, Oct 2024.*$c$,
  $c$Describe your personality using the Big Five.$c$,
  $c$"I'd say I'm high on **conscientiousness**. I plan my week and I meet deadlines, like running our fest budget of ₹2 lakh without overspending.
I'm moderately **extraverted**: comfortable presenting, but I recharge alone.
I'm high on **openness**, which is why I enjoy case competitions.
I'm working on **agreeableness** in tough negotiations, where I sometimes give in too fast."$c$,
  $c$Treating MBTI types as scientific fact. Interviewers trained in OB know the Big Five has much stronger evidence. Use it, and back each trait with an example.$c$,
  $c$[{"kind":"concept","question":"Which Big Five trait best predicts job performance across jobs?","answer":"**Conscientiousness.**"},{"kind":"application","question":"A role needs calm decisions under pressure, such as an emergency room or a trading desk. Which trait should be *low*?","answer":"**Neuroticism.** You want high emotional stability."},{"kind":"case","question":"A company hires sales staff purely by MBTI type (\"only ENTJs\") and finds results no better than before. Why, and what's better?","answer":"**MBTI predicts performance poorly.** It puts people in boxes and is not strongly linked to results. Better: assess Big Five traits such as conscientiousness and extraversion, together with structured interviews and work samples."}]$c$::jsonb,
  $c$Theories of Personality.pdf; Robbins & Judge 15e, ch. 5$c$, $c$draft$c$
),
(
  $c$ob-07$c$, $c$ob$c$, 7, $c$Freud: Id, Ego, Superego and Defence Mechanisms$c$,
  $c$Freud saw personality as a tug-of-war. The id wants pleasure now, the superego says "be good", and the ego referees with reality.$c$,
  $c$Freud's **iceberg**: most of the mind sits below the surface, in the unconscious.
- **Id:** instinct and impulse. "I want it now."
- **Superego:** conscience and rules learned from parents and society. "That's wrong."
- **Ego:** the realistic manager that balances the two.

When anxiety rises, the ego uses **defence mechanisms**, often without us knowing:
- **denial:** "it's not a problem";
- **rationalisation:** a good-sounding excuse;
- **projection:** blaming others for our own feelings;
- **displacement:** taking anger out on a safer target.

At work, these explain why people make excuses, blame others or ignore bad news.$c$,
  $c$Arjun has **₹150** left for the week.
- His **id** says "biryani from Arsalan, now!"
- His **superego** says "save it, your parents work hard for this."
- His **ego** decides: a ₹60 roll today and ₹90 saved.

He fails a test and says "the questions were out of syllabus anyway." That is **rationalisation**: an excuse that protects his self-image.$c$,
  $c$✅ Verified (Sept 2024)$c$,
  $c$On **23 September 2024**, SEBI published a study of equity futures and options (F&O) trading. It found that **93% of over 1 crore individual traders lost money** between FY22 and FY24.
- The average loss was about **₹2 lakh** each, including costs.
- Total losses were above **₹1.8 lakh crore**.
- Yet more than **75% of loss-makers kept trading**.

Freud's ideas help explain why: the id's thrill of a quick win, and defences like "I was just unlucky" (rationalisation) or "next time will be different" (denial).
*Sources: SEBI press release, Sept 2024; Business Standard, Outlook Business.*$c$,
  $c$Tell me about a failure. What did you learn?"*
(This question quietly tests whether you use defence mechanisms.)$c$,
  $c$"In my second semester I lost a case competition because I hadn't checked our market-size numbers. My first instinct was to blame the judges, and I caught myself doing it.
I realised that was an excuse. So I went back, found my error, and now I build a quick sanity check into every analysis. In the next competition our numbers were the thing judges praised."$c$,
  $c$Saying Freud is "outdated" and skipping him. Much of his theory isn't testable. But defence mechanisms are a very practical lens for feedback, failure and blame at work.$c$,
  $c$[{"kind":"concept","question":"Which part of Freud's model acts as our conscience?","answer":"**The superego.**"},{"kind":"application","question":"A manager scolded by the boss goes back and snaps at a junior. Which defence mechanism is this?","answer":"**Displacement.** Anger is moved to a safer target."},{"kind":"case","question":"A project lead keeps saying \"the delay is fine, clients always wait\" while the deadline slips week after week. Which defence mechanisms are at work, and how should a manager respond?","answer":"**Denial and rationalisation.** Respond with facts in a calm, safe conversation: show the timeline and the client impact. Focus on fixing the problem, not blaming the person, so their ego doesn't need to defend itself."}]$c$::jsonb,
  $c$Theories of Personality.pdf (Freud, iceberg model, defence mechanisms)$c$, $c$draft$c$
),
(
  $c$ob-08$c$, $c$ob$c$, 8, $c$Locus of Control and Self-Efficacy$c$,
  $c$Locus of control is whether you believe *you* or *outside forces* control your results. Self-efficacy is your belief that you can do a specific task.$c$,
  $c$**Locus of control (Rotter):**
- **Internals** believe "my effort decides my results." They tend to perform better, take initiative and handle setbacks.
- **Externals** believe "luck, fate or other people decide." They're more likely to give up, which can slide into **learned helplessness**.

**Self-efficacy (Bandura):** confidence for a *particular* task: "I can crack this case interview." It grows from four sources:
1. **past success** (the strongest);
2. **watching similar people succeed**;
3. **encouragement**;
4. **managing stress and emotions**.

Robbins adds **core self-evaluation**: an overall belief in your own worth and ability.$c$,
  $c$Two students each lose **₹349** on a bad online order.
- **Priya (internal):** "I didn't check the seller rating. Next time I will." She checks, and never loses money that way again.
- **Rahul (external):** "These apps are all scams, nothing I can do." He keeps losing.

Same loss. The belief about *control* changed what happened next.$c$,
  $c$✅ Verified (Dec 2024)$c$,
  $c$On **12 December 2024**, **D. Gukesh** beat Ding Liren in Singapore to become the **youngest world chess champion, at 18**.
After winning the Candidates, he asked for a mental trainer and brought in **Paddy Upton**. Upton had worked with India's 2011 World Cup cricket team.
Gukesh credited the work with helping him handle the "emotional pressure". That is self-efficacy built through two of Bandura's sources: mastery from past wins and managing emotional states.
*Sources: The Bridge, Onmanorama, DTNext, Dec 2024.*$c$,
  $c$What do you do when things go wrong despite your best efforts?$c$,
  $c$"I separate what I control from what I don't.
When our team's internship project lost its data source a week before the deadline, I didn't blame the vendor. I listed what we could still do: we found a public dataset, cut the scope and told the client early.
Focusing on what I can control keeps me moving. And every time it works, my confidence for the next problem grows."$c$,
  $c$Confusing self-efficacy with self-esteem. Self-esteem is how much you like yourself overall. Self-efficacy is task-specific: you can be confident in Excel and not at all in public speaking.$c$,
  $c$[{"kind":"concept","question":"According to Bandura, what is the strongest source of self-efficacy?","answer":"**Mastery experiences**, meaning your own past successes at the task."},{"kind":"application","question":"An employee says \"promotions here are just politics, so why try?\" Internal or external locus?","answer":"**External**, and it puts them at risk of learned helplessness."},{"kind":"case","question":"A new joinee is scared of client presentations. As her manager, how would you build her self-efficacy?","answer":"**Use Bandura's sources.** Start her with small internal presentations so she gets early wins (mastery). Let her watch a peer present (modelling). Give specific encouragement (persuasion). Help her rehearse to manage nerves (emotional state)."}]$c$::jsonb,
  $c$Theories of Personality.pdf (Rotter, Bandura); Robbins & Judge 15e, ch. 5$c$, $c$draft$c$
),
(
  $c$ob-09$c$, $c$ob$c$, 9, $c$Perception: How We Make Sense of the World$c$,
  $c$Perception is how we select, organise and interpret what our senses pick up. We react to *our version* of reality, not reality itself.$c$,
  $c$**The process:** stimuli → we **select** (pay attention to some things) → **organise** (group them into patterns) → **interpret** (give them meaning) → respond.
Three sets of factors shape what we see:
- **The perceiver:** attitudes, motives, interests, past experience and expectations.
- **The target:** size, intensity, novelty, motion, background, and how close or similar it is to other things.
- **The situation:** time, work setting and social setting.

The ambiguous pictures in the slides, such as the vase that is also two faces, show this. Same picture, different perceptions.$c$,
  $c$A new café in Gariahat charges **₹120** for a cutting chai.
- A Salt Lake IT worker thinks: "Fair, it's an *experience*."
- A retired professor thinks: "Daylight robbery, I pay ₹10 at the corner."
- A student on a date thinks: "Worth it to impress."

Same chai, same ₹120. The perceivers' experience, motives and situation create three different realities.$c$,
  $c$✅ Verified (Oct 2024)$c$,
  $c$In **October 2024**, the Central Consumer Protection Authority (CCPA) sent **Ola Electric** a show-cause notice. It was based on **10,644 complaints** to the National Consumer Helpline in a year, mostly about service delays.
Around the same time, comedian Kunal Kamra and founder Bhavish Aggarwal had a public spat online about service quality.
Ola said it had resolved **99.1%** of the complaints. But for many buyers, *perception* had already formed from their own past experience: "service is poor."
Once formed, a perception filters what people notice next.
*Sources: Business Today, The News Minute, MediaNama, Oct 2024.*$c$,
  $c$Why do two managers rate the same employee so differently?$c$,
  $c$"Because perception is shaped by the perceiver, not just the target.
One manager may value speed and notice the employee's quick turnaround. Another may value polish and notice the typos. Their past experiences and the situations they've seen the employee in also differ.
That's why good appraisal systems use clear criteria, several raters and documented examples. They make the rating about the work, not the rater's lens."$c$,
  $c$Thinking perception is just "seeing". It is an *active* process of choosing, organising and interpreting. That's why it can be managed, through framing, first impressions and experience.$c$,
  $c$[{"kind":"concept","question":"What are the three stages in the middle of the perception process?","answer":"**Selecting, organising and interpreting.**"},{"kind":"application","question":"A bright red \"50% OFF\" sign stands out in a row of plain shop boards. Which target factors make it noticed?","answer":"**Intensity, size and novelty, plus contrast with the background.**"},{"kind":"case","question":"A new HR policy allowing two work-from-home days is welcomed by young staff, but older managers see it as \"slacking\". Using perception factors, explain why.","answer":"**Perceiver factors.** The two groups have different past experiences, attitudes and expectations about work. Managers trained in \"presence means productivity\" interpret the same policy differently. Sharing data on output would help align their perceptions."}]$c$::jsonb,
  $c$Perception.pptx (definition, factors, process); Robbins & Judge 15e, ch. 6$c$, $c$draft$c$
),
(
  $c$ob-10$c$, $c$ob$c$, 10, $c$Attribution Theory: Who Gets the Blame?$c$,
  $c$When we see someone's behaviour, we judge whether it was caused by *them* (internal) or by the *situation* (external), using three clues.$c$,
  $c$Harold Kelley's three clues:
| Clue | Question | If HIGH, points to |
|---|---|---|
| **Distinctiveness** | Do they behave this way only in this situation? | External |
| **Consensus** | Do others behave the same way in the same situation? | External |
| **Consistency** | Do they behave this way every time? | Internal |

Two common biases:
- **Fundamental attribution error:** we blame *other people's* failures on their personality and ignore the situation.
- **Self-serving bias:** we credit *our own* successes to our talent, and blame our failures on bad luck.$c$,
  $c$Sumit is late to class, so the professor fines him **₹50**.
- Is he late only on rainy days (high **distinctiveness**)?
- Is the whole class late, because the metro broke down (high **consensus**)?
- Is he late every Monday (high **consistency**)?

If the whole class was late because the metro broke down, it's external, and the fine is unfair.
If only Sumit is late, every week, it's internal.$c$,
  $c$✅ Verified (Nov 2024)$c$,
  $c$On **3 November 2024**, New Zealand beat India by 25 runs in Mumbai to complete a **3-0 Test series sweep**. It was India's first home whitewash in a series of three or more Tests. It also ended a run of **18 home series wins in a row** since 2012.
The debate that followed was pure attribution theory:
- **External:** spin-friendly pitches and a brilliant Ajaz Patel (11 wickets in the match).
- **Internal:** India's batters' technique against spin.

Low **distinctiveness** (struggles against spin had shown up before) pointed many experts towards internal causes.
*Sources: ESPNcricinfo, Al Jazeera, Wisden, Nov 2024.*$c$,
  $c$Your team member missed a deadline. How do you decide what to do?$c$,
  $c$"First, I'd avoid the fundamental attribution error of assuming they're careless. I'd check three things:
- Did others on similar tasks also miss? That's consensus.
- Is this unusual for this person? That's distinctiveness.
- Has it happened before? That's consistency.

If it's a one-off and others struggled too, the cause is probably external, like unclear scope or a tool failure, and I fix the system. If it's a repeated pattern only with them, it's a coaching conversation."$c$,
  $c$Mixing up the clues. High **consistency** points *internal*, but high **distinctiveness** and high **consensus** point *external*. Students often say all three point the same way.$c$,
  $c$[{"kind":"concept","question":"What is the fundamental attribution error?","answer":"**Blaming others' behaviour on their personality** while underestimating the effect of the situation."},{"kind":"application","question":"A salesperson says \"I hit target because I'm brilliant; I missed last quarter because the market was bad.\" Which bias is this?","answer":"**Self-serving bias.**"},{"kind":"case","question":"All five branch managers in Bihar missed their loan targets this quarter. Their regional head wants to replace them all. Apply attribution theory.","answer":"**High consensus points to an external cause.** Everyone in the same situation failed, so check the region's economy, product fit or the targets themselves before blaming individual managers."}]$c$::jsonb,
  $c$Robbins & Judge 15e, ch. 6 (attribution theory); builds on Perception.pptx$c$, $c$draft$c$
),
(
  $c$ob-11$c$, $c$ob$c$, 11, $c$Perception Shortcuts: Halo, Stereotypes and More$c$,
  $c$To save effort, we judge people with mental shortcuts. They're fast, but they often lead us wrong at work.$c$,
  $c$- **Selective perception:** we notice what fits our interests and background, and miss the rest.
- **Halo effect:** one good trait colours our whole view of a person, such as "great speaker, so must be great at everything". A bad trait does the reverse.
- **Contrast effect:** we judge someone against whoever came just before them, not against a fixed standard.
- **Stereotyping:** judging a person by the group they belong to.
- **Self-fulfilling prophecy (Pygmalion effect):** expectations change how we treat people, and that makes the expectation come true.

These shortcuts matter most in **interviews, appraisals and investment decisions**.$c$,
  $c$At a Kolkata college fest, three students pitch to sell **₹150** tickets.
- The first is so polished that the second looks weak next to him, even though she's good. That's the **contrast effect**.
- The third went to a famous school, so the judges assume he'll sell the most. That's the **halo effect**.

At the end of the day the second student sold the most tickets, and the third sold the fewest.$c$,
  $c$✅ Verified (Apr 2025)$c$,
  $c$On **15 April 2025**, SEBI passed an interim order against **Gensol Engineering's** promoters, the Jaggi brothers, and barred them from the securities market.
- Gensol had raised about **₹978 crore** in loans from IREDA and PFC to buy EVs for its sister company **BluSmart**.
- SEBI's forensic analysis found about **₹262 crore** unaccounted for. It alleged that some was diverted for personal uses such as a luxury flat in Gurugram.

BluSmart soon shut down. A "green, fast-growing EV startup" image can create a **halo** that makes outsiders ask fewer hard questions.
*Sources: SEBI order as reported by Value Research, Moneylife, Entrackr, Apr 2025.*$c$,
  $c$How would you make your hiring decisions fairer?$c$,
  $c$"I'd design against the shortcuts:
- **Structured interviews**, with the same questions for everyone and scoring against a rubric, so the halo effect and contrast effects matter less.
- **Several interviewers** who score independently before discussing.
- **Work samples or case tests**, so we judge the work, not the college name or accent, which reduces stereotyping.

It's also important to tell interviewers about these biases, so they catch themselves using them."$c$,
  $c$Thinking only "bad" people use stereotypes. Everyone uses shortcuts. The skill is designing processes such as rubrics and blind reviews that limit their damage.$c$,
  $c$[{"kind":"concept","question":"What is the halo effect?","answer":"**Forming a general impression of someone from a single trait**, such as appearance, a famous college or good speaking."},{"kind":"application","question":"An average candidate seems excellent because the two before her were poor. Which shortcut is this?","answer":"**The contrast effect.**"},{"kind":"case","question":"A manager told that a new trainee is \"a topper\" gives him the best projects and extra mentoring, and the trainee indeed shines. Another equally capable trainee gets routine work and stays average. Name the effect and its risk.","answer":"**Self-fulfilling prophecy (Pygmalion effect).** The manager's expectations shaped the opportunities. The risk is that talent is wasted and treatment becomes unfair. The fix is to give everyone similar stretch work and judge by results."}]$c$::jsonb,
  $c$Robbins & Judge 15e, ch. 6 (shortcuts in judging others); builds on Perception.pptx$c$, $c$draft$c$
),
(
  $c$ob-12$c$, $c$ob$c$, 12, $c$Stress: Eustress vs Distress$c$,
  $c$Stress is the body's response when demands feel bigger than our resources. A little sharpens performance (eustress); too much breaks it (distress).$c$,
  $c$NIOSH defines job stress as the harmful physical and emotional reaction that happens when a job's demands don't match a worker's abilities, resources or needs.
Stress isn't all bad. Think of an upside-down **U** curve:
- **Too little stress:** calm turns into boredom, and performance is low.
- **Moderate stress (eustress):** alert, energised, focused. Performance peaks.
- **Too much stress (distress):** anxiety, mistakes, exhaustion. Performance falls.

The skill is staying near the top of the curve: enough challenge to stretch people, with enough support to avoid burnout.$c$,
  $c$A ₹50-a-head quiz night at a Park Street café, three teams:
- One team is told it doesn't matter: they're bored and score **4/20**.
- One is told the top team wins dinner: they're excited and score **16/20**. That's **eustress**.
- One is told losers pay for everyone: they panic and score **7/20**. That's **distress**.$c$,
  $c$✅ Verified (Jan 2025)$c$,
  $c$The **Economic Survey 2024-25**, tabled on **31 January 2025**, said studies show health harms once working hours go beyond about **55–60 hours a week**.
- Citing Sapien Labs data, it said people sitting at a desk **12 or more hours a day** reported distressed mental well-being.
- It added that **workplace culture** matters as much as hours.

The Survey arrived during the "70-hour" and "90-hour week" debate. Its message was the inverted U: longer isn't always better.
*Sources: Business Today, ETV Bharat, The Federal, Jan 2025.*$c$,
  $c$How do you handle pressure?$c$,
  $c$"I actually work well with *some* pressure. A deadline makes me focused. That's the good kind of stress.
The key for me is noticing when it tips into the bad kind. When I'm making careless errors or losing sleep, I break the work into smaller pieces, cut what isn't essential, and ask for help early.
During our final exams plus a live consulting project, that's how I delivered both without burning out."$c$,
  $c$Saying "I never feel stress". It sounds fake, and it misses the point: moderate stress *helps* performance. Show that you recognise both kinds and manage the tipping point.$c$,
  $c$[{"kind":"concept","question":"What is eustress?","answer":"**Positive, moderate stress** that energises people and improves performance."},{"kind":"application","question":"A team with no deadlines and no targets keeps underperforming. Where are they on the stress curve?","answer":"**The low end**: too little challenge, so boredom and low performance."},{"kind":"case","question":"A consulting firm asks analysts to work 80-hour weeks for months. Output rose in the first fortnight, but now errors and resignations are climbing. Explain with the stress curve.","answer":"**They've crossed from eustress into distress.** The short push raised performance, but sustained overload sent them past the peak. Reset hours to a sustainable level, add support, and space out the crunch periods."}]$c$::jsonb,
  $c$Work Stress GD TB.pptx (NIOSH definition, eustress and distress curve)$c$, $c$draft$c$
),
(
  $c$ob-13$c$, $c$ob$c$, 13, $c$Where Stress Comes From and How It Shows$c$,
  $c$Stress comes from the environment, the organisation and personal life, and it shows up in the mind, the body and behaviour.$c$,
  $c$**Sources (stressors):**
- **Environmental:** the economy, politics, technology, security fears.
- **Organisational:**
  - **task demands:** workload, deadlines, little control;
  - **role demands:** role conflict and ambiguity;
  - **interpersonal demands:** poor relationships, harassment, low support.
- **Personal:** family problems, money worries, personality.

**Symptoms:**
- **Psychological:** anxiety, irritability, low job satisfaction.
- **Physiological:** headaches, blood pressure, poor sleep.
- **Behavioural:** absenteeism, quitting, mistakes, eating or smoking more.

Stressors **add up**. A small issue on top of a big load can tip someone over.$c$,
  $c$Ankita, a first-year MBA student:
- skips the **₹70** canteen thali to save money (**personal:** money);
- her group project has no clear leader (**role ambiguity**);
- three submissions fall due on one day (**task demands**).

By week three she has headaches, is snapping at friends and is missing classes: **physiological, psychological and behavioural** symptoms.$c$,
  $c$✅ Verified (Sept 2024)$c$,
  $c$In **September 2024**, the mother of **Anna Sebastian Perayil**, a 26-year-old chartered accountant at EY in Pune, wrote to EY India chairman Rajiv Memani. Anna had died in July 2024, about four months into the job. Her mother's letter linked the death to work pressure, describing a heavy workload and late-night tasks.
- The **Labour Ministry** said it would look into the working environment.
- EY said it was committed to employee well-being.

The case set off a national discussion about workload and role demands in high-pressure professional firms.
*Sources: Business Today, The Week, Tribune, Outlook, Sept 2024.*$c$,
  $c$What signs would tell you a team member is stressed, and what would you do?$c$,
  $c$"I'd look for changes, not just levels:
- **behavioural:** someone punctual starts coming late, or makes unusual errors;
- **psychological:** irritability or withdrawal;
- **physical:** fatigue, falling sick often.

Then I'd have a private, non-judgemental conversation and look for the stressor. Is it task load, an unclear role, a conflict, or something personal? Then I'd fix what's in my control, like redistributing work or clarifying roles, and point them to support, like counselling, for the rest."$c$,
  $c$Treating stress as only the individual's problem ("they should be tougher"). Many stressors, such as role ambiguity, overload and poor managers, are *organisational*, and only management can fix them.$c$,
  $c$[{"kind":"concept","question":"Name the three categories of stress symptoms.","answer":"**Psychological, physiological and behavioural.**"},{"kind":"application","question":"An employee reports to two bosses who give opposite instructions. What type of stressor is this?","answer":"**Role conflict**, an organisational role demand."},{"kind":"case","question":"After a merger, staff don't know their new reporting lines, and absenteeism has doubled. Identify the stressor and the symptom, and suggest one fix.","answer":"**Role ambiguity (stressor), shown by absenteeism (behavioural symptom).** Fix: quickly publish clear role charts and reporting lines, and hold team meetings to answer questions."}]$c$::jsonb,
  $c$Work Stress GD TB.pptx (environmental, organisational and personal factors; symptoms)$c$, $c$draft$c$
),
(
  $c$ob-14$c$, $c$ob$c$, 14, $c$Coping with Stress: Individual and Organisational$c$,
  $c$Individuals manage stress through habits like exercise and time management. Organisations manage it by removing stressors and supporting people.$c$,
  $c$**Individual strategies:**
- time management (prioritise, plan, say no);
- physical exercise;
- relaxation and meditation;
- **cognitive restructuring:** reframing "I'll fail" into "this is hard but doable";
- building social support.

**Organisational strategies:**
- better selection and placement;
- realistic, clear goals;
- job redesign that gives more control;
- involving employees in decisions;
- wellness programmes;
- counselling services;
- limits on overwork.

The best results come when **both** act together. A yoga class can't fix a toxic boss.$c$,
  $c$A hostel spends **₹40 per student per month** on a Sunday morning yoga session. That's an organisational wellness programme.
But it also fixes the real stressor: the Wi-Fi used to crash every night before deadlines.
Students who also use a simple weekly planner (individual time management) report the fewest all-nighters.$c$,
  $c$✅ Verified (Jun–Jul 2025)$c$,
  $c$In mid-**2025**, The Economic Times reported, and others picked up, that **Infosys** had begun sending alerts to employees who worked beyond **9 hours 15 minutes a day**, especially when working remotely.
The emails reportedly showed each person their hours and asked them to rest and recharge.
It drew notice because co-founder Narayana Murthy had earlier called for 70-hour weeks. Here was the company using an organisational coping tool: monitoring overwork and nudging people back to balance.
*Sources: HCAMag, People Matters, MIT Sloan ME, Onmanorama, Jun–Jul 2025.*$c$,
  $c$If you were HR head, how would you reduce burnout in a fast-growing company?$c$,
  $c$"I'd work on two levels.
**Organisationally:**
- fix the biggest stressors first: unclear roles and unrealistic targets;
- set limits on after-hours work;
- train managers to spot early signs;
- offer confidential counselling.

**For individuals:** time-management and resilience workshops, and protected leave.
Then I'd track it, with pulse surveys, attrition and sick days, so we know it's working, not just looking good."$c$,
  $c$Offering only individual fixes like meditation apps. Interviewers want to hear that the organisation removes stressors at the source.$c$,
  $c$[{"kind":"concept","question":"What is cognitive restructuring?","answer":"**Changing negative thought patterns** into more realistic ones, such as \"I'll fail\" into \"this is tough but I've handled tough before.\""},{"kind":"application","question":"A company redesigns jobs so employees can choose how to complete their tasks. Which stressor does this target?","answer":"**Low task control.** More control reduces stress."},{"kind":"case","question":"A bank offers free gym memberships, but stress surveys don't improve. Staff say targets change every week. What's missing?","answer":"**Organisational action on the real stressor.** Wellness perks help individuals, but changing targets create role ambiguity and overload. Set stable, realistic targets and involve staff in setting them."}]$c$::jsonb,
  $c$Work Stress GD TB.pptx (individual and organisational coping)$c$, $c$draft$c$
),
(
  $c$ob-15$c$, $c$ob$c$, 15, $c$Groups vs Teams, and the Types of Groups$c$,
  $c$A group is people who share information. A team is people whose combined effort produces more than they could alone.$c$,
  $c$| | Work group | Work team |
|---|---|---|
| Goal | Share information | Collective performance |
| Synergy | Neutral or negative | Positive (1+1 > 2) |
| Accountability | Individual | Individual *and* mutual |
| Skills | Random, varied | Complementary |

**Types of groups:**
- **Formal:** set up by the organisation.
  - **Command group:** a boss and direct reports.
  - **Task group:** people brought together for a job.
- **Informal:** formed naturally.
  - **Interest group:** joined to pursue a shared cause, such as better pay.
  - **Friendship group:** people who share traits or like each other.

People join groups for **security, status, self-esteem, affiliation, power and goal achievement**. Social identity theory adds that groups also give us a sense of who we are.$c$,
  $c$Six friends each put **₹200** into a shared WhatsApp "food fund". That's an informal **friendship group**: they share information about deals.
For the college fest, five students with different skills form a stall team: a cook, a designer, a cashier, a marketer and a manager. They turn **₹500** of ingredients into **₹3,000** in sales.
That's a **team**: complementary skills, a shared goal and synergy.$c$,
  $c$✅ Verified (Sept–Oct 2024)$c$,
  $c$From **9 September 2024**, about **1,450 workers** at **Samsung's plant near Chennai** went on strike for **37 days**. They wanted better pay and recognition of their new union, the Samsung India Workers Union.
An **interest group** of employees had formed outside the company's formal structure, around a shared goal. The Tamil Nadu government mediated, and the strike was called off in mid-October.
Later reports say the union was formally registered in **January 2026**.
*Sources: Deccan Herald, The Quint, Business & Human Rights Resource Centre, Oct 2024.*$c$,
  $c$What's the difference between a group and a team? Give an example of each from your life.$c$,
  $c$"A group shares information and each person is judged on their own work, like our class WhatsApp group, which shares notes.
A team has a common goal, complementary skills and mutual accountability, so the result is more than the sum of parts. In our marketing case competition, I did the research, a teammate built the model and another designed the deck. We were judged together, and we won.
That's synergy."$c$,
  $c$Calling every group a team. Putting people together doesn't create synergy. That needs a shared goal, complementary skills and mutual accountability.$c$,
  $c$[{"kind":"concept","question":"What is the key performance difference between a work group and a work team?","answer":"**Synergy.** A team's combined effort is greater than the sum of individual efforts."},{"kind":"application","question":"Employees from different departments join a \"Save Our Canteen\" campaign. What type of group is it?","answer":"**An informal interest group.**"},{"kind":"case","question":"A company renames every department a \"team\", but nothing changes and people still work alone. What's missing?","answer":"**The features of a real team**: a shared goal, complementary roles, mutual accountability and team-based rewards. Without these, it's still a group with a new name."}]$c$::jsonb,
  $c$Class Notes Unit 10.pptx; Work Stress GD TB.pptx (groups vs teams tables); OB Group Dynamics Team Building.pptx$c$, $c$draft$c$
),
(
  $c$ob-16$c$, $c$ob$c$, 16, $c$How Groups Develop: Tuckman and Punctuated Equilibrium$c$,
  $c$Groups typically go through forming, storming, norming, performing and adjourning. Teams with deadlines often change course sharply at the halfway point.$c$,
  $c$**Tuckman's five stages:**
1. **Forming:** polite, unsure. "What are we here for?"
2. **Storming:** conflict over roles, leadership and ideas.
3. **Norming:** roles and rules settle, and closeness grows.
4. **Performing:** energy goes into the task.
5. **Adjourning:** the group wraps up; temporary groups end.

**Punctuated equilibrium (Gersick)**, for temporary groups with deadlines:
- the first meeting sets the direction;
- a long phase of inertia follows;
- at about the **midpoint**, there's a sudden burst of change;
- then a second phase, and a rush at the end.

Groups don't always move neatly. They can slide back to storming when something changes.$c$,
  $c$Five MBA students get a 4-week marketing project with a **₹500** prize voucher each.
- Week 1: polite small talk (**forming**).
- Week 1 ends with a fight over who presents (**storming**).
- Week 2: they agree roles (**norming**).
- They do little until the midpoint, when they panic and change their whole approach (**punctuated equilibrium**).
- They do their best work in the last two weeks (**performing**), then celebrate and disband (**adjourning**).$c$,
  $c$✅ Verified (Nov 2024)$c$,
  $c$On **12 November 2024**, **Vistara merged into Air India**, creating a group with about **300 aircraft** and over **30,000 staff**.
- Around **7,000 Vistara employees** were assessed and fitted into Air India roles.
- For a time, cabin-crew rosters stayed separate.
- Reports flagged differences in work culture and pilot retirement ages.

Merging two crews is Tuckman in real life. A new combined group must form and work through storming over roles, rules and culture before it can perform as one airline.
*Sources: Tata Group release; Business Standard, People Matters, Outlook Business, Nov 2024.*$c$,
  $c$Tell me about a time your team had conflict. How did it get resolved?$c$,
  $c$"In our consulting project, two of us disagreed sharply on the recommendation in the first week. That was the storming stage.
Instead of avoiding it, we set a rule: decisions backed by data, and each side gets 10 minutes to present. That norm settled the roles. By week three we were performing, and the client adopted our plan.
I learned that early conflict is normal. The job is to turn it into clear norms quickly."$c$,
  $c$Thinking storming is a failure. It's a normal stage. Teams that skip open disagreement often hide problems that come back later.$c$,
  $c$[{"kind":"concept","question":"In which of Tuckman's stages do roles and rules become settled?","answer":"**Norming.**"},{"kind":"application","question":"A 6-week task force does little for 3 weeks, then suddenly rethinks its whole approach. Which model explains this?","answer":"**The punctuated-equilibrium model**: a midpoint transition after a phase of inertia."},{"kind":"case","question":"A high-performing team gets a new manager and three new members, and arguments start again. What's happening, and what should the manager do?","answer":"**The team has slipped back to forming and storming.** Membership changed, so it must re-form. Hold a reset meeting to clarify the goal, roles and norms, and let disagreements surface openly so the team can re-norm quickly."}]$c$::jsonb,
  $c$Class Notes Unit 10.pptx (Tuckman); OB Group Dynamics Team Building.pptx (five-stage and punctuated-equilibrium models)$c$, $c$draft$c$
),
(
  $c$ob-17$c$, $c$ob$c$, 17, $c$Group Properties: Roles, Norms, Status, Size and Cohesiveness$c$,
  $c$Five properties shape how any group behaves: roles, norms, status, size and cohesiveness.$c$,
  $c$- **Roles:** the behaviour expected from a position. **Role conflict** happens when expectations clash.
- **Norms:** the group's unwritten rules, about performance, appearance, social life and resources. Breaking them can lead to **deviant behaviour** or punishment.
- **Status:** social rank. It can be **ascribed** (given, such as age), **achieved** (earned) or a **master** status that overrides the rest.
- **Size:** big groups bring more ideas, but also **social loafing**: individuals put in less effort when their contribution can't be seen.
- **Cohesiveness:** how strongly members are attracted to the group.

**The key insight:**
| | High performance norms | Low performance norms |
|---|---|---|
| **High cohesion** | Very high productivity | Very *low* productivity |
| **Low cohesion** | Moderate productivity | Low productivity |

A close-knit group that values slacking is the worst combination.$c$,
  $c$Eight hostel friends get a **₹200** pizza treat for every room that passes the hostel inspection.
- When all eight clean together, only three actually work: **social loafing**.
- When they split into pairs, each with its own room, every pair cleans. Each person's effort is now visible.
- When they make "nobody sleeps till rooms pass" a group rule, with **high cohesion** and a **high norm**, all four rooms pass every week.$c$,
  $c$✅ Verified (Nov 2025)$c$,
  $c$On **2 November 2025**, the Indian women's cricket team beat South Africa by **52 runs** in Navi Mumbai to win their **first ODI World Cup**.
- Shafali Verma (87) and Deepti Sharma (fifty runs and five wickets) led the final.
- Captain **Harmanpreet Kaur** and coach **Amol Muzumdar** were credited with building the side.

India became only the fourth team to win the title. A tight, cohesive group with demanding performance norms is exactly the top-left box of the grid.
*Sources: DTNext, The Hitavada, Cricket.com, IANS, Nov 2025.*$c$,
  $c$How would you prevent social loafing in a group project?$c$,
  $c$"Social loafing happens when individual effort is invisible, so I'd make it visible:
- break the work into clear individual pieces with named owners;
- keep the team small enough that everyone matters;
- do quick peer check-ins;
- assess both individual and team results.

I'd also build a norm early, like 'we don't present anything we haven't all reviewed', so the group itself keeps standards high."$c$,
  $c$Assuming high cohesion is always good. Cohesion amplifies whatever the norms are. A close group with low standards will defend its low output together.$c$,
  $c$[{"kind":"concept","question":"What is social loafing?","answer":"**The tendency to put in less effort when working in a group than alone**, especially when individual contributions can't be identified."},{"kind":"application","question":"A senior employee who is a long-time favourite gets every comfortable assignment. Which status type is at work?","answer":"**Ascribed status** (seniority) or master status, not achieved status."},{"kind":"case","question":"A sales team is very close: they lunch together and defend each other. But they collectively agree to \"never exceed target, or management will raise it.\" Diagnose it and suggest a fix.","answer":"**High cohesion with low performance norms gives very low productivity.** Fix: change the norms by linking team rewards to beating target, ensuring targets aren't simply raised as punishment, and involving the team in setting goals."}]$c$::jsonb,
  $c$OB Group Dynamics Team Building.pptx (group properties); Class Notes Unit 10.pptx$c$, $c$draft$c$
),
(
  $c$ob-18$c$, $c$ob$c$, 18, $c$Group Decisions: Groupthink, Groupshift and Better Techniques$c$,
  $c$Groups can decide better than individuals, but they can also fall into groupthink (no one disagrees) or groupshift (they become more extreme together).$c$,
  $c$**Groups vs individuals:**
- **Groups** bring more information, more ideas and more acceptance of the decision.
- **Individuals** are faster and have clearer accountability.

**Two group traps:**
- **Groupthink:** the pressure to agree silences doubts. Warning signs are rationalising warnings away, pressure on dissenters, self-censorship and an illusion that everyone agrees.
- **Groupshift (group polarisation):** after discussion, the group's view becomes more extreme than the members' starting views, either riskier or more cautious.

**Better techniques:**
- **Brainstorming:** generate ideas freely, with no criticism.
- **Nominal group technique:** members write ideas silently, present them one by one, discuss, then vote privately. It is great for avoiding domination by one loud voice.$c$,
  $c$A class committee has to decide how to spend the **₹300 per student** class fund.
The class rep says "Let's do an expensive trip!" and nobody wants to look cheap, so everyone agrees. That's **groupthink**. In discussion, the trip grows from Digha to Darjeeling to Goa. That's **groupshift** towards risk.
With the **nominal group technique**, each student writes an idea silently first, then everyone votes privately. The class picks a farewell dinner, which most actually wanted.$c$,
  $c$✅ Verified (Feb 2024)$c$,
  $c$In **February 2024**, after a door plug blew off a Boeing 737 MAX 9 in flight in January, an **FAA-appointed expert panel** reported on Boeing's safety culture.
- It found employees **hesitant to raise safety concerns for fear of retaliation**.
- It found a **"disconnect"** between what senior management said about safety and what front-line staff experienced.
- It made **27 findings and 53 recommendations**.

When people stay silent to avoid conflict, an organisation loses the dissent that catches errors. That is the core danger of groupthink.
*Sources: FAA expert panel report as reported by ABC/6abc, AirlineGeeks, Feb–Apr 2024.*$c$,
  $c$How would you avoid groupthink in your team?$c$,
  $c$"Groupthink grows when disagreeing feels unsafe, so I'd make dissent part of the process:
- the leader shares their view *last*;
- one person is assigned to be the devil's advocate;
- for big decisions, everyone writes their view before discussion, as in the nominal group technique;
- outside experts review the plan.

And I'd thank people publicly when they raise concerns, so speaking up becomes a norm."$c$,
  $c$Thinking groupthink means a group that's "too friendly". It's about the *suppression of dissent*. It happens in tense, hierarchical groups too, often more so.$c$,
  $c$[{"kind":"concept","question":"What is groupshift?","answer":"**The tendency for a group's position to become more extreme than members' initial positions** after discussion, either riskier or more cautious."},{"kind":"application","question":"A team wants many ideas fast, with no criticism. Which technique fits?","answer":"**Brainstorming.**"},{"kind":"case","question":"In board meetings, the founder speaks first and directors always agree. Two failed acquisitions later, nobody had raised the risks. Diagnose it and suggest two fixes.","answer":"**Groupthink**: self-censorship and pressure to conform. Fixes: the founder speaks last; appoint a devil's advocate; collect written anonymous views before discussion (nominal group technique); bring in independent reviewers."}]$c$::jsonb,
  $c$OB Group Dynamics Team Building.pptx (group decision making); Robbins & Judge 15e, ch. 9$c$, $c$draft$c$
),
(
  $c$ob-19$c$, $c$ob$c$, 19, $c$Four Types of Teams$c$,
  $c$Teams come in four main types: problem-solving, self-managed, cross-functional and virtual. Each suits a different job.$c$,
  $c$| Type | Who | Does what |
|---|---|---|
| **Problem-solving** | 5–12 people from the *same* department | Meet a few hours a week to suggest improvements (but can't act alone) |
| **Self-managed** | 10–15 people | Plan, schedule and control their own work; take on supervisor duties |
| **Cross-functional** | Same level, *different* departments | Combine expertise for complex projects |
| **Virtual** | Any of the above, spread out | Work mainly through technology across places and time zones |

Each type has a typical risk:
- **Cross-functional** teams take time to build trust across specialties.
- **Virtual** teams can lack social bonds and clear communication.
- **Self-managed** teams need mature members.$c$,
  $c$A Kolkata biryani chain:
- **Problem-solving:** six kitchen staff meet weekly to cut waste and save **₹250** per batch.
- **Self-managed:** a night-shift crew sets its own schedule.
- **Cross-functional:** chef, marketer and finance head design a new **₹149** combo.
- **Virtual:** the online-delivery team works with an app partner's Bengaluru staff over video calls.$c$,
  $c$✅ Verified (Jan 2025)$c$,
  $c$On **16 January 2025**, ISRO docked two satellites in orbit in its **SpaDeX** mission. India became the **fourth country** to do this, after the US, Russia and China.
- ISRO says the spacecraft were designed by the **U R Rao Satellite Centre** with support from **VSSC, LPSC, SAC, IISU and LEOS**: centres with different specialties.
- Earlier attempts were postponed to validate the system on the ground.

A mission like this needs a **cross-functional team**: specialists from several centres working as one.
*Sources: ISRO SpaDeX mission page; Gulf News, Deccan Herald, Jan 2025.*$c$,
  $c$What challenges would you expect leading a cross-functional team?$c$,
  $c$"Three challenges:
1. **Different languages:** finance talks margins, design talks experience.
2. **Divided loyalty:** members still report to their own department heads.
3. **Slow trust-building**, because they haven't worked together.

I'd handle these with a clear shared goal and success metric from day one, a short kick-off where each function explains its constraints, and agreed decision rules. I'd also get department heads to protect members' time for the project."$c$,
  $c$Mixing up problem-solving and self-managed teams. Problem-solving teams only *suggest*; management decides. Self-managed teams actually *run* their own work.$c$,
  $c$[{"kind":"concept","question":"Which team type takes over many of a supervisor's duties?","answer":"**Self-managed teams.**"},{"kind":"application","question":"A bank brings together people from IT, compliance, marketing and branches to launch a UPI feature. Which team type?","answer":"**Cross-functional.**"},{"kind":"case","question":"A remote team spread across Kolkata, Pune and Singapore keeps missing handovers, and members feel like strangers. What type is it, and what would you fix?","answer":"**A virtual team lacking social bonds and clear processes.** Fixes: regular video check-ins, clear handover templates and owners, overlapping working hours for key tasks, and an occasional in-person meet-up to build trust."}]$c$::jsonb,
  $c$OB Group Dynamics Team Building.pptx (four types of teams); Work Stress GD TB.pptx$c$, $c$draft$c$
),
(
  $c$ob-20$c$, $c$ob$c$, 20, $c$What Makes Teams Effective$c$,
  $c$Effective teams need the right context (resources, leadership, trust, rewards), the right composition (skills, roles, size), and the right processes (shared purpose, specific goals, belief in success).$c$,
  $c$Robbins's **team effectiveness model** has three groups of factors.

**1. Context:**
- adequate resources;
- good leadership and structure;
- a climate of trust;
- evaluation and rewards that recognise *team* contribution.

**2. Composition:**
- abilities and personalities;
- clear role allocation;
- diversity;
- the right **size**. Smaller is usually better, often fewer than 10.
- members who actually *want* teamwork.

**3. Process:**
- a common purpose;
- **specific goals**;
- **team efficacy**: belief that the team can succeed;
- shared mental models;
- moderate *task* conflict, but little *relationship* conflict;
- low social loafing.

The class notes add **psychological safety**: people can speak up without fear. They also suggest celebrating wins.$c$,
  $c$Two college fest teams each get **₹300 per member** to run a stall.
- **Team A:** six friends with no roles and no target. They argue, and sell **₹1,500**.
- **Team B:** five members with clear roles (cook, cashier, two sellers, one social-media lead), a target of "₹5,000 by 8 pm", a captain who listens and a pizza promised if they hit it. They sell **₹6,200**.

Same money. Different context, composition and process.$c$,
  $c$✅ Verified (Jun 2024)$c$,
  $c$On **29 June 2024**, India beat South Africa by **7 runs** in Barbados to win the **T20 World Cup**, their first ICC trophy in 11 years. Both teams were unbeaten going into the final.
- Captain **Rohit Sharma** said the team had worked on giving players **role clarity**.
- Coach **Rahul Dravid**, in his last match, praised the team's fight.
- R. Ashwin praised Dravid for turning down a "#DoItForDravid" campaign, saying a team sport shouldn't build narratives around one person.

That covers role allocation (composition), leadership and trust (context) and common purpose (process).
*Sources: Al Jazeera, ESPNcricinfo, Gulf News, Jun–Jul 2024.*$c$,
  $c$What makes a team effective? Use an example.$c$,
  $c$"I think of it in three layers.
- **Context:** does the team have resources, a leader people trust, and rewards for team results?
- **Composition:** the right skills, clear roles and a small enough size.
- **Process:** a shared purpose, specific goals and a belief that we can win.

India's 2024 T20 World Cup win shows it: clear roles for players, a captain and coach the team trusted, and a common purpose bigger than any individual. In my own case-competition team, setting a specific target and splitting roles early is what got us to the national finals."$c$,
  $c$Saying "conflict is bad for teams". Moderate *task* conflict (debating ideas) improves decisions. It's *relationship* conflict (personal clashes) that hurts.$c$,
  $c$[{"kind":"concept","question":"What are the three broad groups of factors in the team effectiveness model?","answer":"**Context, composition and process.**"},{"kind":"application","question":"A talented team fails because members are rewarded only for individual targets. Which factor is broken?","answer":"**Context**: the performance evaluation and reward system doesn't recognise team contribution."},{"kind":"case","question":"A 14-person product team has bright members, but meetings drag, two people do most of the work, and no one is sure what \"success\" means. Diagnose it using the model.","answer":"**Composition and process problems.** The team is too big (fewer than 10 is better), which invites social loafing. There is no specific goal or common purpose. Fix: split into smaller sub-teams with clear roles, set a measurable target, and track individual contributions."}]$c$::jsonb,
  $c$OB Group Dynamics Team Building.pptx (team effectiveness model); Class Notes Unit 10.pptx (team-building strategies)$c$, $c$draft$c$
),
(
  $c$law-01$c$, $c$law$c$, 1, $c$Agreement vs Contract$c$,
  $c$An agreement is a set of promises. It becomes a contract only when the law will enforce it.$c$,
  $c$- **Offer (proposal), Sec 2(a):** one person shows willingness to do, or not do, something.
- **Acceptance, Sec 2(b):** the other person agrees. The offer is now a **promise**.
- **Agreement, Sec 2(e):** promises that are consideration for each other. Offer + acceptance = agreement.
- **Contract, Sec 2(h):** an agreement **enforceable by law**.

So: **contract = agreement + enforceability.** All contracts are agreements, but not all agreements are contracts.

A promise to meet a friend for lunch is an agreement, but no court will enforce it. **Balfour v Balfour (1919)** held that domestic and social promises usually lack the **intention to create legal relations**.$c$,
  $c$- You tell your roommate "I'll pay you ₹200 if you clean the room this week." That's a social agreement, and neither of you expects to go to court.
- You sign up with a cleaning service at ₹1,500 a month, with written terms. That's a contract, and either side can enforce it.

Same work, different intention, so different legal results.$c$,
  $c$✅ Verified (Mar 2024)$c$,
  $c$In **2024**, **Elon Musk** sued OpenAI, claiming it broke a **"founding agreement"** to stay a non-profit that develops AI for humanity.
OpenAI replied in court papers that there was **no founding agreement, or any agreement at all**, with Musk. Legal experts pointed out that no formal written contract had been signed by all parties.
Shared intentions and emails may show an *understanding*. Whether they form an *enforceable contract* is a separate question, and that difference is this whole card.
*Sources: CNBC, NBC, Mar 2024.*$c$,
  $c$Is every agreement a contract?$c$,
  $c$"No. A contract is an agreement the law will enforce. Offer plus acceptance gives an agreement. For it to become a contract, it also needs:
- an intention to create legal relations;
- lawful consideration and object;
- parties with capacity;
- free consent.

A social promise, like inviting a friend to dinner, is an agreement but not a contract, as Balfour v Balfour shows. In business I'd never rely on an understanding. I'd get the key terms in writing."$c$,
  $c$Saying "a written document makes it a contract". Writing helps prove a contract, but most contracts can be oral. What matters is enforceability, not paper.$c$,
  $c$[{"kind":"concept","question":"Under Section 2(h), what is a contract?","answer":"**An agreement enforceable by law.**"},{"kind":"application","question":"A father promises his daughter ₹5,000 for topping her class, then doesn't pay. Can she sue?","answer":"**No.** It's a domestic promise with no intention to create legal relations (the Balfour principle)."},{"kind":"case","question":"Two founders agree over WhatsApp to split profits 50:50, but sign nothing. Later one denies it. What must the other prove?","answer":"**That it was an enforceable contract, not just an understanding.** That means a clear offer and acceptance, an intention to be legally bound, and consideration. The messages can be evidence, but vague or social wording weakens the claim."}]$c$::jsonb,
  $c$Indian Contract Act.ppt slides 3–5, 8 (Balfour v Balfour)$c$, $c$draft$c$
),
(
  $c$law-02$c$, $c$law$c$, 2, $c$The Essentials of a Valid Contract (Section 10)$c$,
  $c$A valid contract needs a proper offer and acceptance, an intention to be bound, capable parties, free consent, lawful consideration and object, and certainty.$c$,
  $c$The checklist:
1. **Offer and acceptance**, properly communicated.
2. **Intention to create legal relations.**
3. **Consensus ad idem (Sec 13):** both parties agree on the same thing in the same sense.
4. **Lawful consideration:** something in return.
5. **Capacity:** major, sound mind, not disqualified by law.
6. **Free consent:** no coercion, undue influence, fraud, misrepresentation or mistake.
7. **Lawful object:** not illegal, immoral or against public policy.
8. **Certainty and possibility of performance.**
9. **Writing or registration**, only where a specific law demands it, such as selling land.

If even one is missing, the agreement may be void, voidable or unenforceable (see Card L9).$c$,
  $c$Riya rents a ₹6,000-a-month PG room near Salt Lake.
- **Offer and acceptance:** the owner offers, she accepts.
- **Intention:** both expect to be bound.
- **Consideration:** ₹6,000 for the room.
- **Capacity:** she's 21.
- **Free consent:** nobody forced her.
- **Lawful object:** renting a room is legal.
- **Certainty:** room number, rent and term are all clear.

All ticked, so it's a valid contract.$c$,
  $c$✅ Verified (Dec 2024)$c$,
  $c$On **20 December 2024**, the Supreme Court set aside a 2008 NCDRC ruling that had treated **credit-card interest above 30% a year** as an unfair trade practice.
- The Court said the NCDRC could not **rewrite contract terms** that banks and cardholders had **agreed** to.
- It found no misrepresentation by the banks.
- It said regulating interest rates is the RBI's job.

The reasoning rests on two essentials: **free consent** and a **lawful object**. When terms are freely agreed and lawful, courts generally enforce them.
*Sources: LiveLaw, Bar & Bench, Business Standard, Dec 2024.*$c$,
  $c$What makes a contract valid?$c$,
  $c$"Section 10 says an agreement is a contract if it's made by the free consent of competent parties, for a lawful consideration and lawful object, and isn't declared void.
Add offer and acceptance, an intention to be bound, and certainty of terms. When I review a vendor agreement, I run through exactly this list:
- Who's signing, and do they have authority?
- Is anything one-sided enough to suggest pressure?
- Are the price and deliverables clear?"$c$,
  $c$Forgetting that consideration must be **lawful**, not just present. Paying ₹50,000 to get someone a government job is consideration, but it's unlawful, so the agreement is void.$c$,
  $c$[{"kind":"concept","question":"What does \"consensus ad idem\" mean?","answer":"**A meeting of minds**: both parties agree on the same thing in the same sense (Sec 13)."},{"kind":"application","question":"A 16-year-old signs a ₹30,000 phone EMI agreement. Which essential is missing?","answer":"**Capacity.** A minor can't contract, so the agreement is void."},{"kind":"case","question":"A supplier agrees to sell \"good-quality cement at a fair price\" with no quantity or price stated. Is it a valid contract?","answer":"**Probably not.** It fails the certainty requirement, because quality, quantity and price are vague (Sec 29: agreements void for uncertainty). Fix it by stating the grade, quantity, price and delivery date."}]$c$::jsonb,
  $c$Indian Contract Act.ppt slide 6; Indian Contract Act Sec 10, 13, 29$c$, $c$draft$c$
),
(
  $c$law-03$c$, $c$law$c$, 3, $c$Offers and Their Types (Carlill's Smoke Ball)$c$,
  $c$An offer is a definite willingness to be bound. It can be made to one person or to the whole world.$c$,
  $c$- **Express** (in words) or **implied** (by conduct). A bus running on its route is an implied offer to carry passengers.
- **Specific offer:** made to a particular person; only they can accept.
- **General offer:** made to the public. Anyone who performs the conditions accepts it.
- **Cross offers:** identical offers that cross in the post. There's no contract until one is accepted.
- **Counter offer:** a reply that changes the terms. It **kills** the original offer and becomes a new one.
- **Standing offer:** open for a period, such as a tender to supply goods as and when ordered.

**Carlill v Carbolic Smoke Ball Co (1893):** the company promised £100 to anyone who caught flu after using its smoke ball as directed. Mrs Carlill used it, caught flu and claimed. The court held the ad was a **general offer** accepted **by performance**, so there was no need to tell the company in advance.$c$,
  $c$A lost-dog poster in Ballygunge says "**₹2,000** to whoever returns Bruno."
- That's a **general offer**. Anyone who finds and returns Bruno accepts it by doing so, and is entitled to the ₹2,000.
- If the owner had told only his neighbour "I'll pay *you* ₹2,000 to find Bruno", that's a **specific offer**, and only the neighbour could accept.$c$,
  $c$✅ Verified (Nov 2024)$c$,
  $c$In **October–November 2024**, Elon Musk's **America PAC** promised **$1 million a day** to registered voters in swing states who signed its petition. It handed out about $16–17 million.
- Philadelphia's District Attorney sued, calling it an illegal lottery.
- In court on **4 November**, the PAC's lawyer said winners were **"not chosen by chance"**; they were picked as spokespeople and signed contracts.
- The judge allowed it to continue.

A public promise of money is a classic general offer, as in Carlill. Its exact terms (random draw, or selected spokesperson?) decide what people actually accepted.
*Sources: ABC News, Breaking News IE, Nov 2024.*$c$,
  $c$Is a cashback advertisement legally binding?$c$,
  $c$"It can be. Carlill v Carbolic Smoke Ball says a clear public promise with definite terms is a general offer, and anyone who meets the conditions accepts it by performance.
So if a brand advertises '₹500 cashback on every purchase above ₹5,000 this week', a buyer who meets that can enforce it. That's why marketing teams must write offer terms carefully, with clear conditions, limits and end dates."$c$,
  $c$Thinking a **counter offer** keeps the first offer alive. It doesn't. "I'll take it for ₹900 instead of ₹1,000" rejects the original offer, and you can't go back and accept ₹1,000 unless the seller agrees again.$c$,
  $c$[{"kind":"concept","question":"Which case established that an advertisement can be a general offer accepted by performance?","answer":"**Carlill v Carbolic Smoke Ball Co (1893).**"},{"kind":"application","question":"A seller offers a bike for ₹40,000; the buyer replies \"₹35,000, final.\" What has the buyer done?","answer":"**Made a counter offer**, which rejects the original ₹40,000 offer."},{"kind":"case","question":"A coaching centre advertises \"₹10,000 to any student who scores 99 percentile after our course\", then refuses to pay a student who did. What's the student's argument?","answer":"**It was a general offer, accepted by performance.** The student met the conditions, so a contract was formed (Carlill). The centre is bound unless its terms clearly said otherwise."}]$c$::jsonb,
  $c$Indian Contract Act.ppt slides 7, 23–27 (Carlill v Carbolic Smoke Ball)$c$, $c$draft$c$
),
(
  $c$law-04$c$, $c$law$c$, 4, $c$Offer vs Invitation to Offer$c$,
  $c$A price list, an ad, an auction notice or a quote is usually an **invitation** to make offers, not an offer itself.$c$,
  $c$An **offer** shows final willingness to be bound if accepted.
An **invitation to offer (invitation to treat)** only starts negotiations. *You* make the offer; the seller decides whether to accept.
Examples: goods on a shop shelf with price tags, catalogues, auction ads, tender notices and company prospectuses.

**Cases from the slides:**
- **Harvey v Facey (1893):** "Lowest price for Bumper Hall Pen £900" was just information about price, not an offer to sell. There was no contract.
- **Harris v Nickerson (1873):** an auction ad is an invitation, so a buyer who travelled to an auction that was then cancelled couldn't recover his expenses.
- **Taylor v Portington (1855):** terms like "handsomely decorated" are too vague. An offer must be **definite** (Sec 29).$c$,
  $c$- A Gariahat shop tags a kurta at **₹899**. You take it to the counter and offer ₹899. The cashier accepts by billing it.
- If the tag was wrong and the shop refuses, generally there's no breach. The tag invited your offer; it wasn't a promise to sell.
- "Lowest price for my scooter is ₹45,000" is only information. "I offer to sell you my scooter for ₹45,000" is an offer.$c$,
  $c$✅ Verified (Oct 2024)$c$,
  $c$In **October 2024**, **Hyundai Motor India** ran India's **biggest IPO** till then, about **₹27,870 crore**. Bids came in for about **2.37 times** the shares on offer.
The prospectus is an **invitation to offer**. Each investor's application is the **offer**, and allotment is the company's **acceptance**. That's why, when an issue is oversubscribed, many bidders get fewer shares or none, and no one has a breach claim.
*Sources: Business Standard, Angel One, IANS, Oct 2024.*$c$,
  $c$An e-commerce site lists a ₹70,000 phone at ₹7,000 by mistake. Must it deliver?$c$,
  $c$"Usually a product listing is an invitation to offer. My order is the offer, and the site accepts when it confirms. So if it cancels before confirming, there's usually no contract.
Once it has confirmed the order, though, Indian consumer forums have held platforms liable for cancelling. The answer depends on the timing of acceptance and the site's terms.
As a business, I'd make sure our terms say clearly when an order is accepted."$c$,
  $c$Calling every price display an offer. The law treats most displays and ads as invitations, so shops aren't forced to sell to everyone or honour every typo.$c$,
  $c$[{"kind":"concept","question":"In Harvey v Facey, why was there no contract?","answer":"**A statement of the lowest price is not an offer to sell.** It's just information."},{"kind":"application","question":"A company invites tenders for supplying uniforms. Is the tender notice an offer?","answer":"**No, it's an invitation to offer.** Each tender submitted is an offer, which the company may accept or reject."},{"kind":"case","question":"An auction house advertises a vintage car, then withdraws it on the day. A collector who flew in from Delhi sues for the ₹18,000 airfare. Will he win?","answer":"**Unlikely.** An auction advertisement is an invitation to offer (Harris v Nickerson). There's no offer, so no contract and no claim for expenses."}]$c$::jsonb,
  $c$Cases.pptx (Harvey v Facey, Harris v Nickerson, Taylor v Portington); Indian Contract Act.ppt slide 28$c$, $c$draft$c$
),
(
  $c$law-05$c$, $c$law$c$, 5, $c$Rules of Acceptance$c$,
  $c$Acceptance must be absolute, communicated, in the right mode and on time. You can't accept an offer you don't know about, and silence isn't acceptance.$c$,
  $c$1. **Absolute and unconditional:** any change is a counter offer.
2. **Communicated** to the offeror. A mental decision isn't enough.
3. **In the mode the offeror prescribed**, or a reasonable one if none was named.
4. **Within the time allowed**, or within a reasonable time.
5. **By the right person:** anyone for a general offer, only the named person for a specific one.
6. **With knowledge of the offer.** In **Fitch v Snedaker (1868)**, people who gave information about a crime *before* knowing of a reward couldn't claim it.
7. **Silence is not acceptance.** "If I don't hear back, the deal's on" doesn't bind the other side.$c$,
  $c$A gym emails: "Your **₹999** monthly plan will auto-renew at **₹1,499** unless you reply."
You ignore it. Under contract principles, your **silence** isn't acceptance of the higher price.
If you reply "OK, renew at ₹1,499", you've accepted. If you reply "Renew, but at ₹999", that's a counter offer.$c$,
  $c$✅ Verified (Jun 2025)$c$,
  $c$On **5 June 2025**, India's **Central Consumer Protection Authority** asked e-commerce and other platforms to **self-audit for dark patterns within three months** and remove them. The advisory went to over 50 platforms, including streaming, food delivery and fintech apps.
Dark patterns include **subscription traps** and free trials that silently turn into paid plans. The idea is simple: real agreement needs a clear, informed "yes", not inertia or pre-ticked boxes.
*Sources: Outlook Money, Storyboard18, Bar & Bench, Jun 2025.*$c$,
  $c$Can a company treat a customer's silence as acceptance?$c$,
  $c$"No. Acceptance has to be communicated, and silence generally isn't acceptance. The offeror can't impose it by saying 'if you don't reply, you've agreed.'
That's why auto-renewals and price increases need clear consent, and India's dark-pattern rules target subscription traps and pre-ticked boxes. As a product manager I'd design for an explicit 'yes', with easy cancellation. It's both legal hygiene and good for trust."$c$,
  $c$Mixing up **conditional acceptance** with acceptance. "I accept, provided you deliver by Friday" adds a new term, so it's a counter offer, not acceptance.$c$,
  $c$[{"kind":"concept","question":"What did Fitch v Snedaker decide?","answer":"**You can't accept an offer you don't know about.** Acting in ignorance of a reward offer isn't acceptance."},{"kind":"application","question":"A seller writes: \"If I don't hear from you by Monday, I'll assume you're buying my laptop for ₹35,000.\" The buyer says nothing. Is there a contract?","answer":"**No.** Silence is not acceptance."},{"kind":"case","question":"A company offers a job \"accept by email by 5 pm Friday\". The candidate decides yes on Friday but emails on Monday. Is there a contract?","answer":"**No.** Acceptance must be communicated, in the prescribed mode, within the time allowed. A mental decision on Friday doesn't count. Monday's email is, at best, a fresh offer the company may accept."}]$c$::jsonb,
  $c$Indian Contract Act.ppt slides 30–32; Cases.pptx (Fitch v Snedaker)$c$, $c$draft$c$
),
(
  $c$law-06$c$, $c$law$c$, 6, $c$Consideration and Privity$c$,
  $c$Consideration is the "something in return" for a promise. In India it can come from the promisee **or any other person**.$c$,
  $c$**Sec 2(d):** when, at the promisor's desire, the promisee or *any other person* does, or promises to do, something, that is the consideration.

Rules:
- It must move **at the promisor's desire** (Durga Prasad v Baldeo).
- It may move from the promisee **or a third party**. In **Chinnaya v Ramayya (1882)**, a mother gifted property to her daughter on condition that she pay the mother's sister an annual sum. The sister could sue, even though she gave nothing herself.
- It can be **past, present or future**.
- It **need not be adequate**, but it must be real and lawful.

**No consideration, no contract.** The exceptions under Sec 25:
- written and registered promises out of natural love and affection;
- compensation for past voluntary services;
- a written promise to pay a time-barred debt;
- completed gifts.

**Privity:** only parties to a contract can sue on it. Exceptions include trusts, family arrangements, agents and acknowledgement.$c$,
  $c$- You sell your old cycle to a classmate for **₹1,500**, though it's worth ₹4,000. The contract is still valid; consideration need not be adequate, as long as you agreed freely.
- Your uncle promises in a registered letter to pay your **₹60,000** fees out of love. That's enforceable under the love-and-affection exception.
- An oral "I'll pay your fees" with nothing in return isn't enforceable.$c$,
  $c$✅ Verified (Jan 2025)$c$,
  $c$In **January 2025**, in *Urmila Dixit v Sunil Sharan Dixit*, the Supreme Court **quashed a gift deed** a mother had made to her son.
- The son had signed a promise to **care for her for life**, with the gift linked to that promise.
- He failed to do so. The Court held that tribunals under the Senior Citizens Act can order possession returned.
- It ordered possession restored to the mother by 28 February 2025.

Like Chinnaya, the transfer came with a condition, and the person who failed to honour it lost the benefit.
*Sources: Bar & Bench, Verdictum, Moneylife, Jan 2025.*$c$,
  $c$Is a contract valid if the price is far below market value?$c$,
  $c$"Yes, if consent was free. Consideration must be real and lawful, but it need not be adequate, so courts don't judge whether you got a good bargain.
But if the price is shockingly low, the court may ask whether consent was really free, for example whether there was undue influence or fraud. So inadequacy isn't fatal by itself, but it can be evidence of a consent problem."$c$,
  $c$Applying the English rule that consideration must come *from the promisee*. Indian law (Sec 2(d)) allows it to come from **any other person**. That's exactly why Chinnaya won.$c$,
  $c$[{"kind":"concept","question":"Does consideration under Indian law have to move from the promisee?","answer":"**No.** It may move from the promisee or any other person (Sec 2(d), Chinnaya v Ramayya)."},{"kind":"application","question":"A sells his ₹2 lakh car to B for ₹50,000, willingly. Is the contract void for inadequate consideration?","answer":"**No.** Consideration need not be adequate if consent is free."},{"kind":"case","question":"Your neighbour promised you ₹10,000 \"because you're like my son\", but signed nothing. Later he refuses. Can you sue?","answer":"**No.** There's no consideration, and the love-and-affection exception needs the promise to be in writing, registered, and between near relatives. An oral promise between neighbours doesn't qualify."}]$c$::jsonb,
  $c$Indian Contract Act.ppt slides 34–38; Cases.pptx (Chinnaya v Ramayya)$c$, $c$draft$c$
),
(
  $c$law-07$c$, $c$law$c$, 7, $c$Capacity: Minors and Unsound Minds$c$,
  $c$Only a major of sound mind, not disqualified by law, can contract. An agreement with a minor is void from the start.$c$,
  $c$**Who can contract (Sec 11):** a person who is **18 or over** (the Indian Majority Act), of **sound mind**, and **not disqualified** by law (for example an alien enemy or an insolvent).

**Minors:**
- An agreement with a minor is **void ab initio**. In **Mohori Bibee v Dharmodas Ghose (1903)**, a minor's mortgage was void, and he didn't have to repay the loan.
- A minor **can't ratify** it on turning 18.
- **No estoppel:** a minor who lied about his age can still plead minority.
- A minor **can be a promisee or beneficiary**. For example, he can receive a gift or be admitted to partnership benefits.
- **Necessaries** (food, clothes, education) supplied to a minor: the supplier can recover a reasonable price from the minor's **property**, not from the minor personally (Sec 68).

**Unsound mind (Sec 12):** a person can contract when they're able to understand it and judge its effect on their interests. That covers someone usually sound when sound, and someone usually unsound in a lucid interval. Drunkenness can count as unsound mind at that moment.$c$,
  $c$A 17-year-old buys a **₹25,000** gaming laptop on a pay-later app and stops paying. The app generally can't enforce the agreement against him, because it's void.
If a shop had sold him **₹800** of school uniforms on credit, it could recover a reasonable price from his property, because those are necessaries.$c$,
  $c$✅ Verified (Nov 2025)$c$,
  $c$In **November 2025**, the government notified the **Digital Personal Data Protection Rules**. Platforms now need **verifiable consent from a parent or guardian** before processing personal data of anyone **under 18**. Tracking, behavioural monitoring and targeted ads aimed at children are barred.
It's the same thinking as contract law: the law treats under-18s as not yet able to give binding consent, so an adult must step in.
*Sources: Seclore, Anantam IAS, law-firm summaries, Nov 2025.*$c$,
  $c$A 17-year-old lies about his age and takes a loan. Can the lender recover it?$c$,
  $c$"Generally no. An agreement with a minor is void ab initio (Mohori Bibee). Estoppel doesn't apply, so his lie doesn't make him liable on the contract.
The court may, in equity, order him to return any benefit he still has, such as the goods themselves. For a lender, the real lesson is to verify age properly. KYC isn't paperwork; it's what makes the contract enforceable."$c$,
  $c$Saying a minor's contract is "voidable". It's **void**, not voidable. The minor doesn't need to cancel it, because it never had legal force.$c$,
  $c$[{"kind":"concept","question":"What did Mohori Bibee v Dharmodas Ghose decide?","answer":"**An agreement with a minor is void ab initio.**"},{"kind":"application","question":"A minor gets ₹3,000 of textbooks on credit. Can the seller recover the money?","answer":"**Yes, from the minor's property, but not from him personally**, because textbooks are necessaries (Sec 68)."},{"kind":"case","question":"A start-up signs up 16- and 17-year-olds to a paid ₹499-a-month app subscription with no parental involvement. What's the legal risk?","answer":"**The subscriptions are void contracts with minors, and the start-up can't enforce payment.** Under the DPDP Rules, processing their data without verifiable parental consent is also non-compliant. The fix is age checks and parent-led sign-up."}]$c$::jsonb,
  $c$Indian Contract Act.ppt slides 40–47$c$, $c$draft$c$
),
(
  $c$law-08$c$, $c$law$c$, 8, $c$Free Consent: Coercion vs Undue Influence$c$,
  $c$Consent isn't free if it's obtained by threat (coercion) or by abusing a position of trust (undue influence). Such contracts are voidable by the victim.$c$,
  $c$Consent is **free (Sec 14)** when it isn't caused by:
- coercion;
- undue influence;
- fraud;
- misrepresentation;
- mistake.

| | Coercion (Sec 15) | Undue influence (Sec 16) |
|---|---|---|
| How | Threats: committing, or threatening to commit, an act forbidden by the Indian Penal Code (now the Bharatiya Nyaya Sanhita), or unlawfully detaining property | Misusing a position of trust or authority to dominate the other's will |
| Pressure | Physical or threat-based | Mental or moral |
| Example | "Sign or I'll harm you" | A doctor gets an ill patient to sell property cheaply |
| Can be by | Anyone, even a stranger | Someone in a relationship of dominance |

**Chikham Ammiraju v Chikham Seshamma (1917):** a husband threatened suicide to make his wife and son sign a release deed. The court held that a threat of an act forbidden by the penal code (attempted suicide was then punishable) was **coercion**.

Both make the contract **voidable** at the victim's option (Sec 19, 19A).$c$,
  $c$- A landlord says "pay ₹15,000 extra or I'll lock your stuff in the room." That's **coercion**, through unlawful detention of property.
- A college warden pressures a dependent student into renting his relative's flat at **₹12,000**, twice the market rate. That's likely **undue influence**, because the warden has authority over the student.$c$,
  $c$✅ Verified (Oct 2024)$c$,
  $c$On **27 October 2024**, PM Modi used *Mann Ki Baat* to warn about **"digital arrest" scams**.
- Fraudsters pose as police or CBI on video calls and threaten victims with arrest until they transfer money.
- He stressed that **no law allows "digital arrest"**.
- Official data put losses at about **₹120 crore** in January–April 2024 alone.

Money handed over under such threats isn't given with free consent. It's the textbook picture of coercion, and a crime as well.
*Sources: Business Today, Scroll, I4C data via MHA, Oct 2024.*$c$,
  $c$What's the difference between coercion and undue influence?$c$,
  $c$"Coercion is pressure by threat: committing or threatening an act forbidden by the penal code, or unlawfully holding someone's property, to make them agree. Anyone can coerce, even a stranger.
Undue influence is subtler. Someone in a position of trust or authority, like a doctor, guardian or senior, uses it to dominate the other person's decision.
Both make the contract voidable by the victim. The difference matters for proof: undue influence needs you to show the relationship of dominance."$c$,
  $c$Calling a coerced contract **void**. It's **voidable**: valid until the victim chooses to cancel it, and the victim can even choose to keep it.$c$,
  $c$[{"kind":"concept","question":"What is the legal effect of a contract obtained by coercion?","answer":"**It is voidable at the option of the party whose consent was coerced** (Sec 19)."},{"kind":"application","question":"A spiritual guru persuades a devoted follower to transfer her ₹40 lakh flat to his trust. Which vitiating factor is most likely?","answer":"**Undue influence**, a misuse of a position of trust and dominance."},{"kind":"case","question":"A transporter refuses to release a trader's goods unless the trader signs a new contract at a 30% higher rate. The trader signs. Can he get out of it?","answer":"**Yes. It's likely coercion**, through unlawful detention of goods, so the contract is voidable at the trader's option. He should act promptly and keep evidence of the threat."}]$c$::jsonb,
  $c$Indian Contract Act.ppt slide 9 (Chikham Ammiraju v Chikham Seshamma); Indian Contract Act Sec 14–16, 19$c$, $c$draft$c$
),
(
  $c$law-09$c$, $c$law$c$, 9, $c$Valid, Void, Voidable, Illegal and Unenforceable$c$,
  $c$Contracts differ in legal strength: valid ones bind, voidable ones bind until cancelled, void ones never bind, and illegal ones also taint related deals.$c$,
  $c$| Type | Meaning | Example |
|---|---|---|
| **Valid** | Meets every essential | A signed rental agreement |
| **Void agreement** | No legal effect from the start | An agreement with a minor |
| **Becomes void** | Valid at first, but later impossible or illegal | A singer falls seriously ill before the show |
| **Voidable** | Valid until the wronged party cancels it | Consent obtained by coercion or fraud |
| **Illegal** | Forbidden by law; related deals are also tainted | An agreement to smuggle goods |
| **Unenforceable** | Valid but can't be enforced for a technical reason, until the defect is fixed | An unstamped agreement |

**By performance:**
- **Executed:** both sides have done their part.
- **Executory:** something is still to be done, by one side or both.

**By formation:**
- **Express:** in words, written or spoken.
- **Implied:** by conduct.
- **Quasi-contract:** the law creates an obligation to prevent unjust enrichment, for example paying for goods delivered to you by mistake (Sec 68–72).
- **Contingent (Sec 31):** depends on an uncertain event, like an insurance payout.$c$,
  $c$- **Valid:** a ₹3,000 tuition deal with a junior.
- **Void:** a ₹500 bet on a cricket match. Wagering agreements are void (Sec 30).
- **Voidable:** a ₹20,000 bike sale where the seller hid that it had been in an accident.
- **Unenforceable:** a ₹8 lakh flat agreement that should have been stamped, until it's stamped.
- **Illegal:** paying ₹10,000 for a fake attendance certificate.$c$,
  $c$✅ Verified (Aug 2025)$c$,
  $c$In **August 2025**, Parliament passed the **Promotion and Regulation of Online Gaming Act, 2025**, banning **real-money online games** across India.
Within days, **Dream11** paused all paid "pay to play" contests, which reportedly made up over 90% of its revenue, and moved to free-to-play. It told users their balances were safe to withdraw.
Once the law forbids an activity, agreements to play it for money lose their lawful object. A once-valid business model becomes unlawful, which is why the platforms stopped at once.
*Sources: Storyboard18, Exchange4media, Aug 2025.*$c$,
  $c$What's the difference between a void and a voidable contract?$c$,
  $c$"A void agreement has no legal effect at all; it's as if it never existed, like an agreement with a minor or a wager. A voidable contract is valid until the party whose consent was affected chooses to cancel it, as with coercion, fraud or undue influence.
Practically, with a voidable contract the wronged party has a choice and should act quickly. With a void one, neither side can enforce anything."$c$,
  $c$Treating "illegal" and "void" as the same. Every illegal agreement is void, but not every void agreement is illegal. A wager is void but not a crime in itself; smuggling is both void and illegal, and taints connected deals too.$c$,
  $c$[{"kind":"concept","question":"What is a voidable contract?","answer":"**A contract that is valid until one party, usually the one whose consent wasn't free, chooses to cancel it.**"},{"kind":"application","question":"Two friends bet ₹1,000 on who will win the IPL final. What kind of agreement is it?","answer":"**Void.** It's a wagering agreement (Sec 30)."},{"kind":"case","question":"A caterer contracts to serve a wedding, but a government order bans gatherings that week. What happens to the contract?","answer":"**It becomes void** because of supervening impossibility or illegality (Sec 56, frustration). Any advance received for performance that can't now happen must be returned (Sec 65)."}]$c$::jsonb,
  $c$Indian Contract Act.ppt slides 16–22; Indian Contract Act Sec 30, 31, 56, 65, 68–72$c$, $c$draft$c$
),
(
  $c$law-10$c$, $c$law$c$, 10, $c$Puffery vs Misleading Claims (the Red Bull "Wings" Case)$c$,
  $c$Vague boasting ("the world's best pizza") is puffery and isn't actionable. A specific, checkable claim about what a product does must be true.$c$,
  $c$- **Puffery:** exaggerated, subjective praise that no reasonable buyer takes literally, such as "unbeatable taste" or "gives you wings".
- **Factual claim:** a measurable promise, such as "improves concentration by 30%", "cures diabetes" or "2× more protein". It must be **substantiated**. If false, it can be:
  - a **misleading advertisement** (in India: the Consumer Protection Act 2019 and CCPA guidelines);
  - a **breach of an express warranty** (Card L18).

**Careathers v Red Bull (US, 2014):** a buyer claimed "Red Bull gives you wings" implied better performance than a cheap cup of coffee. Red Bull denied wrongdoing but **settled for $13 million**, offering buyers $10 cash or $15 of product. Brands then added disclaimers that slogans are figurative.

The test is what a **reasonable consumer** would understand from the ad.$c$,
  $c$- A Kolkata coaching centre's ad says "**the city's best faculty**". That's puffery.
- Another says "**100% selection guaranteed, or full ₹45,000 refund**". That's a factual promise. If a student isn't selected and the centre won't refund, it's both a misleading ad and a breach of its promise.$c$,
  $c$✅ Verified (Apr–Aug 2024)$c$,
  $c$In **2024**, the Supreme Court took up **Patanjali Ayurved's** ads that claimed to treat serious diseases. The company had assured the Court in November 2023 that it would stop such claims.
- In **April 2024**, the Court refused Ramdev and Balkrishna's early apologies as lip service.
- They then apologised in person.
- In **August 2024**, the Court closed the contempt case with a warning.

Health claims like "cures" aren't puffery. They're factual claims that need proof, and courts treat them seriously.
*Sources: Exchange4media, Scroll, The News Minute, Apr–Aug 2024.*$c$,
  $c$As a brand manager, how do you write bold ads without legal risk?$c$,
  $c$"I separate puffery from claims.
- Emotional, obviously subjective lines, like 'taste the happiness', are fine.
- Anything measurable, like '2× faster', 'clinically proven' or 'cures', needs evidence on file before the ad runs, plus clear disclaimers.

India's consumer law and the CCPA's misleading-ads guidelines make the brand, and sometimes endorsers, accountable. Red Bull paid $13 million over 'wings', and Patanjali ended up before the Supreme Court over health claims."$c$,
  $c$Thinking "it's just marketing" protects any claim. Once a claim is specific and checkable, the law treats it as a statement of fact.$c$,
  $c$[{"kind":"concept","question":"What is puffery?","answer":"**Vague, exaggerated praise that no reasonable consumer takes literally**, so it isn't treated as a factual promise."},{"kind":"application","question":"A shampoo ad says \"Reduces hair fall by 90% in 2 weeks.\" Puffery or factual claim?","answer":"**A factual claim.** It's specific and measurable, so it must be substantiated."},{"kind":"case","question":"Red Bull settled for $13 million without admitting wrongdoing. Why might a company settle when it believes its slogan is puffery?","answer":"**To avoid litigation costs, uncertainty and brand damage.** A class action could cost more than the settlement. Settling also let Red Bull add disclaimers and move on."}]$c$::jsonb,
  $c$Indian Contract Act.ppt slides 10–15 (Careathers v Red Bull)$c$, $c$draft$c$
),
(
  $c$law-11$c$, $c$law$c$, 11, $c$Breach of Contract: Anticipatory vs Actual$c$,
  $c$A breach is breaking a contractual promise. It can happen before the due date (anticipatory) or on or during performance (actual).$c$,
  $c$**Anticipatory breach (Sec 39)** happens before performance is due, by:
- **express refusal:** "I won't deliver next month";
- **conduct that makes performance impossible:** selling the promised item to someone else.

The innocent party can choose to:
1. **treat the contract as ended** and sue for damages straight away; or
2. **keep it alive** and wait for the due date. The risk is that if it then becomes impossible for some other reason, the right to damages may be lost.

**Actual breach** happens:
- on the due date, when a party fails to perform; or
- **during** performance, when a party stops halfway or performs badly.$c$,
  $c$- On 1 March, Peter agrees to sell his guitar to John for **₹5,000** on 10 March. On 7 March he sells it to Oliver. That's anticipatory breach by **conduct**, and John can sue right away.
- A tailor promises a sherwani for **₹12,000** by 15 December for a wedding on the 16th, and doesn't deliver on the 15th. That's **actual breach**.$c$,
  $c$✅ Verified (Jan–Aug 2024)$c$,
  $c$On **22 January 2024**, **Sony** called off its roughly **$10 billion merger with Zee**. It said Zee had failed to meet the **closing conditions**, and there was also a dispute over who would lead the merged company.
- Each side claimed a **$90 million termination fee** from the other.
- Sony went to arbitration in Singapore within two days; Zee went to the NCLT.
- In **August 2024**, they settled and **withdrew all claims**.

When a deal collapses before completion, the fight is about who failed to perform, and when.
*Sources: LiveLaw, YourStory, Social Samosa, Jan–Aug 2024.*$c$,
  $c$A supplier tells you in March that it won't deliver in June as contracted. What can you do?$c$,
  $c$"That's anticipatory breach by express refusal. I have two options:
- treat the contract as ended now, sue for damages, and immediately line up another supplier; or
- keep it alive and wait.

In business I'd usually do the first. I'd mitigate by sourcing elsewhere and claim the extra cost from the supplier. Waiting only increases the risk and the loss."$c$,
  $c$Thinking you must wait for the due date before suing. With anticipatory breach, you can sue immediately.$c$,
  $c$[{"kind":"concept","question":"What is anticipatory breach?","answer":"**A breach before the performance date**, by express refusal or by conduct that makes performance impossible."},{"kind":"application","question":"A seller agrees to sell you a specific painting on 30 June but sells it to someone else on 10 June. What kind of breach?","answer":"**Anticipatory breach by conduct.**"},{"kind":"case","question":"An event company was paid ₹2 lakh to run a fest. Halfway through day 1 it pulls its crew out. What breach is this, and what can the college claim?","answer":"**Actual breach during performance.** The college can end the contract and claim damages, such as the extra cost of a replacement vendor and losses arising naturally from the breach. It must return any benefit it received if it rescinds."}]$c$::jsonb,
  $c$Breach_of_Contract_and_Remedies.pptx slides 2–7$c$, $c$draft$c$
),
(
  $c$law-12$c$, $c$law$c$, 12, $c$Damages: The Main Remedy (Section 73–74)$c$,
  $c$Damages are money for the loss a breach causes, but only for losses that arise naturally or that both sides could foresee when they contracted.$c$,
  $c$**Sec 73:** the injured party gets compensation for loss that:
- **arose naturally in the usual course of things** from the breach; or
- both parties **knew, when contracting, was likely** to result from it.

**Remote, indirect loss isn't covered.** This is the rule in *Hadley v Baxendale*.
The injured party must also **mitigate**, that is, take reasonable steps to reduce the loss.

**Liquidated vs unliquidated:**
- **Liquidated:** the amount is fixed in the contract ("₹5,000 per day of delay"). Under **Sec 74**, Indian courts award **reasonable compensation up to that amount**. India doesn't strictly separate penalty clauses from genuine pre-estimates, as English law does.
- **Unliquidated:** the court assesses the amount after the breach.

**Other kinds:**
- **Nominal damages:** a token amount where a right was breached but there was no real loss.
- **Exemplary (punitive) damages:** rare in contract cases.
- **Special damages:** for unusual losses, only if the other side knew of them when contracting.$c$,
  $c$A caterer agrees to serve 200 guests for **₹80,000** at a wedding, then cancels a day before. The family hires another caterer at **₹1,05,000**.
- **Damages:** the extra **₹25,000**. That's a natural, foreseeable loss.
- The family can't claim the honeymoon they say they "had to postpone because of stress". That's too remote.$c$,
  $c$✅ Verified (Sep 2024)$c$,
  $c$In **September 2024**, **Disney Star (Star India)** sought **$940 million in damages** from **Zee** at the London Court of International Arbitration.
- Star said Zee failed to pay the **first instalment of about $203.6 million** under their 2022 deal to sublicense ICC cricket TV rights.
- Zee denied the claims. It argued the contract had become void because Star hadn't met certain conditions, and filed an $8 million counterclaim.

The claim is the classic Sec 73 question: what loss flowed naturally from the alleged breach?
*Sources: Bloomberg via BNN, SportBusiness, Exchange4media, Sep 2024.*$c$,
  $c$Your vendor delivers late and you lose a big client. Can you claim the client's lifetime value?$c$,
  $c$"Only if that loss was foreseeable when we contracted. Under Section 73 we recover losses arising naturally from the breach, or ones both sides knew were likely.
If the vendor knew this delivery was for that specific client launch, we have a stronger claim. Otherwise lost future profits may be too remote.
That's why important contracts should state the stakes, or have a liquidated-damages clause. Under Section 74 we'd then get reasonable compensation up to the agreed figure."$c$,
  $c$Assuming a liquidated-damages clause gets you the full stated amount automatically. In India, the court awards **reasonable compensation not exceeding** that amount, and you may still need to show some loss or harm.$c$,
  $c$[{"kind":"concept","question":"Under Section 73, which losses are recoverable?","answer":"**Losses that arise naturally from the breach, or that both parties knew were likely when they contracted.** Remote, indirect losses are not."},{"kind":"application","question":"A contract says \"₹2,000 for each day of delay\"; the builder is 10 days late. Will the buyer automatically get ₹20,000?","answer":"**Not automatically.** Under Sec 74 the court awards reasonable compensation up to ₹20,000."},{"kind":"case","question":"A seller fails to deliver 100 bags of rice at ₹2,000 a bag; the buyer buys elsewhere at ₹2,300. What damages?","answer":"**₹30,000**, the difference between the market price and the contract price: (2,300 − 2,000) × 100. The buyer mitigated by buying promptly."}]$c$::jsonb,
  $c$Breach_of_Contract_and_Remedies.pptx slides 10–11; Indian Contract Act Sec 73–74$c$, $c$draft$c$
),
(
  $c$law-13$c$, $c$law$c$, 13, $c$Other Remedies: Rescission, Specific Performance, Injunction, Quantum Meruit$c$,
  $c$Besides damages, a court can cancel the contract, order it to be performed, stop a party from doing something, or pay for work already done.$c$,
  $c$- **Rescission (Sec 39, 64, 65, 75):** the innocent party cancels the contract. They must **return any benefit** received (Sec 65), and can still claim compensation for loss (Sec 75).
- **Specific performance (Specific Relief Act):** the court orders the party to actually perform. It's typical for **unique things like land** or rare goods, where money isn't enough. Since the **2018 amendment**, courts must grant it unless an exception in the Act applies, but they still refuse it for personal services.
- **Injunction:** a court order.
  - **Prohibitory:** stops a party from doing something. It's often used to enforce a **negative promise**, like "won't work for a rival during the contract".
  - **Mandatory:** orders a party to do something to put right a breach, such as pulling down a wall built in breach of a covenant.
- **Quantum meruit ("as much as earned"):** when one party is stopped from finishing by the other, they're paid a reasonable amount for the work already done.$c$,
  $c$- **Specific performance:** a seller agreed to sell you a particular **₹40 lakh** flat in Salt Lake and backs out. Each flat is unique, so you can ask the court to order the sale.
- **Quantum meruit:** a web designer is hired for **₹30,000**, finishes 60%, and the client cancels without reason. The designer can claim about **₹18,000** for the work done.
- **Injunction:** your employment contract says you won't work for a competitor *while employed*. The employer can get a prohibitory injunction to stop you breaking that promise during the term.$c$,
  $c$✅ Verified (Dec 2024)$c$,
  $c$On **10 December 2024**, US courts blocked **Kroger's $24.6 billion takeover of Albertsons** with **injunctions**:
- a federal judge issued a **preliminary injunction**;
- a Washington state judge issued a **permanent** one.

The next day Albertsons **walked away** and sued Kroger for breach. It claimed a **$600 million termination fee** plus billions in damages, saying Kroger hadn't tried hard enough to win approval. Kroger called the claims baseless.
In one week: injunctions, termination and a damages claim, several remedies in play together.
*Sources: AP via ABC News, Philadelphia Inquirer, Dec 2024.*$c$,
  $c$When would you ask for specific performance instead of damages?$c$,
  $c$"When money can't put me back where I'd be: unique assets like a particular plot of land, a rare machine or shares in a private company.
For ordinary goods I'd take damages and buy elsewhere. After the 2018 Specific Relief amendment, specific performance in India is no longer just discretionary; courts must grant it unless an exception applies. But courts won't force personal services, like making a singer perform. There, an injunction enforcing a negative promise during the contract term is the better tool."$c$,
  $c$Thinking a court will force an employee to keep working. Courts don't order specific performance of personal service contracts. At most they enforce a reasonable **negative** promise during the contract term. And under Sec 27, restraints **after** the job ends are generally void.$c$,
  $c$[{"kind":"concept","question":"What does quantum meruit mean?","answer":"**\"As much as earned\"**: reasonable payment for work already done when the other party prevents completion."},{"kind":"application","question":"A seller refuses to hand over a rare 1965 vintage car you'd agreed to buy for ₹6 lakh. Which remedy fits best?","answer":"**Specific performance.** The car is unique, so money may not be an adequate remedy."},{"kind":"case","question":"A rescinds a contract after B's breach, but A has already received ₹50,000 of goods from B. What must A do?","answer":"**Restore the benefit**, by returning the goods or their value (Sec 65), while claiming compensation for loss caused by the breach (Sec 75)."}]$c$::jsonb,
  $c$Breach_of_Contract_and_Remedies.pptx slides 8–15; Specific Relief Act, 1963 (as amended in 2018)$c$, $c$draft$c$
),
(
  $c$law-14$c$, $c$law$c$, 14, $c$Agency: Agent, Principal and Kinds of Authority$c$,
  $c$An agent acts for a principal with third parties. Whatever the agent does within their authority binds the principal as if the principal did it.$c$,
  $c$- **Agent (Sec 182):** someone employed to act for another, or represent them in dealings with third parties. The person represented is the **principal**.
- **No consideration is needed** to create an agency (Sec 185).
- **The principal must be a major of sound mind** (Sec 183). Anyone, even a minor, can be an agent, but a minor agent isn't personally liable to the principal (Sec 184).

**Kinds of authority:**
- **Express (Sec 187):** given in words, such as a power of attorney or a board resolution.
- **Implied (Sec 187):** inferred from conduct or the usual course of dealing.
- **Extent (Sec 188):** authority to do a thing includes everything lawful and necessary to do it.
- **Emergency (Sec 189):** an agent can act as a prudent person would to protect the principal from loss, such as selling perishable goods that would rot in transit.
- **Ostensible or apparent (Sec 237):** if the principal's words or conduct made a third party believe the agent had authority, the principal is bound.

**Common agents:** general agents, special agents, brokers (no possession of goods), factors (hold goods and sell in their own name), auctioneers, and del credere agents (they guarantee the buyer will pay, for extra commission).$c$,
  $c$Mr Sen owns a hardware shop in Serampore but lives in Kolkata. His manager Bablu regularly orders **₹20,000** of paint a month from a supplier in Mr Sen's name, and Mr Sen always pays.
Bablu has **implied authority**. If Bablu orders this month's stock and Mr Sen refuses to pay, the supplier can still recover from Mr Sen.$c$,
  $c$✅ Verified (Aug 2024)$c$,
  $c$From **17 August 2024**, under the **National Association of Realtors' $418 million settlement** in the US, home buyers' agents must sign a **written agreement** with the buyer before touring homes. Offers of commission between agents were also removed from listing systems.
That turns an often-implied relationship into **express authority**, with the agent's role and pay written down for every buyer.
*Sources: RISMedia, Bisnow, NAR, Mar–Aug 2024.*$c$,
  $c$Can a company be bound by an employee who exceeded their authority?$c$,
  $c$"Yes, through ostensible authority, Section 237. If the company's words or conduct led a third party to reasonably believe the employee had authority, the company is bound, even if internally the employee broke a limit.
That's why firms need clear authority matrices, and need to tell counterparties who can sign what. Silence and past practice create implied authority too."$c$,
  $c$Thinking an agency needs a formal contract and payment. It can arise from conduct, and needs **no consideration** (Sec 185). A friend helping you sell your bike for free is still your agent.$c$,
  $c$[{"kind":"concept","question":"Is consideration needed to create an agency?","answer":"**No** (Sec 185)."},{"kind":"application","question":"A transporter carrying mangoes for a trader finds the truck stuck for days and sells the mangoes before they rot. Was he authorised?","answer":"**Yes, under emergency authority** (Sec 189): he acted as a prudent person would to protect the principal from loss."},{"kind":"case","question":"A company lets its sales head sign supply orders for two years, then claims his last ₹8 lakh order was unauthorised under an internal limit the supplier never knew about. Who wins?","answer":"**Probably the supplier.** Through conduct, the company gave the sales head ostensible authority (Sec 237). The internal limit doesn't bind a third party who didn't know of it."}]$c$::jsonb,
  $c$Law-of-Agency-under-the-Indian-Contract-Act-1872.pdf pages 2–6, 18$c$, $c$draft$c$
),
(
  $c$law-15$c$, $c$law$c$, 15, $c$Sub-Agents and Ratification$c$,
  $c$An agent usually can't delegate the job to someone else. A principal can later approve an unauthorised act, which then counts as authorised from the start.$c$,
  $c$**Delegation (Sec 190):** *delegatus non potest delegare*, meaning a delegate can't delegate. An agent must act personally unless **trade custom** or the **nature of the work** requires a sub-agent.
- **Properly appointed sub-agent (Sec 192):** binds the principal. The sub-agent answers to the **agent**, except for fraud or wilful wrong.
- **Improperly appointed sub-agent (Sec 193):** doesn't bind the principal. The agent bears full responsibility.
- **Substituted agent (Sec 194–195):** someone the agent names under express authority becomes the principal's **own agent**. The original agent is only liable if they chose carelessly.

**Ratification (Sec 196–200):** the principal approves an act done without authority, and it then **relates back** to the original date. Conditions:
- it must have been done **on the principal's behalf**;
- the principal must have **full knowledge** of the facts (Sec 198);
- the principal must have had **capacity** both then and now;
- the act must be **lawful**;
- the principal ratifies the **whole** transaction, not just the good parts (Sec 199);
- it can't **harm a third party's vested rights** (Sec 200).$c$,
  $c$Your friend Arka, without asking, books a **₹2,400** Darjeeling toy-train ticket for you while you're unreachable. If you later say "great, thanks", or simply use the ticket, you've **ratified** it. It's as if you'd authorised it from the start, and you owe him ₹2,400.
If you'd refused, he'd bear the cost himself.$c$,
  $c$✅ Verified (Jun 2024–Dec 2025)$c$,
  $c$In **January 2024**, a Delaware judge struck down Elon Musk's 2018 Tesla pay package, finding the board's process flawed.
- In **June 2024**, Tesla shareholders voted again to **ratify** the package, by a large margin.
- In **December 2024**, the judge said a shareholder vote alone couldn't ratify a deal involving a conflicted controller.
- In **December 2025**, Delaware's Supreme Court **reversed** the cancellation, reinstated the package and awarded $1 in nominal damages.

It's the classic ratification question: can a later approval cure an act that lacked proper authority at the start?
*Sources: AP, Hollywood Reporter, Arab News, Jun 2024–Dec 2025.*$c$,
  $c$What does it mean when a board 'ratifies' a decision?$c$,
  $c$"It means approving, after the fact, an act someone took without proper authority. Under Sections 196–200, once ratified, the act is treated as authorised from the start.
But ratification needs full disclosure of the facts, the whole transaction must be approved, and it can't harm third parties' existing rights. The Tesla case shows the limits: courts also look at *how* the approval was obtained, especially when there's a conflict of interest."$c$,
  $c$Thinking a principal can ratify the profitable part and reject the rest. Ratifying **part** of a transaction ratifies **all** of it (Sec 199).$c$,
  $c$[{"kind":"concept","question":"What does \"delegatus non potest delegare\" mean?","answer":"**A delegate cannot delegate.** An agent can't appoint a sub-agent unless trade custom or the nature of the agency allows it (Sec 190)."},{"kind":"application","question":"A buys goods for B without authority. B later sells those goods to C. Has B ratified A's purchase?","answer":"**Yes, by conduct** (implied ratification, Sec 197)."},{"kind":"case","question":"An agent, without authority, signs a ₹5 lakh deal for his principal that includes a bad penalty clause. The principal wants to keep the deal but drop the clause. Can he?","answer":"**No.** Ratifying part ratifies the whole transaction (Sec 199). He must accept the whole deal, penalty clause included, or reject all of it."}]$c$::jsonb,
  $c$Law-of-Agency-under-the-Indian-Contract-Act-1872.pdf pages 7–10$c$, $c$draft$c$
),
(
  $c$law-16$c$, $c$law$c$, 16, $c$Duties of Agent and Principal, and Ending an Agency$c$,
  $c$An agent owes loyalty, skill and honest accounts. The principal owes payment and indemnity. An agency ends by revocation, completion, death, insanity or insolvency, unless the agent has an interest in it.$c$,
  $c$**Agent's duties:**
- Follow instructions, or the custom of the trade (Sec 211).
- Use reasonable skill and diligence (Sec 212).
- Render proper accounts (Sec 213).
- Communicate with the principal when in difficulty (Sec 214).
- **Make no secret profit:** if the agent deals on their own account without disclosing it, the principal can repudiate the deal and claim the benefit (Sec 215–216).
- Pay over money received, after deducting dues (Sec 217–218).

**Agent's rights:** remuneration on completing the work, but none for misconducted business (Sec 219–220), and a **lien** on the principal's goods until paid (Sec 221).

**Principal's duties:**
- Indemnify the agent for lawful acts (Sec 222) and good-faith acts (Sec 223), but **never for criminal acts** (Sec 224).
- Compensate the agent for injury caused by the principal's own neglect (Sec 225).

**Termination (Sec 201):** by revocation, renunciation, completion, the death or insanity of either party, or the principal's insolvency.
- **Irrevocable agency (Sec 202):** if the agent has an **interest** in the subject matter, the principal can't revoke to that interest's prejudice.
- Once authority has been **partly exercised**, revocation can't undo acts and obligations already arising from it (Sec 204). Revocation needs **reasonable notice** (Sec 206).
- It isn't effective against third parties **until they know** of it (Sec 208).$c$,
  $c$You ask a property broker to find you a flat to buy for up to **₹50 lakh**.
He finds one at ₹45 lakh, secretly buys it himself, then offers it to you at ₹49 lakh. That's a **secret profit**.
You can make him sell it to you at the **₹45 lakh** he paid (Sec 216), and he loses his commission for misconduct (Sec 220).$c$,
  $c$✅ Verified (Jul 2026)$c$,
  $c$On **24 July 2026**, SEBI passed a **final order** in the **Axis Mutual Fund front-running case**.
- It barred former chief dealer **Viresh Joshi** from the markets for **seven years** and fined him **₹3 crore**.
- Twenty others got bars of three to seven years.
- The roughly **₹30.56 crore** impounded in 2023 is to be treated as disgorgement, plus interest.

Front-running means trading ahead of the fund's own orders. It's the purest breach of an agent's duty: using a position of trust to make a secret profit.
*Sources: Business Today, Moneylife, Cafemutual, Jul 2026.*$c$,
  $c$What's the most important duty an agent owes the principal?$c$,
  $c$"Loyalty: no conflict of interest and no secret profit. Under Sections 215–216, if an agent deals on their own account without full disclosure, the principal can cancel the deal and claim the agent's profit.
Every fund manager, broker or procurement head is in this position. That's why firms have trading restrictions, disclosure rules and audits. Skill and following instructions matter too, but a breach of loyalty is what destroys trust."$c$,
  $c$Assuming a principal can always fire an agent mid-way at no cost. If the agency is coupled with the agent's interest (Sec 202), revocation is barred. Acts already done stay binding on the principal (Sec 204), and sudden revocation without notice can mean paying compensation (Sec 205–206).$c$,
  $c$[{"kind":"concept","question":"Must a principal indemnify an agent for a criminal act done on the principal's instructions?","answer":"**No** (Sec 224)."},{"kind":"application","question":"A gives B authority to sell A's land and pay off a debt A owes B from the proceeds. Can A revoke this authority?","answer":"**No.** It's an agency coupled with interest (Sec 202), so A can't revoke it to B's prejudice."},{"kind":"case","question":"A principal revokes his agent's authority but doesn't tell a supplier the agent usually deals with. The agent then places a ₹1 lakh order with that supplier. Is the principal bound?","answer":"**Yes.** Termination doesn't take effect against third parties until they know of it (Sec 208). The principal should have informed regular counterparties."}]$c$::jsonb,
  $c$Law-of-Agency-under-the-Indian-Contract-Act-1872.pdf pages 11–19$c$, $c$draft$c$
),
(
  $c$law-17$c$, $c$law$c$, 17, $c$Contract of Sale: Sale vs Agreement to Sell$c$,
  $c$In a sale, ownership passes now. In an agreement to sell, it passes later or on a condition, and risk usually follows ownership.$c$,
  $c$**Sec 4:** a contract of sale is one where the seller transfers, or agrees to transfer, ownership ("property") in **goods** to the buyer **for a price** in money.

**Goods (Sec 2(7))** means movable property, including shares, growing crops and things attached to land that are to be cut off before the sale. It **excludes** money and actionable claims, such as a debt owed to you.

**Kinds of goods:**
- **Existing goods:**
  - **specific:** identified and agreed at the time, like "this red scooter";
  - **unascertained:** described but not yet picked out, like "50 kg out of the 500 kg in the godown".
- **Future goods:** to be made or acquired after the contract.
- **Contingent goods:** future goods whose acquisition depends on an uncertain event.

| | Sale | Agreement to sell |
|---|---|---|
| Nature | Executed | Executory |
| Ownership | Passes now | Passes later or on a condition |
| Risk (Sec 26) | On the buyer, even if the goods are still with the seller | On the seller |
| If the buyer won't pay | Seller can sue **for the price** | Seller can only sue **for damages** |
| Future goods? | Can't be "sold" now | Only an agreement to sell is possible |$c$,
  $c$- You pay **₹1,200** for a specific kurta at a New Market stall and ask the seller to keep it till evening. That's a **sale**. If the stall catches fire at 4 pm, the loss is **yours**, because ownership and risk have passed.
- You book a custom-made kurta for **₹1,800**, to be stitched by Friday. That's an **agreement to sell future goods**. If the tailor's shop burns down on Wednesday, the loss is the tailor's.$c$,
  $c$✅ Verified (Jul 2025)$c$,
  $c$On **15 July 2025**, **Tesla** opened its first Indian showroom in Mumbai's BKC.
- It listed the **Model Y** from **₹59.89 lakh**.
- It took bookings with a token payment of about **₹22,000**, plus a further payment to confirm.
- Deliveries were to start later.

A booking like this is an **agreement to sell**. Ownership, and with it risk, passes only when the car is made, appropriated to the buyer and delivered, not on the day the token is paid.
*Sources: CarDekho, Free Press Journal, e-vehicleinfo, Jul 2025.*$c$,
  $c$Why does it matter when ownership passes?$c$,
  $c$"Three things follow ownership:
1. **Risk:** under Section 26, risk usually passes with ownership, so whoever owns the goods bears the loss if they're destroyed.
2. **Remedies:** a seller can sue for the full price only after ownership has passed. Before that, only for damages.
3. **Insolvency:** if the buyer or seller goes bust, ownership decides whose creditors get the goods.

In supply contracts I'd always write down exactly when ownership and risk pass, and insure accordingly."$c$,
  $c$Assuming the person holding the goods bears the risk. Risk usually follows **ownership**, not **possession**. A buyer who owns goods kept in the seller's shop bears the loss if they're destroyed.$c$,
  $c$[{"kind":"concept","question":"Under Sec 2(7), are actionable claims (like a debt owed to you) \"goods\"?","answer":"**No.** Goods exclude money and actionable claims."},{"kind":"application","question":"A farmer agrees in March to sell 10 quintals of the wheat he will harvest in May. What kind of contract is this?","answer":"**An agreement to sell future goods.**"},{"kind":"case","question":"A buyer pays ₹50,000 for a specific sofa and leaves it at the shop for delivery next week. A flood destroys it. Who bears the loss?","answer":"**The buyer.** It's a sale of specific goods in a deliverable state, so ownership passed when the contract was made (Sec 20), and risk follows ownership (Sec 26). That's unless the shop was negligent or the contract said otherwise."}]$c$::jsonb,
  $c$SOGA.pdf pages 2–10, 29–32$c$, $c$draft$c$
),
(
  $c$law-18$c$, $c$law$c$, 18, $c$Conditions vs Warranties$c$,
  $c$A condition goes to the heart of the deal: if broken, you can reject the goods. A warranty is a side promise: if broken, you only get damages.$c$,
  $c$- **Condition (Sec 12(2)):** essential to the main purpose. Breach lets the buyer **reject the goods and end the contract**, and claim damages.
- **Warranty (Sec 12(3)):** collateral to the main purpose. Breach gives **only damages**.
- A buyer can choose to treat a breach of condition **as a breach of warranty** (Sec 13). If the buyer has **accepted** the goods, they usually can only claim damages.

**Implied conditions** (they apply even if no one says them):
- **Title (Sec 14):** the seller has the right to sell. *Rowland v Divall*: a buyer of a stolen car got his money back.
- **Description (Sec 15):** goods must match the description. *Varley v Whipp.*
- **Fitness for purpose (Sec 16(1)):** if you relied on the seller's skill for a stated purpose. *Grant v Australian Knitting Mills.*
- **Merchantable quality (Sec 16(2)):** fit to be sold under that description.
- **Sample (Sec 17):** the bulk must match the sample.
- **Wholesomeness** for food. *Frost v Aylesbury Dairy*: milk carrying typhoid germs.

**Implied warranties:** quiet possession, freedom from charges, and disclosure of dangerous goods.$c$,
  $c$You order an **iPhone 15** for ₹70,000 online and receive an **iPhone 13**. That's a breach of the **condition** as to description, so you can reject it and get a full refund.
If the right phone arrives but the free ₹1,000 earphones promised with it are missing, that's more like a **warranty**. You'd claim the earphones' value, not return the phone.$c$,
  $c$✅ Verified (Sep 2025)$c$,
  $c$On **18 September 2025**, the **Delhi State Consumer Commission** ordered **Mercedes-Benz India** and its dealer to **refund over ₹1.78 crore** for an **EQS 580** electric car, plus ₹5 lakh for mental agony.
- The battery pack had to be replaced about **five months** after purchase.
- Other defects followed, and the car sat in the workshop unrepaired.
- The Commission held them liable for a **manufacturing defect**.

A brand-new luxury car that can't be fixed fails the most basic condition, that goods are of **merchantable quality**. So the buyer got the remedy for a breach of condition: rejection and a refund, not just repairs.
*Sources: PTI via The Week, LiveLaw, IndiaLaw, Sep 2025.*$c$,
  $c$What's the difference between a condition and a warranty?$c$,
  $c$"A condition is essential to the contract's main purpose. Breach lets the buyer reject the goods and end the contract.
A warranty is collateral. Breach only gives damages.
Whether a term is a condition depends on the contract as a whole, not on the label. For a ₹70,000 phone, getting the right model is a condition; a missing promotional freebie is a warranty. And once a buyer has accepted the goods, a breach of condition usually drops to a damages claim."$c$,
  $c$Thinking the word used in the contract decides it. A term called a "warranty" can still be a **condition** if it goes to the root of the deal (Sec 12(4)).$c$,
  $c$[{"kind":"concept","question":"What remedy does a breach of warranty give?","answer":"**Only damages.** The buyer can't reject the goods."},{"kind":"application","question":"You buy \"basmati rice\" and get ordinary rice in a basmati-labelled bag. Which implied condition is broken?","answer":"**Correspondence with description** (Sec 15)."},{"kind":"case","question":"A buyer discovers that the second-hand car he bought for ₹4 lakh was stolen, and the police return it to the owner. What can he claim from the seller?","answer":"**The full price back.** That's a breach of the implied condition as to title (Sec 14), as in Rowland v Divall. He's entitled to a refund even though he used the car for a while."}]$c$::jsonb,
  $c$SOGA.pdf pages 13–25$c$, $c$draft$c$
),
(
  $c$law-19$c$, $c$law$c$, 19, $c$Caveat Emptor: Let the Buyer Beware$c$,
  $c$The buyer must check that goods suit their purpose. But the law makes big exceptions when the buyer relies on the seller's skill, buys by description, or the goods aren't of merchantable quality.$c$,
  $c$**Sec 16:** as a general rule there's **no implied condition** that goods are fit for any particular purpose. The buyer should examine the goods and decide.

**Exceptions** (where the seller *is* responsible):
1. **Fitness for purpose:** the buyer told the seller the purpose, relied on the seller's skill, and the seller deals in such goods.
2. **Merchantable quality:** goods bought by description from a dealer must be of saleable quality, unless the buyer examined them and the defect should have been obvious.
3. **Usage of trade:** the custom of the trade implies a quality.
4. **Fraud or concealment:** the seller hid a defect.
5. **Sale by sample, or by description and sample**, and wholesomeness for food.

Today, consumer protection law adds more protection on top of the Sale of Goods Act.$c$,
  $c$- At a Sunday second-hand market you buy a **₹600** table fan after looking at it. It turns out noisy. That's **caveat emptor**: you inspected it and the defect was discoverable.
- At an electronics shop you say "I need a fan that runs quietly in a baby's room" and buy the **₹2,800** fan the owner recommends. It's very noisy. That's the **fitness-for-purpose exception**, because you relied on his skill, so the shop is liable.$c$,
  $c$✅ Verified (Apr–May 2024)$c$,
  $c$On **5 April 2024**, Hong Kong's food-safety regulator found **ethylene oxide**, a pesticide, above permitted limits in three **MDH** spice mixes and **Everest Fish Curry Masala**. Singapore ordered a recall of the Everest product. India's FSSAI then tested samples nationwide. In **May 2024** it reported **no ethylene oxide** in the 28 results it had received.
A shopper can't test spice powder at home, so caveat emptor gives way: food must be **merchantable and wholesome**, and regulators enforce it.
*Sources: The Week, The South First, BusinessWorld, Apr–May 2024.*$c$,
  $c$Is 'let the buyer beware' still relevant today?$c$,
  $c$"The rule still exists in Section 16. Buyers should inspect what they can, especially in second-hand deals. But its exceptions now cover most everyday buying:
- if I rely on the seller's expertise for a stated purpose;
- if I buy by description from a dealer;
- if the item is food that must be wholesome.

Then the seller is responsible. Add the Consumer Protection Act, and in practice the burden has moved a long way toward 'let the seller beware'."$c$,
  $c$Saying caveat emptor means the buyer is never protected. It only applies where the buyer had a fair chance to examine the goods and didn't rely on the seller. The exceptions are the heart of the topic.$c$,
  $c$[{"kind":"concept","question":"What does caveat emptor mean?","answer":"**\"Let the buyer beware\"**: the buyer must satisfy themselves that the goods suit their purpose (Sec 16)."},{"kind":"application","question":"A buyer tells a paint dealer \"I need paint for an outdoor wall in heavy rain\", buys what the dealer suggests, and it peels in a month. Does caveat emptor protect the dealer?","answer":"**No.** It's the fitness-for-purpose exception: the buyer disclosed the purpose and relied on the dealer's skill."},{"kind":"case","question":"A buyer inspects a used car, misses an obvious dent, buys it and then complains. Who wins?","answer":"**Most likely the seller.** The buyer examined the car, and the defect was one the examination should have revealed. Caveat emptor applies, unless the seller actively hid the defect."}]$c$::jsonb,
  $c$SOGA.pdf pages 26–28$c$, $c$draft$c$
),
(
  $c$law-20$c$, $c$law$c$, 20, $c$Rights of an Unpaid Seller$c$,
  $c$A seller who hasn't been paid in full can hold the goods (lien), stop them in transit if the buyer is insolvent, resell in some cases, and sue the buyer.$c$,
  $c$**Unpaid seller (Sec 45):** the whole price hasn't been paid or tendered, or a cheque or bill given as payment has bounced.

**Rights against the goods** (even after ownership has passed):
- **Lien (Sec 47):** keep possession until paid. This applies when the goods were sold without credit, when the credit period has expired, or when the buyer becomes insolvent. It's lost once the goods are delivered to the buyer.
- **Stoppage in transit (Sec 50):** if the **buyer becomes insolvent**, the seller can stop the goods while they're **still with a carrier**, before they reach the buyer.
- **Resale (Sec 54):** allowed if the goods are **perishable**, or the seller gives **notice** and the buyer doesn't pay within a reasonable time, or the contract reserves the right. The seller can recover any loss from the buyer.

**Rights against the buyer personally:**
- **Suit for the price** (Sec 55), once ownership has passed or payment is due on a fixed date.
- **Damages for non-acceptance** (Sec 56). The usual measure is the contract price minus the market price.
- **Damages for repudiation** before the due date (Sec 60).
- **Interest** (Sec 61).$c$,
  $c$A Burrabazar cloth wholesaler sells **₹80,000** of fabric to a Durgapur shop on 30 days' credit and books it with a transporter.
On day 10, he learns the shop owner has gone insolvent while the truck is still on NH-19. He can tell the transporter to **stop** the goods (stoppage in transit).
If the fabric is still in his own godown, he can simply **keep** it (lien), give notice, and **resell** it if he isn't paid.$c$,
  $c$✅ Verified (Jun 2025–Apr 2026)$c$,
  $c$In **June 2025**, during the Israel–Iran conflict, Indian **basmati rice exporters** said shipments to Iran, their second-largest market, had **nearly stopped**. About **1 lakh tonnes** were stuck at ports, and industry estimates put **₹1,500–2,000 crore** of payments as held up.
By **April 2026**, exporters had decided to **hold back consignments already at ports** and stop fresh dispatches.
Not letting goods go to a buyer who may not pay is exactly the instinct behind an unpaid seller's lien and right of stoppage.
*Sources: Outlook Business, Tribune, Daily Star, Jun 2025–Apr 2026.*$c$,
  $c$Your buyer has gone bankrupt but your goods are still on a truck. What can you do?$c$,
  $c$"As an unpaid seller, I can exercise stoppage in transit under Section 50. The buyer is insolvent and the goods are still with the carrier, so I instruct the transporter to stop and redeliver them to me.
Once I have them back, I hold them under lien. Then I give the buyer notice, and if I'm not paid within a reasonable time, I resell and claim any shortfall.
I'd act fast: once the buyer takes delivery, those rights are gone."$c$,
  $c$Mixing up lien and stoppage in transit. **Lien** is used while the goods are still in the **seller's** possession. **Stoppage in transit** applies only when the goods are with a **carrier** *and* the buyer is **insolvent**.$c$,
  $c$[{"kind":"concept","question":"When can an unpaid seller exercise stoppage in transit?","answer":"**When the buyer has become insolvent and the goods are still in transit with a carrier** (Sec 50)."},{"kind":"application","question":"A seller still holds goods sold on 15 days' credit; the credit period has expired and the buyer hasn't paid. Which right can the seller use?","answer":"**Lien.** The seller can keep the goods until paid (Sec 47)."},{"kind":"case","question":"A buyer refuses to take 100 cartons of mangoes he agreed to buy at ₹500 each. The mangoes will spoil in days. What can the seller do?","answer":"**Resell them, because they're perishable** (Sec 54), and claim any shortfall from the buyer. If they fetch ₹400 each, he claims ₹10,000: (500 − 400) × 100."}]$c$::jsonb,
  $c$SOGA.pdf pages 41–47$c$, $c$draft$c$
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
