
DECLARE
    TYPE Date_Table IS TABLE OF date_dim%ROWTYPE INDEX BY PLS_INTEGER;
    v_dates Date_Table;
    v_index NUMBER := 1;
    v_start_date DATE := DATE '2020-01-01';  
    v_end_date   DATE := DATE '2020-12-31';  
    v_current_date DATE := v_start_date;
    v_date_id NUMBER := 1;  
BEGIN
    WHILE v_current_date <= v_end_date LOOP
        v_dates(v_index).date_id := v_date_id;
        v_dates(v_index).year := EXTRACT(YEAR FROM v_current_date);
        v_dates(v_index).quarter := CEIL(EXTRACT(MONTH FROM v_current_date) / 3);
        v_dates(v_index).month := EXTRACT(MONTH FROM v_current_date);
        v_dates(v_index).day_of_week := TO_NUMBER(TO_CHAR(v_current_date, 'D')) - 1;
        v_dates(v_index).day_of_month := EXTRACT(DAY FROM v_current_date);
        v_dates(v_index).day_of_year := TO_NUMBER(TO_CHAR(v_current_date, 'DDD'));
        v_dates(v_index).week_of_year := TO_NUMBER(TO_CHAR(v_current_date, 'IW'));
        v_dates(v_index).is_holiday := CASE WHEN TO_CHAR(v_current_date, 'MM-DD') IN ('01-01', '12-25') THEN 1 ELSE 0 END;

        v_current_date := v_current_date + 1;
        v_date_id := v_date_id + 1;
        v_index := v_index + 1;
    END LOOP;

    FORALL i IN 1..v_dates.COUNT
        INSERT INTO date_dim VALUES v_dates(i);

    COMMIT;
END;
/


