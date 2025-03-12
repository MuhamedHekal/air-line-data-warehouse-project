--1. Flights the company’s frequent flyers take
SELECT c.passenger_id, c.passenger_name, f.flight_id, f.origin_airport_id, f.destination_airport_id, f.origin_date, f.arrival_date
FROM SegmentActivityFact s
JOIN customer_dim c ON s.passenger_id = c.sk_passenger_id
JOIN flight_dim f ON s.flight_id = f.flight_id
WHERE c.passenger_status IN ('Gold', 'Platinum', 'Aluminum', 'Titanium');


--2. What fare basis they pay
SELECT s.passenger_id, c.passenger_name, s.ticket_number, s.revenue_amount, cs.class_purchased
FROM SegmentActivityFact s
JOIN customer_dim c ON s.passenger_id = c.sk_passenger_id
JOIN class_services_dim cs ON s.class_services_id = cs.class_of_services_id
WHERE c.passenger_status IN ('Gold', 'Platinum', 'Aluminum', 'Titanium');

--3. How often they upgrade
SELECT c.passenger_id, c.passenger_name, cs.class_purchased, cs.class_flown, COUNT(*) AS upgrade_count
FROM SegmentActivityFact s
JOIN customer_dim c ON s.passenger_id = c.sk_passenger_id
JOIN class_services_dim cs ON s.class_services_id = cs.class_of_services_id
--WHERE cs.class_purchased <> cs.class_flown
WHERE cs.class_change_indicator = 'Upgrade'
AND c.passenger_status IN ('Gold', 'Platinum', 'Aluminum', 'Titanium')
GROUP BY c.passenger_id, c.passenger_name, cs.class_purchased, cs.class_flown;


--4. How they earn and redeem their frequent flyer miles
SELECT c.passenger_id, c.passenger_name, SUM(f.miles_earned) AS total_miles_earned
FROM SegmentActivityFact s
JOIN customer_dim c ON s.passenger_id = c.sk_passenger_id
JOIN flight_dim f ON s.flight_id = f.flight_id
--WHERE c.passenger_status IN ('Gold', 'Platinum', 'Aluminum', 'Titanium')
GROUP BY c.passenger_id, c.passenger_name;

SELECT 
    s.passenger_id, 
    c.passenger_name, 
    f.segment_miles AS total_miles_redeemed
FROM SegmentActivityFact s
JOIN customer_dim c ON s.passenger_id = c.sk_passenger_id
JOIN flight_dim f ON s.flight_id = f.flight_id
AND s.revenue_amount = 0  -- zero revenue on a flight means that the passenger use his earned miles and redeem his points


--5. Whether they respond to special fare promotions
SELECT c.passenger_id, c.passenger_name, p.promotion_id, p.category, COUNT(*) AS times_used
FROM SegmentActivityFact s
JOIN customer_dim c ON s.passenger_id = c.sk_passenger_id
JOIN promotion_dim p ON s.promotion_id = p.promotion_id
WHERE c.passenger_status IN ('Gold', 'Platinum', 'Aluminum', 'Titanium')
GROUP BY c.passenger_id, c.passenger_name, p.promotion_id, p.category
ORDER BY times_used DESC;


--6. How long their overnight stays are
SELECT c.passenger_id, c.passenger_name, AVG(s.overnight_stay) AS avg_overnight_stay
FROM SegmentActivityFact s
JOIN customer_dim c ON s.passenger_id = c.sk_passenger_id
GROUP BY c.passenger_id, c.passenger_name;

--7. Proportion of frequent flyers by status
SELECT passenger_status, COUNT(*) AS total_frequent_flyers,
       ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM customer_dim WHERE passenger_status IN ('Gold', 'Platinum', 'Aluminum', 'Titanium')), 2) AS percentage
FROM customer_dim
WHERE passenger_status IN ('Gold', 'Platinum', 'Aluminum', 'Titanium')
GROUP BY passenger_status;


--8.total profit for each date to analyze profit trends over time.
SELECT 
    date_id, 
    SUM(revenue_amount) AS total_revenue, 
    SUM(expense_amount) AS total_expenses, 
    SUM(profit_amount) AS total_profit
FROM ProfitFact
GROUP BY date_id
ORDER BY date_id;

