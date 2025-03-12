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

----top booking channel profit
SELECT 
    bc.booking_name, 
    SUM(pf.profit_amount) AS total_profit
FROM ProfitFact pf
JOIN booking_channel_dim bc ON pf.booking_channel_id = bc.channel_id
GROUP BY bc.booking_name
ORDER BY total_profit DESC
FETCH FIRST 1 ROWS ONLY;

----top booking channel revenue
SELECT 
    bc.booking_name, 
    SUM(pf.revenue_amount) AS total_revenue
FROM ProfitFact pf
JOIN booking_channel_dim bc ON pf.booking_channel_id = bc.channel_id
GROUP BY bc.booking_name
ORDER BY total_revenue DESC
FETCH FIRST 1 ROWS ONLY;


----top expenses type 
SELECT 
    expenses_type, 
    SUM(expense_amount) AS total_expense
FROM EXPENSESFACT
GROUP BY expenses_type
ORDER BY total_expense DESC
FETCH FIRST 1 ROWS ONLY;


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