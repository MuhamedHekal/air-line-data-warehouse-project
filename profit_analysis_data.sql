INSERT INTO time_dim (time_id, hour, minutes, hour_description)
SELECT 
    ROWNUM AS time_id,
    MOD(TRUNC((LEVEL - 1) / 2), 24) AS hour,  -- Cycles through 0-23 hours
    CASE MOD(LEVEL - 1, 2) WHEN 0 THEN 0 ELSE 30 END AS minutes,  -- Alternates 00 and 30
    CASE 
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) = 0 THEN 'Midnight'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 1 AND 5 THEN 'Early Morning'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 18 AND 20 THEN 'Evening'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 21 AND 23 THEN 'Night'
    END AS hour_description
FROM DUAL
CONNECT BY LEVEL <= 24 * 2;  --  24 hours * 2 (for 00 and 30 minutes)

COMMIT;

----------------
--insert into flight


DECLARE
    v_flight_id NUMBER;
    v_origin_airport_id NUMBER;
    v_destination_airport_id NUMBER;
    v_origin_date_id NUMBER;
    v_arrival_date_id NUMBER;
    v_origin_time_id NUMBER;
    v_arrival_time_id NUMBER;
    v_aircraft_id NUMBER;
    v_segment_miles NUMBER(10, 2);
    v_miles_earned NUMBER(10, 2);
BEGIN
    -- Get the next available flight_id
    SELECT NVL(MAX(flight_id), 0) + 1 INTO v_flight_id FROM flight_dim;

    FOR i IN 1..200 LOOP  -- Generate 200 flights
        -- Select random origin and destination airports (different)
        SELECT airport_id INTO v_origin_airport_id
        FROM (SELECT airport_id FROM airport_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        SELECT airport_id INTO v_destination_airport_id
        FROM (SELECT airport_id FROM airport_dim WHERE airport_id <> v_origin_airport_id ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Select random origin date
        SELECT date_id INTO v_origin_date_id
        FROM (SELECT date_id FROM date_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Select random arrival date within 2 days of origin date
        SELECT date_id INTO v_arrival_date_id
        FROM (SELECT date_id FROM date_dim WHERE date_id BETWEEN v_origin_date_id AND v_origin_date_id + 2 ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Select random origin time
        SELECT time_id INTO v_origin_time_id
        FROM (SELECT time_id FROM time_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Select random arrival time after origin time
        SELECT time_id INTO v_arrival_time_id
        FROM (SELECT time_id FROM time_dim WHERE time_id > v_origin_time_id ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Select random aircraft
        SELECT aircraft_id INTO v_aircraft_id
        FROM (SELECT aircraft_id FROM aircraft_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Generate random segment miles and miles earned
        v_segment_miles := ROUND(DBMS_RANDOM.VALUE(100, 5000), 2);
        v_miles_earned := ROUND(DBMS_RANDOM.VALUE(100, 5000), 2);

        -- Insert the flight into flight_dim
        INSERT INTO flight_dim (flight_id, origin_airport_id, destination_airport_id, origin_date, origin_time, arrival_date, arrival_time, aircraft_id, segment_miles, miles_earned)
        VALUES (v_flight_id, v_origin_airport_id, v_destination_airport_id, v_origin_date_id, v_origin_time_id, v_arrival_date_id, v_arrival_time_id, v_aircraft_id, v_segment_miles, v_miles_earned);

        -- Increment flight_id
        v_flight_id := v_flight_id + 1;
    END LOOP;

    COMMIT;
END;
/