--9.profitability of each flight.
SELECT 
    pf.flight_id, 
    f.origin_airport_id, 
    f.destination_airport_id, 
    SUM(pf.revenue_amount) AS total_revenue, 
    SUM(pf.expense_amount) AS total_expenses, 
    SUM(pf.profit_amount) AS total_profit
FROM ProfitFact pf
JOIN flight_dim f ON pf.flight_id = f.flight_id
GROUP BY pf.flight_id, f.origin_airport_id, f.destination_airport_id
ORDER BY total_profit DESC;


--10.which booking channels generate the most profit.
SELECT 
    bc.booking_name, 
    SUM(pf.revenue_amount) AS total_revenue, 
    SUM(pf.expense_amount) AS total_expenses, 
    SUM(pf.profit_amount) AS total_profit
FROM ProfitFact pf
JOIN booking_channel_dim bc ON pf.booking_channel_id = bc.channel_id
GROUP BY bc.booking_name
ORDER BY total_profit DESC;

--11.effectiveness of promotions by evaluating their contribution to profit.
SELECT 
    p.category, 
    SUM(pf.revenue_amount) AS total_revenue, 
    SUM(pf.expense_amount) AS total_expenses, 
    SUM(pf.profit_amount) AS total_profit
FROM ProfitFact pf
JOIN promotion_dim p ON pf.promotion_id = p.promotion_id
GROUP BY p.category
ORDER BY total_profit DESC;

--12.Monthly Profit Analysis
SELECT 
    d.year, 
    d.month, 
    SUM(pf.revenue_amount) AS total_revenue, 
    SUM(pf.expense_amount) AS total_expenses, 
    SUM(pf.profit_amount) AS total_profit
FROM ProfitFact pf
JOIN date_dim d ON pf.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;

--13.Revenue Distribution by Passenger Type
SELECT 
    revenue_type, 
    SUM(revenue_amount) AS total_revenue,
    COUNT(DISTINCT passenger_id) AS total_passengers
FROM RevenueFact
GROUP BY revenue_type
ORDER BY total_revenue DESC;

--14.Impact of Promotions on Revenue
SELECT 
    p.category, 
    COUNT(DISTINCT r.passenger_id) AS total_passengers, 
    SUM(r.revenue_amount) AS total_revenue
FROM RevenueFact r
JOIN promotion_dim p ON r.promotion_id = p.promotion_id
GROUP BY p.category
ORDER BY total_revenue DESC;

--15.Most Frequent Interaction Types
SELECT 
    interaction_type, 
    COUNT(*) AS total_interactions
FROM CustomerCareFact
GROUP BY interaction_type
ORDER BY total_interactions DESC;

--16.Average Satisfaction Rate by Interaction Type
SELECT 
    interaction_type, 
    AVG(satisfaction_rate) AS avg_satisfaction
FROM CustomerCareFact
WHERE satisfaction_rate IS NOT NULL
GROUP BY interaction_type
ORDER BY avg_satisfaction DESC;

--17.Employee Performance in Handling Customer Care
SELECT 
    e.employee_name, 
    COUNT(*) AS total_interactions, 
    AVG(ccf.satisfaction_rate) AS avg_satisfaction
FROM CustomerCareFact ccf
JOIN employee_dim e ON ccf.employee_id = e.sk_employee_id
GROUP BY e.employee_name
ORDER BY avg_satisfaction DESC;

--18.Customer Care Trends Over Time
SELECT 
    TO_CHAR(date_id, 'YYYY-MM') AS month, 
    COUNT(*) AS total_interactions
FROM CustomerCareFact
GROUP BY TO_CHAR(date_id, 'YYYY-MM')
ORDER BY month ASC;

--19.Average duration of interactions per type.
SELECT 
    interaction_type, 
    AVG(duration) AS avg_duration
FROM CustomerCareFact
WHERE duration IS NOT NULL
GROUP BY interaction_type
ORDER BY avg_duration DESC;

--20.Unresolved Complaints
SELECT COUNT(*) AS unresolved_complaints
FROM CustomerCareFact
WHERE interaction_type = 'Complaint' AND feedback_id IS NULL;