INSERT INTO feedback_dim (feedback_id, type, description) VALUES (1, 'Negative', 'Staff ignored my request for assistance');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (2, 'Neutral', 'it was ok');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (3, 'Negative', 'The check-in process took too long, causing unnecessary stress.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (4, 'Negative', 'Flight attendants were not friendly at all');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (5, 'Neutral', 'I didnt feel anything special');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (6, 'Positive', 'I loved the hot towels and complimentary drinks in business class');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (7, 'Positive', 'The airline handled my special meal request perfectly.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (8, 'Positive', 'Everything was smooth from check-in to landing');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (9, 'Positive', 'I can not complain about anything');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (10, 'Positive', 'Nice experiment');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (11, 'Negative', 'My flight was delayed for over 3 hours without any clear explanation.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (12, 'Positive', 'The flight attendants were extremely polite and made the journey comfortable.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (13, 'Negative', 'Lost my baggage, and customer service took too long to respond.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (14, 'Positive', 'Smooth check-in process, and the flight was on time.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (15, 'Negative', 'Seats were too cramped, making the long-haul flight very uncomfortable.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (16, 'Positive', 'The in-flight entertainment had a great selection of movies and music.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (17, 'Negative', 'The food quality was terrible and not worth the extra charge.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (18, 'Positive', 'The pilot kept us informed throughout the flight, making us feel at ease.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (19, 'Negative', 'Boarding was chaotic, with no clear instructions from the staff.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (20, 'Positive', 'Fast and hassle-free baggage claim, which I really appreciated.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (21, 'Negative', 'My flight was canceled last minute, and I struggled to get a refund.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (22, 'Positive', 'Friendly staff and very comfortable seating. Will fly again!');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (23, 'Negative', 'Customer service was rude when I asked about my delayed flight.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (24, 'Positive', 'I was upgraded to business class for free, which made my day!');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (25, 'Negative', 'There was no legroom at all; my knees were constantly pressed against the seat.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (26, 'Positive', 'The check-in staff was helpful and assisted me with my overweight baggage.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (27, 'Negative', 'The Wi-Fi on board was expensive and didnt work properly.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (28, 'Positive', 'Smooth takeoff and landing; the pilot did a great job.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (29, 'Negative', 'No vegetarian meal option available on an international flight.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (30, 'Positive', 'Loved the cleanliness of the aircraft and the modern interior.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (31, 'Negative', 'I was charged an unexpected baggage fee at the last minute.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (32, 'Positive', 'The airline app made it easy to check in and manage my flight details.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (33, 'Negative', 'Staff ignored my request for assistance multiple times.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (34, 'Positive', 'The business class experience was outstanding—worth the price.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (35, 'Negative', 'Uncomfortable seats with barely any recline for a long-haul flight.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (36, 'Positive', 'Boarding was organized and stress-free.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (37, 'Negative', 'The air conditioning was too cold, and I couldnt adjust it.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (38, 'Positive', 'The crew made my child feel special with a small toy and extra attention.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (39, 'Negative', 'Security check at the airlines gate was unnecessarily slow.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (40, 'Positive', 'The airline lounge was comfortable and had great food options.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (41, 'Negative', 'My flight was overbooked, and I had to wait for the next one.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (42, 'Positive', 'The airline provided compensation for my delayed flight.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (43, 'Negative', 'There was a lack of communication about our flight delay.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (44, 'Positive', 'The boarding process was quick, and my flight left on time.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (45, 'Negative', 'The flight was extremely noisy, and the crew didnt do anything about it.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (46, 'Positive', 'The seats in economy were surprisingly spacious and comfortable.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (47, 'Negative', 'The check-in counter was understaffed, causing long wait times.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (48, 'Positive', 'Flight arrived 20 minutes ahead of schedule!');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (49, 'Negative', 'The pilot did not inform us about the turbulence in advance.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (50, 'Positive', 'I loved the hot towels and complimentary drinks in business class.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (51, 'Negative', 'No charging ports in economy class, making it hard to work.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (52, 'Positive', 'Cabin crew was professional and attentive to all passengers.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (53, 'Negative', 'The in-flight meal was stale and not worth the price.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (54, 'Positive', 'Flight attendants were always smiling and willing to help.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (55, 'Negative', 'The airline lost my baggage, and I had to wait days to get it back.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (56, 'Positive', 'Seats were very clean and comfortable, even in economy class.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (57, 'Negative', 'The check-in process took too long, causing unnecessary stress.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (58, 'Positive', 'The free snacks and drinks were a nice touch.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (59, 'Negative', 'Crew members seemed uninterested in helping passengers.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (60, 'Positive', 'I was given extra legroom without asking—great service!');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (61, 'Negative', 'The flight was delayed multiple times with no updates.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (62, 'Positive', 'Everything was smooth from check-in to landing!');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (63, 'Negative', 'The lavatories were unclean and had a bad odor.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (64, 'Positive', 'Great value for money; I got more than I expected.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (65, 'Negative', 'The boarding gate changed at the last minute, causing confusion.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (66, 'Positive', 'I enjoyed the free in-flight Wi-Fi service.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (67, 'Negative', 'They ran out of my preferred meal option before they reached my seat.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (68, 'Positive', 'The flight had plenty of storage space for carry-on bags.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (69, 'Negative', 'The baggage claim process took way too long.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (70, 'Positive', 'The airline handled my special meal request perfectly.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (71, 'Negative', 'My seat was broken, and I had to sit uncomfortably the entire flight.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (72, 'Positive', 'The customer support team was quick to respond to my queries.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (73, 'Negative', 'The plane was old and looked poorly maintained.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (74, 'Positive', 'A very smooth journey with excellent customer service.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (75, 'Negative', 'The airport lounge was overcrowded and lacked seating.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (76, 'Positive', 'The free upgrade to premium economy was a pleasant surprise.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (77, 'Negative', 'Flight attendants were not friendly at all.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (78, 'Positive', 'The airline offered great last-minute deals.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (79, 'Negative', 'The flight kept getting delayed due to "technical issues."');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (80, 'Positive', 'I felt safe and comfortable throughout the entire flight.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (81, 'Negative', 'Extra charges for choosing a seat were unreasonable.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (82, 'Positive', 'The coffee served on board was actually quite good!');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (83, 'Negative', 'The plane was too noisy, making it hard to rest.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (84, 'Positive', 'I received priority boarding as a frequent flyer—great perk!');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (85, 'Negative', 'They didnt allow enough time for passengers to board.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (86, 'Positive', 'The flight attendants made the journey enjoyable with their friendly attitude.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (87, 'Negative', 'I was charged an unexpected fee at the check-in counter.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (88, 'Positive', 'My flight experience was stress-free from start to finish.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (89, 'Negative', 'Limited meal options for long-haul flights.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (90, 'Positive', 'The aircraft was modern and well-maintained.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (91, 'Negative', 'The crew forgot my meal order and didnt apologize.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (92, 'Positive', 'I appreciated the spacious legroom in premium economy.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (93, 'Negative', 'Too many announcements throughout the flight.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (94, 'Positive', 'I had a great flying experience with this airline.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (95, 'Negative', 'I had to pay for water, which was ridiculous.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (96, 'Positive', 'The staff went above and beyond to assist me.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (97, 'Negative', 'No blankets were available on a cold overnight flight.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (98, 'Positive', 'They surprised me with a birthday cake on my flight!');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (99, 'Negative', 'Overpriced tickets for the service provided.');
INSERT INTO feedback_dim (feedback_id, type, description) VALUES (100, 'Positive', 'The airline made up for the delay by offering a meal voucher.');

commit;
select * from feedback_dim;

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (16, 'Yasmin Salah', TO_DATE('1989-02-07', 'YYYY-MM-DD'), 'Male', 'Mansoura, Egypt', '01234567895', 5116);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (17, 'Ali Reda', TO_DATE('1980-06-07', 'YYYY-MM-DD'), 'Male', 'Tanta, Egypt', '01234567896', 13796);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (18, 'Salma Hany', TO_DATE('1985-09-07', 'YYYY-MM-DD'), 'Female', 'Suez, Egypt', '01234567897', 6773);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (19, 'Sherif Atef', TO_DATE('1981-01-25', 'YYYY-MM-DD'), 'Male', 'Ismailia, Egypt', '01234567898', 18754);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (20, 'Nada Hamdy', TO_DATE('1984-11-15', 'YYYY-MM-DD'), 'Male', 'Port Said, Egypt', '01234567899', 14103);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (21, 'Khaled Osama', TO_DATE('1982-02-27', 'YYYY-MM-DD'), 'Female', 'Cairo, Egypt', '01234567890', 15385);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (22, 'Marwa Anwar', TO_DATE('1987-07-07', 'YYYY-MM-DD'), 'Male', 'Giza, Egypt', '01234567891', 17652);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (23, 'Ramy Bassem', TO_DATE('1984-10-01', 'YYYY-MM-DD'), 'Male', 'Alexandria, Egypt', '01234567892', 7836);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (24, 'Samar Adel', TO_DATE('1987-01-28', 'YYYY-MM-DD'), 'Male', 'Aswan, Egypt', '01234567893', 12383);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (25, 'Mohamed Tarek', TO_DATE('1985-07-11', 'YYYY-MM-DD'), 'Female', 'Luxor, Egypt', '01234567894', 11290);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (26, 'Farida Khalil', TO_DATE('1986-11-25', 'YYYY-MM-DD'), 'Female', 'Mansoura, Egypt', '01234567895', 9630);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (27, 'Mostafa Ahmed', TO_DATE('1986-12-11', 'YYYY-MM-DD'), 'Male', 'Tanta, Egypt', '01234567896', 10154);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (28, 'Hana Sameh', TO_DATE('1985-01-03', 'YYYY-MM-DD'), 'Male', 'Suez, Egypt', '01234567897', 17578);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (29, 'Amr Medhat', TO_DATE('1985-02-15', 'YYYY-MM-DD'), 'Male', 'Ismailia, Egypt', '01234567898', 15649);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (30, 'Lina Sherif', TO_DATE('1982-06-26', 'YYYY-MM-DD'), 'Male', 'Port Said, Egypt', '01234567899', 5098);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (31, 'Ayman Hossam', TO_DATE('1981-05-01', 'YYYY-MM-DD'), 'Female', 'Cairo, Egypt', '01234567890', 12124);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (32, 'Lamis Younis', TO_DATE('1987-09-25', 'YYYY-MM-DD'), 'Male', 'Giza, Egypt', '01234567891', 5440);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (33, 'Ehab Adel', TO_DATE('1983-04-15', 'YYYY-MM-DD'), 'Male', 'Alexandria, Egypt', '01234567892', 19879);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (34, 'Nadine Tamer', TO_DATE('1987-01-19', 'YYYY-MM-DD'), 'Female', 'Aswan, Egypt', '01234567893', 5288);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (35, 'Hany Emad', TO_DATE('1980-11-08', 'YYYY-MM-DD'), 'Female', 'Luxor, Egypt', '01234567894', 13624);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (36, 'Doaa Mohamed', TO_DATE('1988-06-12', 'YYYY-MM-DD'), 'Male', 'Mansoura, Egypt', '01234567895', 7918);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (37, 'Bassem Fady', TO_DATE('1988-10-22', 'YYYY-MM-DD'), 'Male', 'Tanta, Egypt', '01234567896', 14479);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (38, 'Sahar Mostafa', TO_DATE('1980-09-04', 'YYYY-MM-DD'), 'Male', 'Suez, Egypt', '01234567897', 15960);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (39, 'Walid Magdy', TO_DATE('1982-06-07', 'YYYY-MM-DD'), 'Female', 'Ismailia, Egypt', '01234567898', 8705);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (40, 'Rasha Nabil', TO_DATE('1988-10-23', 'YYYY-MM-DD'), 'Female', 'Port Said, Egypt', '01234567899', 7966);
INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (41, 'Fady Saeed', TO_DATE('1987-11-06', 'YYYY-MM-DD'), 'Female', 'Cairo, Egypt', '01234567890', 9576);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (42, 'Rania Salah', TO_DATE('1982-02-10', 'YYYY-MM-DD'), 'Female', 'Giza, Egypt', '01234567891', 14097);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (43, 'Tamer Mohsen', TO_DATE('1987-11-02', 'YYYY-MM-DD'), 'Female', 'Alexandria, Egypt', '01234567892', 6913);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (44, 'Bassem Fady', TO_DATE('1988-10-22', 'YYYY-MM-DD'), 'Male', 'Tanta, Egypt', '01234567896', 14479);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (45, 'Sahar Mostafa', TO_DATE('1980-09-04', 'YYYY-MM-DD'), 'Male', 'Suez, Egypt', '01234567897', 15960);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (46, 'Walid Magdy', TO_DATE('1982-06-07', 'YYYY-MM-DD'), 'Female', 'Ismailia, Egypt', '01234567898', 8705);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (47, 'Rasha Nabil', TO_DATE('1988-10-23', 'YYYY-MM-DD'), 'Female', 'Port Said, Egypt', '01234567899', 7966);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (48, 'Fady Saeed', TO_DATE('1987-11-06', 'YYYY-MM-DD'), 'Female', 'Cairo, Egypt', '01234567890', 9576);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (49, 'Rania Salah', TO_DATE('1982-02-10', 'YYYY-MM-DD'), 'Female', 'Giza, Egypt', '01234567891', 14097);

INSERT INTO employee_dim (employee_id, employee_name, employee_dateOfBirth, employee_gender, employee_address, employee_phone, salary) 
VALUES (50, 'Tamer Mohsen', TO_DATE('1987-11-02', 'YYYY-MM-DD'), 'Female', 'Alexandria, Egypt', '01234567892', 6913);

COMMIT;

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (1, 24, 5, 40, 'Chat', 4.51, 27);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (2, 12, 2, 6, 'Chat', 3.01, 40);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (3, 14, 6, 35, 'In-Person', 4.42, 35);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (4, 9, 9, 18, 'Chat', 3.06, 35);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (5, 26, 3, 33, 'Chat', 1.11, 2);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (6, 11, 5, 5, 'In-Person', 3.35, 13);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (7, 28, 7, 35, 'Chat', 1.04, 47);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (8, 11, 9, 9, 'In-Person', 3.36, 3);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (9, 4, 1, 4, 'Call', 3.89, 47);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (10, 21, 9, 33, 'Email', 4.90, 46);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (11, 9, 6, 14, 'Email', 1.26, 4);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (12, 2, 7, 19, 'In-Person', 3.40, 23);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (13, 26, 3, 40, 'In-Person', 2.11, 46);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (14, 7, 5, 6, 'In-Person', 2.02, 6);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (15, 2, 6, 22, 'Chat', 4.86, 56);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (16, 4, 8, 27, 'Call', 2.70, 27);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (17, 24, 1, 31, 'Email', 3.78, 23);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (18, 21, 1, 36, 'In-Person', 2.46, 54);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (19, 12, 10, 29, 'Call', 1.94, 58);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (20, 19, 9, 24, 'Call', 2.40, 38);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (21, 11, 4, 18, 'In-Person', 3.74, 59);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (22, 10, 5, 18, 'Email', 4.57, 36);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (23, 26, 5, 41, 'Email', 4.37, 50);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (24, 15, 8, 2, 'Email', 2.08, 31);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (25, 4, 1, 22, 'Call', 2.09, 22);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (26, 5, 3, 4, 'Chat', 2.82, 6);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (27, 18, 8, 16, 'Call', 3.98, 6);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (28, 11, 8, 3, 'Email', 1.18, 37);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (29, 15, 2, 38, 'Call', 3.31, 46);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (30, 20, 2, 21, 'Email', 2.53, 48);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (31, 12, 6, 47, 'In-Person', 1.66, 18);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (32, 20, 9, 26, 'Email', 2.94, 3);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (33, 18, 7, 47, 'Chat', 4.54, 56);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (34, 9, 9, 31, 'Call', 1.89, 37);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration)
VALUES (35, 4, 10, 8, 'Chat', 4.83, 44);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (36, 7, 4, 43, 'Email', 2.54, 27);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (37, 6, 3, 7, 'Chat', 1.51, 60);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (38, 6, 9, 31, 'Chat', 4.02, 39);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (39, 15, 8, 2, 'In-Person', 1.59, 56);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (40, 13, 3, 26, 'Chat', 3.93, 57);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (41, 15, 2, 29, 'Call', 1.99, 35);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (42, 23, 4, 37, 'Email', 1.28, 14);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (43, 23, 7, 12, 'In-Person', 2.49, 48);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (44, 6, 3, 50, 'Call', 1.09, 1);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (45, 26, 4, 1, 'Call', 1.75, 23);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (46, 7, 9, 35, 'In-Person', 3.83, 20);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (47, 1, 7, 46, 'Email', 1.30, 45);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (48, 25, 5, 4, 'Chat', 1.29, 45);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (49, 6, 1, 32, 'Email', 3.68, 40);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (50, 13, 9, 29, 'Call', 4.09, 49);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (51, 12, 7, 28, 'Email', 1.33, 60);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (52, 20, 3, 42, 'In-Person', 2.59, 16);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (53, 27, 3, 4, 'Email', 2.89, 14);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (54, 30, 6, 2, 'Email', 4.33, 22);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (55, 14, 7, 7, 'In-Person', 4.74, 21);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (56, 11, 9, 40, 'Email', 3.94, 6);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (57, 14, 1, 17, 'Chat', 2.29, 43);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (58, 8, 7, 22, 'Email', 1.71, 30);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (59, 8, 6, 45, 'Call', 1.27, 20);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (60, 26, 1, 13, 'Chat', 3.07, 22);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (61, 27, 3, 10, 'In-Person', 3.30, 18);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (62, 5, 7, 49, 'Email', 4.03, 18);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (63, 29, 1, 34, 'Call', 2.05, 54);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (64, 26, 2, 45, 'Chat', 2.27, 15);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (65, 15, 2, 14, 'Email', 3.06, 23);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (66, 30, 4, 47, 'In-Person', 2.00, 51);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (67, 21, 3, 21, 'Chat', 1.09, 1);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (68, 8, 6, 28, 'Call', 1.79, 50);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (69, 5, 8, 17, 'Call', 3.01, 11);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (70, 15, 4, 13, 'In-Person', 4.34, 45);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (71, 6, 10, 44, 'In-Person', 1.57, 37);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (72, 1, 5, 6, 'Email', 2.19, 46);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (73, 3, 4, 15, 'In-Person', 3.20, 56);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (74, 14, 4, 41, 'Call', 1.17, 18);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (75, 29, 10, 44, 'Email', 4.51, 31);

INSERT INTO CustomerCareFact (customer_id, date_id, feedback_id, employee_id, interaction_type, satisfaction_rate, duration) 
VALUES (76, 13, 5, 12, 'Call', 3.12, 24);
INSERT INTO CustomerCareFact VALUES (77, 48, 5, 44, 'In-Person', 2.41, 45);
INSERT INTO CustomerCareFact VALUES (78, 234, 9, 28, 'Chat', 1.21, 16);
INSERT INTO CustomerCareFact VALUES (79, 162, 1, 4, 'In-Person', 4.61, 29);
INSERT INTO CustomerCareFact VALUES (80, 98, 9, 31, 'In-Person', 1.00, 42);
INSERT INTO CustomerCareFact VALUES (81, 8, 1, 26, 'Email', 1.64, 4);
INSERT INTO CustomerCareFact VALUES (82, 176, 2, 43, 'Chat', 2.30, 35);
INSERT INTO CustomerCareFact VALUES (83, 122, 8, 26, 'Call', 2.95, 45);
INSERT INTO CustomerCareFact VALUES (84, 37, 3, 46, 'Chat', 4.20, 39);
INSERT INTO CustomerCareFact VALUES (85, 317, 6, 42, 'Call', 1.57, 60);
INSERT INTO CustomerCareFact VALUES (86, 216, 2, 25, 'In-Person', 2.76, 42);
INSERT INTO CustomerCareFact VALUES (87, 104, 4, 26, 'Email', 3.33, 9);
INSERT INTO CustomerCareFact VALUES (88, 280, 3, 27, 'In-Person', 4.99, 26);
INSERT INTO CustomerCareFact VALUES (89, 109, 4, 13, 'Call', 3.92, 24);
INSERT INTO CustomerCareFact VALUES (90, 326, 3, 12, 'In-Person', 1.90, 49);
INSERT INTO CustomerCareFact VALUES (91, 112, 4, 29, 'Email', 2.60, 38);
INSERT INTO CustomerCareFact VALUES (92, 78, 6, 20, 'In-Person', 3.40, 48);
INSERT INTO CustomerCareFact VALUES (93, 51, 8, 38, 'Call', 2.77, 47);
INSERT INTO CustomerCareFact VALUES (94, 310, 7, 23, 'In-Person', 4.03, 2);
INSERT INTO CustomerCareFact VALUES (95, 33, 8, 20, 'Call', 2.42, 57);
INSERT INTO CustomerCareFact VALUES (96, 57, 3, 41, 'In-Person', 4.59, 32);
INSERT INTO CustomerCareFact VALUES (97, 291, 8, 22, 'Call', 2.98, 32);
INSERT INTO CustomerCareFact VALUES (98, 132, 6, 35, 'Call', 4.51, 33);
INSERT INTO CustomerCareFact VALUES (99, 135, 7, 21, 'Chat', 2.29, 20);
INSERT INTO CustomerCareFact VALUES (100, 139, 2, 39, 'Call', 4.29, 14);
INSERT INTO CustomerCareFact VALUES (101, 160, 6, 26, 'Chat', 3.27, 16);
INSERT INTO CustomerCareFact VALUES (102, 190, 6, 15, 'Chat', 3.32, 2);
INSERT INTO CustomerCareFact VALUES (103, 91, 3, 19, 'Call', 2.04, 41);
INSERT INTO CustomerCareFact VALUES (104, 205, 1, 3, 'In-Person', 4.49, 45);
INSERT INTO CustomerCareFact VALUES (105, 270, 3, 48, 'In-Person', 2.14, 1);
INSERT INTO CustomerCareFact VALUES (106, 229, 3, 23, 'Email', 3.81, 32);
INSERT INTO CustomerCareFact VALUES (107, 276, 6, 12, 'Email', 2.26, 18);
INSERT INTO CustomerCareFact VALUES (108, 141, 10, 5, 'Email', 4.08, 16);
INSERT INTO CustomerCareFact VALUES (109, 75, 10, 2, 'Call', 4.10, 3);
INSERT INTO CustomerCareFact VALUES (110, 163, 1, 10, 'Call', 1.76, 39);
INSERT INTO CustomerCareFact VALUES (111, 5, 8, 26, 'Call', 4.94, 58);
INSERT INTO CustomerCareFact VALUES (112, 207, 7, 31, 'In-Person', 3.02, 12);
INSERT INTO CustomerCareFact VALUES (113, 349, 2, 21, 'Chat', 4.19, 7);
INSERT INTO CustomerCareFact VALUES (114, 104, 10, 35, 'Call', 1.84, 34);
INSERT INTO CustomerCareFact VALUES (115, 97, 10, 17, 'Call', 1.58, 34);
INSERT INTO CustomerCareFact VALUES (116, 88, 8, 8, 'Email', 3.10, 27);
INSERT INTO CustomerCareFact VALUES (117, 154, 5, 41, 'Email', 2.95, 15);
INSERT INTO CustomerCareFact VALUES (118, 163, 5, 7, 'Call', 4.07, 44);
INSERT INTO CustomerCareFact VALUES (119, 84, 6, 36, 'In-Person', 4.55, 33);
INSERT INTO CustomerCareFact VALUES (120, 327, 6, 13, 'In-Person', 3.12, 48);
INSERT INTO CustomerCareFact VALUES (121, 4, 5, 23, 'Call', 1.42, 6);
INSERT INTO CustomerCareFact VALUES (122, 89, 2, 14, 'Chat', 3.18, 1);
INSERT INTO CustomerCareFact VALUES (123, 357, 4, 45, 'Email', 3.78, 43);
INSERT INTO CustomerCareFact VALUES (124, 55, 2, 10, 'Email', 1.97, 50);
INSERT INTO CustomerCareFact VALUES (125, 124, 10, 49, 'In-Person', 1.89, 35);
INSERT INTO CustomerCareFact VALUES (126, 30, 9, 32, 'Call', 1.43, 16);
INSERT INTO CustomerCareFact VALUES (127, 347, 8, 20, 'Call', 2.06, 19);
INSERT INTO CustomerCareFact VALUES (128, 179, 7, 43, 'Chat', 4.56, 15);
INSERT INTO CustomerCareFact VALUES (129, 197, 3, 49, 'Chat', 1.69, 41);
INSERT INTO CustomerCareFact VALUES (130, 218, 2, 47, 'In-Person', 4.41, 38);

commit;
INSERT INTO CustomerCareFact VALUES (131, 17, 7, 33, 'Call', 1.16, 52);
INSERT INTO CustomerCareFact VALUES (132, 262, 2, 24, 'Call', 4.63, 59);
INSERT INTO CustomerCareFact VALUES (133, 263, 8, 10, 'Email', 3.22, 1);
INSERT INTO CustomerCareFact VALUES (134, 194, 7, 24, 'Chat', 2.01, 53);
INSERT INTO CustomerCareFact VALUES (135, 55, 3, 8, 'Email', 1.03, 32);
INSERT INTO CustomerCareFact VALUES (136, 293, 10, 38, 'In-Person', 2.56, 16);
INSERT INTO CustomerCareFact VALUES (137, 183, 3, 38, 'Chat', 1.34, 13);
INSERT INTO CustomerCareFact VALUES (138, 206, 8, 30, 'In-Person', 4.46, 52);
INSERT INTO CustomerCareFact VALUES (139, 163, 2, 25, 'Call', 2.49, 59);
INSERT INTO CustomerCareFact VALUES (140, 129, 7, 47, 'Call', 4.92, 35);
INSERT INTO CustomerCareFact VALUES (141, 193, 7, 17, 'Email', 2.44, 21);
INSERT INTO CustomerCareFact VALUES (142, 357, 10, 4, 'Chat', 2.10, 32);
INSERT INTO CustomerCareFact VALUES (143, 104, 5, 13, 'Email', 3.67, 31);
INSERT INTO CustomerCareFact VALUES (144, 181, 9, 1, 'Chat', 2.44, 3);
INSERT INTO CustomerCareFact VALUES (145, 210, 9, 38, 'In-Person', 4.32, 22);
INSERT INTO CustomerCareFact VALUES (146, 191, 7, 17, 'Call', 4.34, 35);
INSERT INTO CustomerCareFact VALUES (147, 3, 6, 13, 'Call', 2.26, 60);
INSERT INTO CustomerCareFact VALUES (148, 79, 9, 41, 'Email', 2.21, 58);
INSERT INTO CustomerCareFact VALUES (149, 346, 4, 2, 'In-Person', 3.96, 3);
INSERT INTO CustomerCareFact VALUES (150, 254, 3, 14, 'In-Person', 4.55, 13);
INSERT INTO CustomerCareFact VALUES (151, 273, 7, 50, 'Call', 4.20, 39);
INSERT INTO CustomerCareFact VALUES (152, 277, 8, 1, 'In-Person', 2.94, 31);
INSERT INTO CustomerCareFact VALUES (153, 363, 8, 34, 'Call', 1.49, 44);
INSERT INTO CustomerCareFact VALUES (154, 182, 7, 38, 'Chat', 2.26, 44);
INSERT INTO CustomerCareFact VALUES (155, 62, 10, 10, 'In-Person', 2.61, 1);
INSERT INTO CustomerCareFact VALUES (156, 330, 2, 35, 'In-Person', 2.75, 47);
INSERT INTO CustomerCareFact VALUES (157, 69, 9, 19, 'Chat', 4.74, 44);
INSERT INTO CustomerCareFact VALUES (158, 80, 4, 26, 'In-Person', 3.81, 24);
INSERT INTO CustomerCareFact VALUES (159, 184, 1, 20, 'In-Person', 3.39, 34);
INSERT INTO CustomerCareFact VALUES (160, 293, 7, 40, 'Chat', 3.42, 41);
INSERT INTO CustomerCareFact VALUES (161, 153, 2, 33, 'In-Person', 2.99, 58);
INSERT INTO CustomerCareFact VALUES (162, 319, 6, 36, 'Email', 4.31, 25);
INSERT INTO CustomerCareFact VALUES (163, 182, 3, 39, 'Chat', 3.95, 60);
INSERT INTO CustomerCareFact VALUES (164, 352, 2, 19, 'Email', 4.40, 40);
INSERT INTO CustomerCareFact VALUES (165, 80, 7, 11, 'Chat', 4.96, 37);
INSERT INTO CustomerCareFact VALUES (166, 40, 3, 8, 'Call', 2.13, 12);
INSERT INTO CustomerCareFact VALUES (167, 365, 1, 31, 'Call', 2.68, 38);
INSERT INTO CustomerCareFact VALUES (168, 144, 10, 48, 'Email', 3.88, 60);
INSERT INTO CustomerCareFact VALUES (169, 221, 10, 26, 'Chat', 2.45, 7);
INSERT INTO CustomerCareFact VALUES (170, 272, 9, 18, 'Chat', 1.48, 55);
INSERT INTO CustomerCareFact VALUES (171, 229, 3, 5, 'In-Person', 2.80, 31);
INSERT INTO CustomerCareFact VALUES (172, 234, 7, 42, 'In-Person', 2.86, 20);
INSERT INTO CustomerCareFact VALUES (173, 334, 6, 23, 'Call', 3.54, 52);
INSERT INTO CustomerCareFact VALUES (174, 277, 4, 46, 'Email', 2.03, 35);
INSERT INTO CustomerCareFact VALUES (175, 169, 9, 43, 'Email', 4.82, 51);
INSERT INTO CustomerCareFact VALUES (176, 16, 5, 41, 'Email', 2.16, 25);
INSERT INTO CustomerCareFact VALUES (177, 167, 8, 32, 'Email', 2.12, 54);
INSERT INTO CustomerCareFact VALUES (178, 257, 7, 40, 'Call', 4.70, 35);
INSERT INTO CustomerCareFact VALUES (179, 84, 5, 25, 'Call', 2.02, 36);
INSERT INTO CustomerCareFact VALUES (180, 303, 6, 49, 'Email', 2.45, 21);
INSERT INTO CustomerCareFact VALUES (181, 261, 6, 34, 'Call', 4.53, 4);
INSERT INTO CustomerCareFact VALUES (182, 130, 6, 46, 'Email', 3.26, 39);
INSERT INTO CustomerCareFact VALUES (183, 185, 8, 40, 'In-Person', 3.35, 12);
INSERT INTO CustomerCareFact VALUES (184, 269, 1, 27, 'Chat', 1.58, 17);
INSERT INTO CustomerCareFact VALUES (185, 10, 8, 9, 'In-Person', 3.85, 47);
INSERT INTO CustomerCareFact VALUES (186, 143, 7, 11, 'In-Person', 3.35, 2);
INSERT INTO CustomerCareFact VALUES (187, 70, 5, 24, 'Email', 4.40, 52);
INSERT INTO CustomerCareFact VALUES (188, 331, 1, 9, 'Email', 1.49, 58);
INSERT INTO CustomerCareFact VALUES (189, 40, 7, 39, 'Email', 1.07, 6);
INSERT INTO CustomerCareFact VALUES (190, 32, 1, 15, 'Chat', 1.04, 34);
INSERT INTO CustomerCareFact VALUES (191, 11, 9, 11, 'In-Person', 3.61, 7);
INSERT INTO CustomerCareFact VALUES (192, 75, 8, 30, 'In-Person', 3.01, 2);
INSERT INTO CustomerCareFact VALUES (193, 197, 2, 2, 'Email', 3.96, 22);
INSERT INTO CustomerCareFact VALUES (194, 240, 5, 19, 'Email', 3.67, 45);
INSERT INTO CustomerCareFact VALUES (195, 32, 5, 25, 'Email', 2.47, 2);
INSERT INTO CustomerCareFact VALUES (196, 100, 9, 1, 'Email', 4.19, 36);
INSERT INTO CustomerCareFact VALUES (197, 267, 7, 8, 'Chat', 3.06, 48);
INSERT INTO CustomerCareFact VALUES (198, 183, 10, 14, 'Chat', 1.87, 55);
INSERT INTO CustomerCareFact VALUES (199, 81, 5, 9, 'In-Person', 3.02, 47);
INSERT INTO CustomerCareFact VALUES (200, 183, 9, 39, 'In-Person', 3.24, 9);
INSERT INTO CustomerCareFact VALUES (201, 143, 3, 16, 'In-Person', 4.25, 7);
INSERT INTO CustomerCareFact VALUES (202, 319, 2, 4, 'Call', 3.41, 37);
INSERT INTO CustomerCareFact VALUES (203, 114, 1, 43, 'Chat', 3.64, 5);
INSERT INTO CustomerCareFact VALUES (204, 304, 6, 13, 'Call', 3.08, 22);
INSERT INTO CustomerCareFact VALUES (205, 109, 4, 36, 'Call', 3.08, 22);
INSERT INTO CustomerCareFact VALUES (206, 280, 2, 5, 'Email', 4.84, 42);
INSERT INTO CustomerCareFact VALUES (207, 334, 3, 18, 'In-Person', 1.73, 57);
INSERT INTO CustomerCareFact VALUES (208, 352, 6, 43, 'In-Person', 4.73, 27);
INSERT INTO CustomerCareFact VALUES (209, 257, 5, 41, 'In-Person', 4.30, 18);
INSERT INTO CustomerCareFact VALUES (210, 355, 2, 10, 'Chat', 3.32, 42);
INSERT INTO CustomerCareFact VALUES (211, 365, 10, 33, 'In-Person', 1.92, 8);
INSERT INTO CustomerCareFact VALUES (212, 232, 6, 45, 'In-Person', 1.48, 58);
INSERT INTO CustomerCareFact VALUES (213, 304, 4, 36, 'Chat', 4.62, 42);
INSERT INTO CustomerCareFact VALUES (214, 53, 7, 38, 'Chat', 2.79, 7);
INSERT INTO CustomerCareFact VALUES (215, 324, 2, 38, 'Call', 3.69, 35);
INSERT INTO CustomerCareFact VALUES (216, 106, 4, 33, 'Call', 4.98, 15);
INSERT INTO CustomerCareFact VALUES (217, 196, 7, 15, 'Chat', 2.90, 35);
INSERT INTO CustomerCareFact VALUES (218, 27, 6, 9, 'In-Person', 1.12, 15);
INSERT INTO CustomerCareFact VALUES (219, 277, 10, 47, 'In-Person', 2.27, 26);
INSERT INTO CustomerCareFact VALUES (220, 355, 5, 38, 'Chat', 3.74, 4);
INSERT INTO CustomerCareFact VALUES (221, 110, 2, 34, 'Call', 1.88, 24);
INSERT INTO CustomerCareFact VALUES (222, 148, 5, 23, 'Chat', 3.80, 7);
INSERT INTO CustomerCareFact VALUES (223, 257, 9, 30, 'Call', 2.12, 3);
INSERT INTO CustomerCareFact VALUES (224, 128, 5, 36, 'Email', 4.12, 11);
INSERT INTO CustomerCareFact VALUES (225, 19, 8, 6, 'Call', 1.26, 43);
INSERT INTO CustomerCareFact VALUES (226, 139, 8, 17, 'Call', 3.68, 51);
INSERT INTO CustomerCareFact VALUES (227, 115, 10, 8, 'Call', 1.70, 20);
INSERT INTO CustomerCareFact VALUES (228, 48, 7, 9, 'Call', 1.29, 40);
INSERT INTO CustomerCareFact VALUES (229, 354, 4, 42, 'Call', 3.97, 1);
INSERT INTO CustomerCareFact VALUES (230, 82, 2, 33, 'Chat', 1.04, 35);
INSERT INTO CustomerCareFact VALUES (231, 273, 8, 40, 'In-Person', 4.74, 53);
INSERT INTO CustomerCareFact VALUES (232, 23, 5, 23, 'Email', 1.15, 40);
INSERT INTO CustomerCareFact VALUES (233, 176, 2, 48, 'Chat', 3.24, 7);
INSERT INTO CustomerCareFact VALUES (234, 38, 6, 4, 'Chat', 2.19, 8);
INSERT INTO CustomerCareFact VALUES (235, 49, 2, 27, 'Chat', 2.35, 29);
INSERT INTO CustomerCareFact VALUES (236, 147, 1, 33, 'In-Person', 1.13, 49);
INSERT INTO CustomerCareFact VALUES (237, 172, 2, 34, 'In-Person', 4.81, 54);
INSERT INTO CustomerCareFact VALUES (238, 71, 4, 15, 'Chat', 1.89, 30);
INSERT INTO CustomerCareFact VALUES (239, 205, 10, 10, 'Email', 4.41, 29);
INSERT INTO CustomerCareFact VALUES (240, 170, 5, 44, 'Chat', 3.88, 31);
INSERT INTO CustomerCareFact VALUES (241, 221, 4, 22, 'Email', 2.89, 9);
INSERT INTO CustomerCareFact VALUES (242, 23, 10, 22, 'In-Person', 3.73, 28);
INSERT INTO CustomerCareFact VALUES (243, 184, 6, 39, 'Email', 2.05, 9);
INSERT INTO CustomerCareFact VALUES (244, 350, 8, 18, 'Call', 1.77, 40);
INSERT INTO CustomerCareFact VALUES (245, 229, 9, 35, 'Chat', 4.33, 8);
INSERT INTO CustomerCareFact VALUES (246, 131, 5, 29, 'Chat', 1.95, 16);
INSERT INTO CustomerCareFact VALUES (247, 295, 9, 27, 'In-Person', 3.30, 37);
INSERT INTO CustomerCareFact VALUES (248, 161, 1, 24, 'Email', 3.66, 55);
INSERT INTO CustomerCareFact VALUES (249, 97, 8, 36, 'Email', 4.67, 21);
INSERT INTO CustomerCareFact VALUES (250, 44, 8, 35, 'Email', 4.04, 31);
INSERT INTO CustomerCareFact VALUES (251, 85, 8, 22, 'Chat', 3.99, 50);
INSERT INTO CustomerCareFact VALUES (252, 295, 6, 17, 'In-Person', 1.36, 60);
INSERT INTO CustomerCareFact VALUES (253, 156, 7, 22, 'Email', 3.73, 25);
INSERT INTO CustomerCareFact VALUES (254, 45, 8, 15, 'Email', 1.95, 49);
INSERT INTO CustomerCareFact VALUES (255, 357, 1, 15, 'Email', 3.45, 21);
INSERT INTO CustomerCareFact VALUES (256, 56, 10, 2, 'In-Person', 2.73, 36);
INSERT INTO CustomerCareFact VALUES (257, 156, 2, 40, 'Call', 3.56, 8);
INSERT INTO CustomerCareFact VALUES (258, 136, 2, 7, 'Call', 4.29, 58);
INSERT INTO CustomerCareFact VALUES (259, 19, 5, 30, 'Email', 2.71, 20);
INSERT INTO CustomerCareFact VALUES (260, 285, 8, 18, 'Chat', 4.19, 29);
INSERT INTO CustomerCareFact VALUES (261, 242, 6, 33, 'Email', 3.43, 9);
INSERT INTO CustomerCareFact VALUES (262, 306, 8, 25, 'Email', 3.67, 46);
INSERT INTO CustomerCareFact VALUES (263, 217, 9, 34, 'In-Person', 1.86, 43);
INSERT INTO CustomerCareFact VALUES (264, 137, 1, 13, 'Chat', 2.73, 14);

INSERT INTO CustomerCareFact VALUES (265, 173, 9, 11, 'Chat', 2.14, 41);
INSERT INTO CustomerCareFact VALUES (266, 9, 5, 5, 'Email', 4.89, 46);
INSERT INTO CustomerCareFact VALUES (267, 233, 5, 30, 'In-Person', 3.89, 19);
INSERT INTO CustomerCareFact VALUES (268, 197, 1, 2, 'In-Person', 2.95, 35);
INSERT INTO CustomerCareFact VALUES (269, 97, 2, 21, 'Call', 3.36, 9);
INSERT INTO CustomerCareFact VALUES (270, 31, 5, 25, 'Chat', 3.91, 52);
INSERT INTO CustomerCareFact VALUES (271, 162, 2, 34, 'In-Person', 1.99, 60);
INSERT INTO CustomerCareFact VALUES (272, 310, 9, 41, 'Chat', 2.85, 9);
INSERT INTO CustomerCareFact VALUES (273, 268, 10, 30, 'In-Person', 3.62, 2);
INSERT INTO CustomerCareFact VALUES (274, 341, 1, 45, 'Chat', 2.90, 9);
INSERT INTO CustomerCareFact VALUES (275, 81, 6, 32, 'In-Person', 1.63, 15);
INSERT INTO CustomerCareFact VALUES (276, 296, 9, 33, 'Chat', 3.49, 59);
INSERT INTO CustomerCareFact VALUES (277, 182, 6, 16, 'In-Person', 2.71, 48);
INSERT INTO CustomerCareFact VALUES (278, 142, 4, 30, 'In-Person', 2.41, 22);
INSERT INTO CustomerCareFact VALUES (279, 122, 5, 39, 'Call', 4.63, 38);
INSERT INTO CustomerCareFact VALUES (280, 159, 7, 38, 'Chat', 1.05, 44);
INSERT INTO CustomerCareFact VALUES (281, 328, 1, 9, 'Call', 1.14, 21);
INSERT INTO CustomerCareFact VALUES (282, 3, 2, 2, 'Chat', 4.50, 2);
INSERT INTO CustomerCareFact VALUES (283, 86, 9, 32, 'Email', 1.09, 52);
INSERT INTO CustomerCareFact VALUES (284, 1, 4, 23, 'Email', 3.07, 11);
INSERT INTO CustomerCareFact VALUES (285, 356, 6, 1, 'In-Person', 3.55, 31);
INSERT INTO CustomerCareFact VALUES (286, 345, 9, 33, 'In-Person', 3.10, 43);
INSERT INTO CustomerCareFact VALUES (287, 362, 7, 40, 'Chat', 2.28, 52);
INSERT INTO CustomerCareFact VALUES (288, 142, 10, 15, 'Email', 4.88, 21);
INSERT INTO CustomerCareFact VALUES (289, 110, 9, 17, 'In-Person', 3.45, 15);
INSERT INTO CustomerCareFact VALUES (290, 40, 1, 23, 'Call', 1.65, 15);
INSERT INTO CustomerCareFact VALUES (291, 329, 8, 31, 'Call', 1.58, 17);
INSERT INTO CustomerCareFact VALUES (292, 150, 9, 6, 'Chat', 3.12, 48);
INSERT INTO CustomerCareFact VALUES (293, 150, 2, 21, 'Chat', 1.98, 6);
INSERT INTO CustomerCareFact VALUES (294, 118, 10, 8, 'Call', 3.01, 45);
INSERT INTO CustomerCareFact VALUES (295, 58, 2, 30, 'Call', 1.95, 1);
INSERT INTO CustomerCareFact VALUES (296, 151, 5, 20, 'Call', 3.99, 28);
INSERT INTO CustomerCareFact VALUES (297, 70, 3, 45, 'In-Person', 4.09, 12);
INSERT INTO CustomerCareFact VALUES (298, 52, 4, 26, 'Call', 2.19, 19);
INSERT INTO CustomerCareFact VALUES (299, 152, 9, 35, 'Call', 3.25, 18);
INSERT INTO CustomerCareFact VALUES (300, 150, 3, 11, 'Call', 1.87, 2);
INSERT INTO CustomerCareFact VALUES (301, 171, 2, 33, 'Chat', 3.72, 16);
INSERT INTO CustomerCareFact VALUES (302, 27, 8, 4, 'Call', 4.13, 53);
INSERT INTO CustomerCareFact VALUES (303, 188, 4, 22, 'Email', 2.74, 42);
INSERT INTO CustomerCareFact VALUES (304, 48, 3, 39, 'Call', 1.13, 20);
INSERT INTO CustomerCareFact VALUES (305, 235, 9, 40, 'Email', 1.50, 49);
INSERT INTO CustomerCareFact VALUES (306, 279, 6, 8, 'Email', 1.32, 12);
INSERT INTO CustomerCareFact VALUES (307, 181, 4, 26, 'Call', 4.10, 46);
INSERT INTO CustomerCareFact VALUES (308, 104, 1, 4, 'Chat', 4.63, 56);
INSERT INTO CustomerCareFact VALUES (309, 81, 3, 5, 'In-Person', 3.52, 58);
INSERT INTO CustomerCareFact VALUES (310, 227, 3, 34, 'Call', 4.56, 9);
INSERT INTO CustomerCareFact VALUES (311, 167, 3, 40, 'Call', 1.98, 28);
INSERT INTO CustomerCareFact VALUES (312, 28, 2, 21, 'Call', 2.02, 39);
INSERT INTO CustomerCareFact VALUES (313, 254, 4, 18, 'In-Person', 4.76, 39);
INSERT INTO CustomerCareFact VALUES (314, 245, 1, 30, 'In-Person', 3.92, 45);
INSERT INTO CustomerCareFact VALUES (315, 251, 9, 5, 'In-Person', 2.53, 53);
INSERT INTO CustomerCareFact VALUES (316, 104, 8, 29, 'Chat', 3.80, 1);
INSERT INTO CustomerCareFact VALUES (317, 79, 10, 8, 'Call', 3.80, 15);
INSERT INTO CustomerCareFact VALUES (318, 155, 7, 26, 'Email', 4.43, 6);
INSERT INTO CustomerCareFact VALUES (319, 235, 6, 19, 'Chat', 3.10, 54);
INSERT INTO CustomerCareFact VALUES (320, 200, 10, 16, 'Email', 3.28, 34);
INSERT INTO CustomerCareFact VALUES (321, 324, 3, 37, 'Chat', 1.90, 58);
INSERT INTO CustomerCareFact VALUES (322, 153, 8, 10, 'Email', 1.02, 19);
INSERT INTO CustomerCareFact VALUES (323, 227, 7, 18, 'Chat', 2.84, 38);
INSERT INTO CustomerCareFact VALUES (324, 353, 10, 42, 'Chat', 3.50, 19);
INSERT INTO CustomerCareFact VALUES (325, 180, 10, 42, 'Chat', 2.74, 27);
INSERT INTO CustomerCareFact VALUES (326, 327, 6, 42, 'In-Person', 1.30, 17);
INSERT INTO CustomerCareFact VALUES (327, 223, 3, 1, 'Email', 1.58, 14);
INSERT INTO CustomerCareFact VALUES (328, 224, 8, 39, 'In-Person', 2.26, 57);
INSERT INTO CustomerCareFact VALUES (329, 227, 4, 50, 'Chat', 2.86, 28);
INSERT INTO CustomerCareFact VALUES (330, 39, 8, 12, 'Chat', 1.47, 33);
INSERT INTO CustomerCareFact VALUES (331, 314, 7, 38, 'Call', 4.58, 6);
INSERT INTO CustomerCareFact VALUES (332, 8, 10, 26, 'In-Person', 3.98, 54);
INSERT INTO CustomerCareFact VALUES (333, 44, 6, 3, 'Chat', 1.05, 2);
INSERT INTO CustomerCareFact VALUES (334, 85, 6, 44, 'Call', 2.51, 34);
INSERT INTO CustomerCareFact VALUES (335, 149, 10, 5, 'Call', 4.58, 11);
INSERT INTO CustomerCareFact VALUES (336, 200, 3, 43, 'Call', 4.99, 45);
INSERT INTO CustomerCareFact VALUES (337, 67, 6, 7, 'Chat', 3.48, 26);
INSERT INTO CustomerCareFact VALUES (338, 194, 7, 6, 'Email', 3.29, 6);
INSERT INTO CustomerCareFact VALUES (339, 68, 1, 32, 'Chat', 2.88, 55);
INSERT INTO CustomerCareFact VALUES (340, 357, 5, 6, 'Email', 4.64, 2);
INSERT INTO CustomerCareFact VALUES (341, 298, 1, 19, 'Call', 2.51, 28);
INSERT INTO CustomerCareFact VALUES (342, 55, 8, 11, 'Call', 3.33, 4);
INSERT INTO CustomerCareFact VALUES (343, 258, 7, 14, 'Chat', 3.40, 48);
INSERT INTO CustomerCareFact VALUES (344, 218, 6, 23, 'Email', 1.77, 39);
INSERT INTO CustomerCareFact VALUES (345, 196, 3, 43, 'In-Person', 3.26, 39);
INSERT INTO CustomerCareFact VALUES (346, 338, 8, 16, 'Email', 2.99, 59);
INSERT INTO CustomerCareFact VALUES (347, 86, 3, 24, 'Email', 3.93, 25);
INSERT INTO CustomerCareFact VALUES (348, 152, 8, 22, 'Email', 4.79, 21);
INSERT INTO CustomerCareFact VALUES (349, 131, 1, 19, 'Call', 3.69, 48);
INSERT INTO CustomerCareFact VALUES (350, 215, 7, 26, 'Call', 1.01, 20);
INSERT INTO CustomerCareFact VALUES (351, 117, 5, 10, 'Call', 4.65, 40);
INSERT INTO CustomerCareFact VALUES (352, 123, 3, 17, 'Email', 1.62, 52);
INSERT INTO CustomerCareFact VALUES (353, 286, 1, 12, 'Chat', 4.86, 39);
INSERT INTO CustomerCareFact VALUES (354, 154, 5, 41, 'Call', 2.89, 8);
INSERT INTO CustomerCareFact VALUES (355, 234, 9, 18, 'Chat', 2.00, 35);
INSERT INTO CustomerCareFact VALUES (356, 263, 4, 28, 'Chat', 4.27, 53);
INSERT INTO CustomerCareFact VALUES (357, 361, 3, 45, 'Email', 4.95, 17);
INSERT INTO CustomerCareFact VALUES (358, 235, 5, 49, 'Call', 2.26, 7);
INSERT INTO CustomerCareFact VALUES (359, 274, 2, 32, 'Email', 4.03, 12);
INSERT INTO CustomerCareFact VALUES (360, 363, 1, 35, 'Call', 1.88, 1);
INSERT INTO CustomerCareFact VALUES (361, 11, 9, 5, 'In-Person', 1.72, 18);
INSERT INTO CustomerCareFact VALUES (362, 330, 4, 40, 'Call', 1.61, 33);
INSERT INTO CustomerCareFact VALUES (363, 65, 6, 50, 'Chat', 2.35, 56);
INSERT INTO CustomerCareFact VALUES (364, 282, 4, 27, 'Email', 3.53, 2);
INSERT INTO CustomerCareFact VALUES (365, 68, 3, 5, 'In-Person', 1.61, 54);
INSERT INTO CustomerCareFact VALUES (366, 228, 10, 35, 'Call', 3.18, 15);
INSERT INTO CustomerCareFact VALUES (367, 101, 6, 6, 'Email', 1.31, 57);
INSERT INTO CustomerCareFact VALUES (368, 343, 5, 13, 'Call', 2.01, 42);
INSERT INTO CustomerCareFact VALUES (369, 356, 3, 31, 'Chat', 2.49, 54);
INSERT INTO CustomerCareFact VALUES (370, 132, 1, 41, 'Chat', 1.45, 51);
INSERT INTO CustomerCareFact VALUES (371, 36, 3, 25, 'Call', 2.41, 11);
INSERT INTO CustomerCareFact VALUES (372, 158, 10, 20, 'Call', 4.96, 51);
INSERT INTO CustomerCareFact VALUES (373, 122, 9, 20, 'Email', 3.25, 36);
INSERT INTO CustomerCareFact VALUES (374, 323, 2, 10, 'Chat', 2.99, 36);
INSERT INTO CustomerCareFact VALUES (375, 135, 2, 6, 'In-Person', 1.46, 27);
INSERT INTO CustomerCareFact VALUES (376, 218, 10, 16, 'Call', 4.21, 39);
INSERT INTO CustomerCareFact VALUES (377, 319, 9, 35, 'Call', 3.39, 14);
INSERT INTO CustomerCareFact VALUES (378, 313, 3, 22, 'Chat', 1.24, 39);
INSERT INTO CustomerCareFact VALUES (379, 353, 7, 23, 'In-Person', 3.53, 42);
INSERT INTO CustomerCareFact VALUES (380, 14, 4, 27, 'Call', 4.31, 20);
INSERT INTO CustomerCareFact VALUES (381, 46, 7, 48, 'In-Person', 2.42, 36);
INSERT INTO CustomerCareFact VALUES (382, 278, 10, 26, 'Call', 2.47, 32);
INSERT INTO CustomerCareFact VALUES (383, 130, 8, 47, 'Email', 3.91, 52);
INSERT INTO CustomerCareFact VALUES (384, 343, 1, 28, 'In-Person', 3.75, 43);
INSERT INTO CustomerCareFact VALUES (385, 18, 2, 19, 'Email', 4.13, 17);
INSERT INTO CustomerCareFact VALUES (386, 153, 4, 49, 'Call', 3.79, 56);
INSERT INTO CustomerCareFact VALUES (387, 311, 6, 2, 'Chat', 1.42, 13);
INSERT INTO CustomerCareFact VALUES (388, 226, 1, 8, 'In-Person', 1.76, 49);
INSERT INTO CustomerCareFact VALUES (389, 14, 1, 35, 'Email', 1.88, 59);
INSERT INTO CustomerCareFact VALUES (390, 331, 10, 28, 'In-Person', 4.57, 19);
INSERT INTO CustomerCareFact VALUES (391, 324, 2, 34, 'In-Person', 2.30, 13);
INSERT INTO CustomerCareFact VALUES (392, 117, 2, 30, 'Call', 1.25, 18);
INSERT INTO CustomerCareFact VALUES (393, 339, 9, 40, 'Chat', 4.49, 29);
INSERT INTO CustomerCareFact VALUES (394, 103, 3, 18, 'Call', 1.07, 13);
INSERT INTO CustomerCareFact VALUES (395, 187, 2, 40, 'Call', 1.80, 8);
INSERT INTO CustomerCareFact VALUES (396, 187, 6, 45, 'Chat', 4.41, 52);
INSERT INTO CustomerCareFact VALUES (397, 168, 3, 17, 'Chat', 3.48, 38);
INSERT INTO CustomerCareFact VALUES (398, 330, 7, 8, 'Call', 1.66, 51);
INSERT INTO CustomerCareFact VALUES (399, 41, 5, 48, 'Email', 3.63, 6);
INSERT INTO CustomerCareFact VALUES (400, 231, 5, 35, 'Chat', 1.27, 30);



INSERT INTO CustomerCareFact VALUES (401, 319, 5, 22, 'Call', 3.80, 8);
INSERT INTO CustomerCareFact VALUES (402, 261, 3, 44, 'Email', 3.49, 4);
INSERT INTO CustomerCareFact VALUES (403, 305, 2, 32, 'Chat', 3.32, 32);
INSERT INTO CustomerCareFact VALUES (404, 131, 10, 45, 'Call', 2.37, 46);
INSERT INTO CustomerCareFact VALUES (405, 253, 7, 4, 'In-Person', 1.27, 3);
INSERT INTO CustomerCareFact VALUES (406, 94, 7, 29, 'Chat', 2.98, 60);
INSERT INTO CustomerCareFact VALUES (407, 293, 2, 31, 'In-Person', 3.65, 35);
INSERT INTO CustomerCareFact VALUES (408, 338, 3, 18, 'Call', 4.61, 56);
INSERT INTO CustomerCareFact VALUES (409, 69, 7, 45, 'Chat', 2.98, 15);
INSERT INTO CustomerCareFact VALUES (410, 128, 7, 25, 'In-Person', 2.14, 14);
INSERT INTO CustomerCareFact VALUES (411, 323, 10, 1, 'Chat', 1.63, 33);
INSERT INTO CustomerCareFact VALUES (412, 352, 2, 42, 'Email', 3.80, 4);
INSERT INTO CustomerCareFact VALUES (413, 105, 7, 45, 'Email', 4.31, 29);
INSERT INTO CustomerCareFact VALUES (414, 28, 10, 43, 'In-Person', 1.54, 21);
INSERT INTO CustomerCareFact VALUES (415, 292, 2, 4, 'Chat', 3.95, 53);
INSERT INTO CustomerCareFact VALUES (416, 349, 6, 43, 'Chat', 4.96, 54);
INSERT INTO CustomerCareFact VALUES (417, 243, 6, 49, 'In-Person', 4.29, 28);
INSERT INTO CustomerCareFact VALUES (418, 188, 4, 34, 'Call', 1.51, 3);
INSERT INTO CustomerCareFact VALUES (419, 250, 3, 29, 'In-Person', 4.30, 49);
INSERT INTO CustomerCareFact VALUES (420, 94, 2, 47, 'Chat', 2.00, 52);
INSERT INTO CustomerCareFact VALUES (421, 89, 5, 28, 'Email', 2.88, 26);
INSERT INTO CustomerCareFact VALUES (422, 322, 8, 13, 'Chat', 4.53, 17);
INSERT INTO CustomerCareFact VALUES (423, 45, 1, 15, 'Call', 3.24, 55);
INSERT INTO CustomerCareFact VALUES (424, 48, 5, 18, 'Email', 4.77, 10);
INSERT INTO CustomerCareFact VALUES (425, 300, 5, 29, 'Call', 4.50, 19);
INSERT INTO CustomerCareFact VALUES (426, 78, 7, 6, 'In-Person', 3.85, 54);
INSERT INTO CustomerCareFact VALUES (427, 350, 10, 45, 'Call', 2.47, 43);
INSERT INTO CustomerCareFact VALUES (428, 294, 8, 49, 'Call', 2.20, 56);
INSERT INTO CustomerCareFact VALUES (429, 265, 4, 17, 'In-Person', 1.33, 30);
INSERT INTO CustomerCareFact VALUES (430, 8, 5, 7, 'In-Person', 1.71, 29);
INSERT INTO CustomerCareFact VALUES (431, 136, 7, 38, 'Email', 2.22, 17);
INSERT INTO CustomerCareFact VALUES (432, 53, 2, 7, 'Call', 4.71, 42);
INSERT INTO CustomerCareFact VALUES (433, 332, 9, 31, 'In-Person', 4.37, 55);
INSERT INTO CustomerCareFact VALUES (434, 52, 7, 14, 'Email', 2.55, 10);
INSERT INTO CustomerCareFact VALUES (435, 71, 8, 50, 'Chat', 2.37, 55);
INSERT INTO CustomerCareFact VALUES (436, 123, 4, 42, 'Call', 3.67, 17);
INSERT INTO CustomerCareFact VALUES (437, 154, 5, 39, 'Email', 3.35, 7);
INSERT INTO CustomerCareFact VALUES (438, 161, 4, 16, 'Call', 3.81, 21);
INSERT INTO CustomerCareFact VALUES (439, 60, 5, 9, 'Chat', 4.53, 23);
INSERT INTO CustomerCareFact VALUES (440, 240, 3, 6, 'Call', 4.56, 58);
INSERT INTO CustomerCareFact VALUES (441, 86, 2, 18, 'Email', 2.43, 12);
INSERT INTO CustomerCareFact VALUES (442, 224, 4, 17, 'Email', 1.12, 56);
INSERT INTO CustomerCareFact VALUES (443, 48, 5, 31, 'Email', 4.60, 16);
INSERT INTO CustomerCareFact VALUES (444, 224, 10, 14, 'In-Person', 1.35, 51);
INSERT INTO CustomerCareFact VALUES (445, 123, 9, 9, 'In-Person', 1.18, 33);
INSERT INTO CustomerCareFact VALUES (446, 145, 1, 44, 'In-Person', 4.58, 37);
INSERT INTO CustomerCareFact VALUES (447, 291, 7, 26, 'Email', 3.15, 20);
INSERT INTO CustomerCareFact VALUES (448, 203, 7, 14, 'Call', 2.57, 10);
INSERT INTO CustomerCareFact VALUES (449, 339, 4, 8, 'In-Person', 3.41, 17);
INSERT INTO CustomerCareFact VALUES (450, 327, 10, 7, 'Chat', 3.53, 14);
INSERT INTO CustomerCareFact VALUES (451, 219, 4, 2, 'Call', 4.34, 5);
INSERT INTO CustomerCareFact VALUES (452, 201, 5, 30, 'Call', 4.23, 10);
INSERT INTO CustomerCareFact VALUES (453, 260, 8, 36, 'In-Person', 2.55, 30);
INSERT INTO CustomerCareFact VALUES (454, 350, 3, 2, 'Email', 2.28, 10);
INSERT INTO CustomerCareFact VALUES (455, 277, 8, 34, 'Call', 3.88, 13);
INSERT INTO CustomerCareFact VALUES (456, 267, 9, 38, 'In-Person', 2.64, 18);
INSERT INTO CustomerCareFact VALUES (457, 90, 7, 35, 'In-Person', 3.81, 8);
INSERT INTO CustomerCareFact VALUES (458, 302, 4, 9, 'Email', 4.06, 15);
INSERT INTO CustomerCareFact VALUES (459, 312, 4, 8, 'Email', 4.92, 52);
INSERT INTO CustomerCareFact VALUES (460, 356, 7, 25, 'Call', 4.32, 12);
INSERT INTO CustomerCareFact VALUES (461, 328, 2, 47, 'Chat', 1.81, 2);
INSERT INTO CustomerCareFact VALUES (462, 308, 10, 38, 'Email', 1.07, 7);
INSERT INTO CustomerCareFact VALUES (463, 32, 5, 40, 'Email', 4.66, 43);
INSERT INTO CustomerCareFact VALUES (464, 160, 7, 42, 'Chat', 1.68, 60);
INSERT INTO CustomerCareFact VALUES (465, 40, 5, 22, 'Email', 4.26, 2);
INSERT INTO CustomerCareFact VALUES (466, 164, 8, 37, 'In-Person', 2.46, 56);
INSERT INTO CustomerCareFact VALUES (467, 32, 1, 39, 'Email', 2.82, 37);
INSERT INTO CustomerCareFact VALUES (468, 237, 9, 37, 'Call', 1.38, 39);
INSERT INTO CustomerCareFact VALUES (469, 355, 3, 43, 'In-Person', 4.90, 49);
INSERT INTO CustomerCareFact VALUES (470, 311, 10, 37, 'In-Person', 2.69, 59);
INSERT INTO CustomerCareFact VALUES (471, 24, 7, 7, 'Call', 3.34, 11);
INSERT INTO CustomerCareFact VALUES (472, 132, 2, 43, 'In-Person', 2.96, 42);
INSERT INTO CustomerCareFact VALUES (473, 316, 9, 40, 'In-Person', 1.80, 34);
INSERT INTO CustomerCareFact VALUES (474, 134, 2, 28, 'Call', 2.87, 7);
INSERT INTO CustomerCareFact VALUES (475, 34, 2, 14, 'In-Person', 2.27, 22);
INSERT INTO CustomerCareFact VALUES (476, 286, 4, 25, 'Chat', 3.17, 49);
INSERT INTO CustomerCareFact VALUES (477, 5, 7, 22, 'Call', 1.32, 22);
INSERT INTO CustomerCareFact VALUES (478, 73, 8, 22, 'Email', 1.22, 15);
INSERT INTO CustomerCareFact VALUES (479, 166, 7, 21, 'Email', 2.58, 9);

INSERT INTO CustomerCareFact VALUES (480, 348, 9, 4, 'Email', 4.79, 42);
INSERT INTO CustomerCareFact VALUES (481, 283, 1, 39, 'Call', 4.70, 21);
INSERT INTO CustomerCareFact VALUES (482, 206, 3, 15, 'In-Person', 3.58, 16);
INSERT INTO CustomerCareFact VALUES (483, 174, 4, 31, 'In-Person', 2.83, 36);
INSERT INTO CustomerCareFact VALUES (484, 133, 6, 28, 'Chat', 1.06, 30);
INSERT INTO CustomerCareFact VALUES (485, 19, 8, 22, 'In-Person', 2.77, 58);
INSERT INTO CustomerCareFact VALUES (486, 262, 9, 3, 'Email', 2.81, 35);
INSERT INTO CustomerCareFact VALUES (487, 31, 5, 14, 'Call', 4.49, 39);
INSERT INTO CustomerCareFact VALUES (488, 222, 1, 38, 'Chat', 4.01, 20);
INSERT INTO CustomerCareFact VALUES (489, 332, 8, 22, 'Chat', 4.07, 41);
INSERT INTO CustomerCareFact VALUES (490, 99, 10, 22, 'Call', 1.90, 9);
INSERT INTO CustomerCareFact VALUES (491, 210, 10, 5, 'In-Person', 2.26, 47);
INSERT INTO CustomerCareFact VALUES (492, 250, 8, 8, 'Email', 2.28, 55);
INSERT INTO CustomerCareFact VALUES (493, 3, 6, 25, 'Call', 4.11, 7);
INSERT INTO CustomerCareFact VALUES (494, 193, 3, 39, 'Email', 4.20, 25);
INSERT INTO CustomerCareFact VALUES (495, 325, 6, 6, 'Chat', 1.08, 13);
INSERT INTO CustomerCareFact VALUES (496, 361, 6, 22, 'Chat', 1.71, 20);
INSERT INTO CustomerCareFact VALUES (497, 301, 2, 10, 'Call', 1.61, 21);
INSERT INTO CustomerCareFact VALUES (498, 73, 6, 22, 'In-Person', 1.76, 35);
INSERT INTO CustomerCareFact VALUES (499, 250, 5, 39, 'Chat', 4.99, 41);
INSERT INTO CustomerCareFact VALUES (500, 342, 2, 5, 'Call', 4.55, 16);