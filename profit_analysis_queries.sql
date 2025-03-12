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