---- all time top booking channel in terms of revenue 
SELECT booking_channel, total_revenue
FROM (
    SELECT 
        bcd.booking_name AS booking_channel,
        SUM(rf.revenue_amount) AS total_revenue
    FROM RevenueFact rf
    JOIN booking_channel_dim bcd 
        ON rf.booking_channel_id = bcd.channel_id
    WHERE rf.revenue_amount IS NOT NULL
    GROUP BY bcd.booking_name
    ORDER BY total_revenue DESC
) 
WHERE ROWNUM = 1; 


----top booking channel in terms of revenue by year 
SELECT year, booking_channel, total_revenue
FROM (
    SELECT 
        dd.year,
        bcd.booking_name AS booking_channel,
        SUM(rf.revenue_amount) AS total_revenue,
        ROW_NUMBER() OVER (PARTITION BY dd.year ORDER BY SUM(rf.revenue_amount) DESC) AS rn
    FROM RevenueFact rf
    JOIN booking_channel_dim bcd 
        ON rf.booking_channel_id = bcd.channel_id
    JOIN date_dim dd 
        ON rf.date_id = dd.date_id
    WHERE rf.revenue_amount IS NOT NULL
    GROUP BY dd.year, bcd.booking_name
) 
WHERE rn = 1;


SELECT revenue_type, total_revenue
FROM (
    SELECT 
        rf.revenue_type,
        SUM(rf.revenue_amount) AS total_revenue,
        RANK() OVER (ORDER BY SUM(rf.revenue_amount) DESC) AS rnk
    FROM RevenueFact rf
    WHERE rf.revenue_amount IS NOT NULL
    GROUP BY rf.revenue_type
) 
WHERE rnk = 1;


--- top category of promotions 
SELECT category, total_revenue
FROM (
    SELECT 
        pd.category, 
        SUM(rf.revenue_amount) AS total_revenue,
        RANK() OVER (ORDER BY SUM(rf.revenue_amount) DESC) AS rnk
    FROM RevenueFact rf
    JOIN promotion_dim pd 
        ON rf.promotion_id = pd.promotion_id
    WHERE rf.revenue_amount IS NOT NULL
    GROUP BY pd.category
) 
WHERE rnk = 1;
 
------ top promotion
SELECT promotion_id, total_revenue
FROM (
    SELECT 
        pd.promotion_id, 
        SUM(rf.revenue_amount) AS total_revenue,
        ROW_NUMBER() OVER (ORDER BY SUM(rf.revenue_amount) DESC) AS rn
    FROM RevenueFact rf
    JOIN promotion_dim pd 
        ON rf.promotion_id = pd.promotion_id
    WHERE rf.revenue_amount IS NOT NULL
    GROUP BY pd.promotion_id
) 
WHERE rn = 1;

---- net profit for the year 2020
SELECT SUM(pf.profit_amount) AS net_profit
FROM ProfitFact pf
JOIN date_dim dd 
    ON pf.date_id = dd.date_id
WHERE dd.year = 2020;


----net profit for jan of 2020:
SELECT SUM(pf.profit_amount) AS net_profit
FROM ProfitFact pf
JOIN date_dim dd 
    ON pf.date_id = dd.date_id
WHERE dd.year = 2020
AND dd.month = 1;


SELECT 
    bc.booking_name, 
    SUM(pf.profit_amount) AS total_profit
FROM ProfitFact pf
JOIN booking_channel_dim bc ON pf.booking_channel_id = bc.channel_id
GROUP BY bc.booking_name
ORDER BY total_profit DESC
FETCH FIRST 1 ROWS ONLY;

--Top 5 Most Profitable Flights
SELECT 
    pf.flight_id, 
    SUM(pf.profit_amount) AS total_profit
FROM ProfitFact pf
GROUP BY pf.flight_id
ORDER BY total_profit DESC
FETCH FIRST 5 ROWS ONLY;


--Monthly Revenue and Profit Trends
SELECT 
    TO_CHAR(pf.date_id, 'YYYY-MM') AS month, 
    SUM(pf.revenue_amount) AS total_revenue, 
    SUM(pf.profit_amount) AS total_profit
FROM ProfitFact pf
GROUP BY TO_CHAR(pf.date_id, 'YYYY-MM')
ORDER BY month;


