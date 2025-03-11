-- Populate time_dim table with time records and meaningful hour descriptions
INSERT INTO time_dim (time_id, hour, minutes, month, hour_description)
SELECT 
    ROWNUM AS time_id,
    MOD(TRUNC((LEVEL - 1) / 2), 24) AS hour,  -- Cycles through 0-23 hours
    CASE MOD(LEVEL - 1, 2) WHEN 0 THEN 0 ELSE 30 END AS minutes,  -- Alternates 00 and 30
    TRUNC((LEVEL - 1) / 48) + 1 AS month,  -- Cycles through 1-12 months
    CASE 
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) = 0 THEN 'Midnight'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 1 AND 5 THEN 'Early Morning'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 18 AND 20 THEN 'Evening'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 21 AND 23 THEN 'Night'
    END AS hour_description
FROM DUAL
CONNECT BY LEVEL <= 12 * 24 * 2;  -- 12 months * 24 hours * 2 (for 00 and 30 minutes)

COMMIT;