--Monthly Revenue Growth Rate
SELECT 
    TO_CHAR(pf.date_id, 'YYYY-MM') AS month, 
    SUM(pf.revenue_amount) AS total_revenue,
    LAG(SUM(pf.revenue_amount)) OVER (ORDER BY TO_CHAR(pf.date_id, 'YYYY-MM')) AS previous_month_revenue,
    ROUND((SUM(pf.revenue_amount) - LAG(SUM(pf.revenue_amount)) OVER (ORDER BY TO_CHAR(pf.date_id, 'YYYY-MM')))
    / NULLIF(LAG(SUM(pf.revenue_amount)) OVER (ORDER BY TO_CHAR(pf.date_id, 'YYYY-MM')), 0) * 100, 2) AS growth_rate
FROM ProfitFact pf
GROUP BY TO_CHAR(pf.date_id, 'YYYY-MM')
ORDER BY month;

--Best-Performing Promotions in Peak vs Off-Peak Seasons
SELECT 
    pd.category AS promotion_category, 
    CASE 
        WHEN TO_CHAR(pf.date_id, 'MM') IN ('06', '07', '08', '12') THEN 'Peak Season'
        ELSE 'Off-Peak Season'
    END AS season,
    COUNT(pf.promotion_id) AS times_used,
    SUM(pf.revenue_amount) AS total_revenue
FROM ProfitFact pf
JOIN promotion_dim pd ON pf.promotion_id = pd.promotion_id
GROUP BY pd.category, 
    CASE 
        WHEN TO_CHAR(pf.date_id, 'MM') IN ('06', '07', '08', '12') THEN 'Peak Season'
        ELSE 'Off-Peak Season'
    END
ORDER BY season, total_revenue DESC;

--Effectiveness of Promotions by Booking Channel
SELECT 
    bc.booking_name, 
    pd.category AS promotion_category, 
    COUNT(pf.promotion_id) AS times_used,
    SUM(pf.revenue_amount) AS total_revenue
FROM ProfitFact pf
JOIN booking_channel_dim bc ON pf.booking_channel_id = bc.channel_id
JOIN promotion_dim pd ON pf.promotion_id = pd.promotion_id
GROUP BY bc.booking_name, pd.category
ORDER BY bc.booking_name, total_revenue DESC;


--Most Revenue and profit according to the Age Group
SELECT 
    CASE 
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) < 25 THEN '18-24'
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) BETWEEN 25 AND 34 THEN '25-34'
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) BETWEEN 35 AND 44 THEN '35-44'
        ELSE '45+'
    END AS age_group,
    SUM(rf.revenue_amount) AS total_revenue,
    SUM(pf.profit_amount) AS total_profit
FROM RevenueFact rf
JOIN ProfitFact pf 
    ON rf.flight_id = pf.flight_id 
    AND rf.date_id = pf.date_id  -- Ensuring correct data mapping
JOIN customer_dim cd 
    ON rf.passenger_id = cd.sk_passenger_id  -- Using `RevenueFact` to link passengers
GROUP BY 
    CASE 
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) < 25 THEN '18-24'
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) BETWEEN 25 AND 34 THEN '25-34'
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) BETWEEN 35 AND 44 THEN '35-44'
        ELSE '45+'
    END
ORDER BY total_profit DESC;


--Monthly Revenue & Profit for Each Age Group
SELECT 
    TO_CHAR(rf.date_id, 'YYYY-MM') AS month,
    CASE 
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) < 25 THEN '18-24'
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) BETWEEN 25 AND 34 THEN '25-34'
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) BETWEEN 35 AND 44 THEN '35-44'
        ELSE '45+'
    END AS age_group,
    SUM(rf.revenue_amount) AS total_revenue,
    SUM(pf.profit_amount) AS total_profit
FROM RevenueFact rf
JOIN ProfitFact pf 
    ON rf.flight_id = pf.flight_id 
    AND rf.date_id = pf.date_id  -- Aligning revenue with profit
JOIN customer_dim cd 
    ON rf.passenger_id = cd.sk_passenger_id  -- Using RevenueFact to link customers
GROUP BY 
    TO_CHAR(rf.date_id, 'YYYY-MM'),
    CASE 
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) < 25 THEN '18-24'
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) BETWEEN 25 AND 34 THEN '25-34'
        WHEN EXTRACT(YEAR FROM rf.date_id) - EXTRACT(YEAR FROM cd.passenger_dateofbirth) BETWEEN 35 AND 44 THEN '35-44'
        ELSE '45+'
    END
ORDER BY month, total_profit DESC;