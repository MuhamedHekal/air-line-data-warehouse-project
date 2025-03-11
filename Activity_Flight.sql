-- Create aircraft_dim table
CREATE TABLE aircraft_dim (
    aircraft_id NUMBER PRIMARY KEY,
    aircraft_name VARCHAR2(100),
    number_of_seats NUMBER,
    aircraft_model VARCHAR2(50),
    manufacture_year NUMBER
);
INSERT ALL
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (1, 'EgyptAir Boeing 737', 160, 'Boeing 737-800', 2015)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (2, 'EgyptAir Airbus A320', 150, 'Airbus A320-200', 2018)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (3, 'EgyptAir Airbus A330', 277, 'Airbus A330-300', 2014)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (4, 'EgyptAir Boeing 777', 346, 'Boeing 777-300ER', 2013)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (5, 'EgyptAir Embraer E170', 76, 'Embraer E170', 2017)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (6, 'Nile Air Airbus A320', 164, 'Airbus A320-200', 2016)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (7, 'Nile Air Airbus A321', 200, 'Airbus A321-200', 2017)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (8, 'Air Cairo Airbus A320', 180, 'Airbus A320-200', 2019)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (9, 'Air Cairo Embraer E190', 120, 'Embraer E190', 2020)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (10, 'FlyEgypt Boeing 737', 189, 'Boeing 737-800', 2019)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (11, 'EgyptAir Express Embraer E170', 76, 'Embraer E170', 2015)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (12, 'Air Arabia Egypt Airbus A320', 168, 'Airbus A320-200', 2021)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (13, 'FlyEgypt Boeing 737 MAX', 210, 'Boeing 737 MAX 8', 2022)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (14, 'EgyptAir Cargo Airbus A330', 70, 'Airbus A330-200F', 2018)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (15, 'Air Cairo Boeing 737', 190, 'Boeing 737-800', 2018)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (16, 'EgyptAir Cargo Boeing 777', 102, 'Boeing 777F', 2020)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (17, 'EgyptAir Boeing 787', 296, 'Boeing 787-9 Dreamliner', 2021)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (18, 'Nile Air Boeing 737', 162, 'Boeing 737-800', 2016)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (19, 'EgyptAir Airbus A220', 140, 'Airbus A220-300', 2020)
    INTO aircraft_dim (aircraft_id, aircraft_name, number_of_seats, aircraft_model, manufacture_year) VALUES (20, 'EgyptAir Airbus A350', 314, 'Airbus A350-900', 2022)
SELECT 1 FROM DUAL;
------------------------------------------------------------------------------------

-- Create airport_dim table
CREATE TABLE airport_dim (
    airport_id NUMBER PRIMARY KEY,
    airport_code VARCHAR2(10),
    airport_name VARCHAR2(100),
    airport_city VARCHAR2(100),
    airport_location VARCHAR2(100)
);

-- Create customer_dim table
CREATE TABLE customer_dim (
    passenger_id NUMBER PRIMARY KEY,
    passenger_name VARCHAR2(100),
    passenger_dateOfBirth DATE,
    passenger_gender VARCHAR2(10),
    passenger_address VARCHAR2(200),
    passenger_phone VARCHAR2(15),
    passenger_points NUMBER,
    passenger_status VARCHAR2(50)
);
INSERT ALL
    INTO customer_dim (passenger_id, passenger_name, passenger_dateOfBirth, passenger_gender, passenger_address, passenger_phone, passenger_points, passenger_status) 
    VALUES (1, 'Ahmed Mohamed', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01001234567', 1200, 'Gold')

    INTO customer_dim VALUES (2, 'Sara Ahmed', TO_DATE('1990-12-20', 'YYYY-MM-DD'), 'Female', 'Alexandria, Egypt', '01009876543', 800, 'Silver')
    INTO customer_dim VALUES (3, 'Mohamed Hassan', TO_DATE('1978-08-05', 'YYYY-MM-DD'), 'Male', 'Giza, Egypt', '01102345678', 1500, 'Platinum')
    INTO customer_dim VALUES (4, 'Nour Amr', TO_DATE('1995-04-22', 'YYYY-MM-DD'), 'Female', 'Aswan, Egypt', '01205678901', 400, 'Bronze')
    INTO customer_dim VALUES (5, 'Khaled Ibrahim', TO_DATE('1983-09-30', 'YYYY-MM-DD'), 'Male', 'Mansoura, Egypt', '01501112233', 1300, 'Gold')
    INTO customer_dim VALUES (6, 'Yasmine Tamer', TO_DATE('1992-02-10', 'YYYY-MM-DD'), 'Female', 'Cairo, Egypt', '01003456789', 1100, 'Gold')
    INTO customer_dim VALUES (7, 'Omar Mostafa', TO_DATE('1987-07-14', 'YYYY-MM-DD'), 'Male', 'Sharm El-Sheikh, Egypt', '01007894561', 500, 'Silver')
    INTO customer_dim VALUES (8, 'Fatma Khaled', TO_DATE('1998-03-05', 'YYYY-MM-DD'), 'Female', 'Luxor, Egypt', '01102543678', 300, 'Bronze')
    INTO customer_dim VALUES (9, 'Ali Mahmoud', TO_DATE('1980-11-11', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01507896542', 2000, 'Platinum')
    INTO customer_dim VALUES (10, 'Huda Saeed', TO_DATE('1993-06-25', 'YYYY-MM-DD'), 'Female', 'Alexandria, Egypt', '01207894561', 600, 'Silver')

    INTO customer_dim VALUES (11, 'Karim Nabil', TO_DATE('1989-10-10', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01011223344', 750, 'Silver')
    INTO customer_dim VALUES (12, 'Rania Sameh', TO_DATE('1996-08-08', 'YYYY-MM-DD'), 'Female', 'Giza, Egypt', '01105677899', 450, 'Bronze')
    INTO customer_dim VALUES (13, 'Mostafa Galal', TO_DATE('1984-04-04', 'YYYY-MM-DD'), 'Male', 'Fayoum, Egypt', '01503456578', 1600, 'Gold')
    INTO customer_dim VALUES (14, 'Salma Hossam', TO_DATE('1997-01-17', 'YYYY-MM-DD'), 'Female', 'Tanta, Egypt', '01002349876', 350, 'Bronze')
    INTO customer_dim VALUES (15, 'Hassan Adel', TO_DATE('1991-05-25', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01105679834', 980, 'Silver')
    INTO customer_dim VALUES (16, 'Nadia Mostafa', TO_DATE('1994-09-19', 'YYYY-MM-DD'), 'Female', 'Alexandria, Egypt', '01207894321', 870, 'Silver')
    INTO customer_dim VALUES (17, 'Samir Ahmed', TO_DATE('1982-03-30', 'YYYY-MM-DD'), 'Male', 'Port Said, Egypt', '01501234567', 1200, 'Gold')
    INTO customer_dim VALUES (18, 'Dina Youssef', TO_DATE('1999-07-07', 'YYYY-MM-DD'), 'Female', 'Cairo, Egypt', '01007865432', 300, 'Bronze')
    INTO customer_dim VALUES (19, 'Ibrahim Galal', TO_DATE('1986-02-28', 'YYYY-MM-DD'), 'Male', 'Sharm El-Sheikh, Egypt', '01103455678', 1400, 'Gold')
    INTO customer_dim VALUES (20, 'Lina Khaled', TO_DATE('2000-12-01', 'YYYY-MM-DD'), 'Female', 'Aswan, Egypt', '01005677889', 150, 'Bronze')

    -- Additional 40 rows (modify names, dates, and data)
    INTO customer_dim VALUES (21, 'Omar Mahmoud', TO_DATE('1985-06-21', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01009998877', 1700, 'Gold')
    INTO customer_dim VALUES (22, 'Hana Mostafa', TO_DATE('1991-09-15', 'YYYY-MM-DD'), 'Female', 'Luxor, Egypt', '01201112233', 900, 'Silver')
    INTO customer_dim VALUES (23, 'Ahmed Nabil', TO_DATE('1980-07-07', 'YYYY-MM-DD'), 'Male', 'Alexandria, Egypt', '01103456789', 2200, 'Platinum')
    INTO customer_dim VALUES (24, 'Salma Tamer', TO_DATE('1995-03-03', 'YYYY-MM-DD'), 'Female', 'Tanta, Egypt', '01007894321', 500, 'Silver')
    INTO customer_dim VALUES (25, 'Hussein Tarek', TO_DATE('1989-11-29', 'YYYY-MM-DD'), 'Male', 'Giza, Egypt', '01105678912', 1250, 'Gold')
    INTO customer_dim VALUES (26, 'Farida Khaled', TO_DATE('1998-06-14', 'YYYY-MM-DD'), 'Female', 'Cairo, Egypt', '01207894567', 700, 'Silver')
    INTO customer_dim VALUES (27, 'Kareem Youssef', TO_DATE('1983-04-22', 'YYYY-MM-DD'), 'Male', 'Fayoum, Egypt', '01501112345', 1650, 'Gold')
    INTO customer_dim VALUES (28, 'Aya Amr', TO_DATE('1996-12-10', 'YYYY-MM-DD'), 'Female', 'Sharm El-Sheikh, Egypt', '01003456543', 400, 'Bronze')
    INTO customer_dim VALUES (29, 'Hassan Adel', TO_DATE('1981-09-18', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01107894321', 1550, 'Gold')
    INTO customer_dim VALUES (30, 'Layla Mostafa', TO_DATE('1993-05-08', 'YYYY-MM-DD'), 'Female', 'Mansoura, Egypt', '01205677890', 650, 'Silver')

SELECT 1 FROM DUAL;

-----------------------------------------------------------------------


-- Create booking_channel_dim table
CREATE TABLE booking_channel_dim (
    channel_id NUMBER PRIMARY KEY,
    booking_name VARCHAR2(100),
    type VARCHAR2(50),
    contact_detail VARCHAR2(100)
);

INSERT INTO booking_channel_dim (channel_id, booking_name, type, contact_detail) 
VALUES (1, 'Online Booking', 'Online', 'contact@online.com');

INSERT INTO booking_channel_dim (channel_id, booking_name, type, contact_detail) 
VALUES (2, 'Travel Agency Booking', 'Travel Agency', 'contact@travelagency.com');

INSERT INTO booking_channel_dim (channel_id, booking_name, type, contact_detail) 
VALUES (3, 'Direct Hotel Booking', 'Direct Booking', 'contact@directhotel.com');

COMMIT;
------------------------------------------------------------------------------------
-- Create trip_status_dim table

CREATE TABLE trip_status_dim (
    status_id NUMBER PRIMARY KEY,
    reservation_status VARCHAR2(50),
    cancellation_reason VARCHAR2(100)
);
INSERT ALL
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (1, 'Confirmed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (2, 'Completed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (3, 'Cancelled', 'Customer Request')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (4, 'Cancelled', 'Bad Weather')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (5, 'Cancelled', 'Technical Issues')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (6, 'Pending', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (7, 'No Show', 'Passenger Did Not Arrive')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (8, 'Delayed', 'Air Traffic Control Restriction')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (9, 'Delayed', 'Mechanical Issue')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (10, 'Cancelled', 'Pilot Unavailability')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (11, 'Cancelled', 'Insufficient Passengers')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (12, 'Cancelled', 'Security Threat')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (13, 'Confirmed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (14, 'Completed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (15, 'Cancelled', 'Customer Request')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (16, 'Cancelled', 'Bad Weather')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (17, 'Pending', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (18, 'No Show', 'Passenger Did Not Arrive')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (19, 'Delayed', 'Runway Closure')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (20, 'Delayed', 'Crew Scheduling Issues')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (21, 'Cancelled', 'Aircraft Maintenance')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (22, 'Cancelled', 'Operational Issues')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (23, 'Pending', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (24, 'No Show', 'Missed Connection')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (25, 'Confirmed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (26, 'Completed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (27, 'Cancelled', 'Customer Request')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (28, 'Cancelled', 'Airline Strike')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (29, 'Pending', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (30, 'No Show', 'Passenger Didn’t Check-in')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (31, 'Delayed', 'Refueling Delay')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (32, 'Delayed', 'Late Arrival of Aircraft')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (33, 'Cancelled', 'Medical Emergency')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (34, 'Cancelled', 'Overbooking')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (35, 'Pending', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (36, 'No Show', 'Visa Issues')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (37, 'Confirmed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (38, 'Completed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (39, 'Cancelled', 'Customer Request')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (40, 'Cancelled', 'Political Unrest')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (41, 'Pending', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (42, 'No Show', 'Traffic Delay')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (43, 'Delayed', 'Airline Technical Issues')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (44, 'Delayed', 'Regulatory Hold')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (45, 'Cancelled', 'Natural Disaster')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (46, 'Cancelled', 'Loss of Luggage')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (47, 'Pending', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (48, 'No Show', 'Flight Reschedule')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (49, 'Confirmed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (50, 'Completed', NULL)
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (51, 'Cancelled', 'Customer Request')
    INTO trip_status_dim (status_id, reservation_status, cancellation_reason) VALUES (52, 'Cancelled', 'Security Clearance Delay')
SELECT * FROM dual;

COMMIT;

--------------------------------------------------------------------------

-- Create class_services_dim table
CREATE TABLE class_services_dim (
    class_of_services_id NUMBER PRIMARY KEY,
    class_purchased VARCHAR2(50),
    class_flown VARCHAR2(50),
    passenger_gender VARCHAR2(10),
    class_change_indicator VARCHAR2(1)
);



INSERT ALL
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (1, 'Economy', 'Economy', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (2, 'Business', 'Business', 'Female', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (3, 'First Class', 'First Class', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (4, 'Economy', 'Business', 'Female', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (5, 'Business', 'First Class', 'Male', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (6, 'Economy', 'Economy', 'Female', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (7, 'Economy', 'Economy', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (8, 'Business', 'Business', 'Female', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (9, 'First Class', 'First Class', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (10, 'Economy', 'Business', 'Female', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (11, 'Business', 'First Class', 'Male', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (12, 'Economy', 'Economy', 'Female', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (13, 'Economy', 'Economy', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (14, 'Business', 'Business', 'Female', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (15, 'First Class', 'First Class', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (16, 'Economy', 'Business', 'Female', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (17, 'Business', 'First Class', 'Male', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (18, 'Economy', 'Economy', 'Female', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (19, 'Economy', 'Economy', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (20, 'Business', 'Business', 'Female', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (21, 'First Class', 'First Class', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (22, 'Economy', 'Business', 'Female', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (23, 'Business', 'First Class', 'Male', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (24, 'Economy', 'Economy', 'Female', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (25, 'Economy', 'Economy', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (26, 'Business', 'Business', 'Female', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (27, 'First Class', 'First Class', 'Male', 'N')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (28, 'Economy', 'Business', 'Female', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (29, 'Business', 'First Class', 'Male', 'Y')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, passenger_gender, class_change_indicator) VALUES (30, 'Economy', 'Economy', 'Female', 'N')
SELECT * FROM dual;

COMMIT;
-----------------------------------------------------------------
-- Create promotion_dim table
CREATE TABLE promotion_dim (
    promotion_id NUMBER PRIMARY KEY,
    valid_from DATE,
    valid_to DATE,
    maximum_fare_discount NUMBER,
    promotion_percentage NUMBER,
    category VARCHAR2(50)
);
INSERT ALL
    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (1, TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-03-31', 'YYYY-MM-DD'), 500, 10, 'Seasonal')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (2, TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_DATE('2024-05-31', 'YYYY-MM-DD'), 300, 5, 'Student Discount')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (3, TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-08-31', 'YYYY-MM-DD'), 700, 15, 'Summer Special')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (4, TO_DATE('2024-09-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'), 400, 8, 'Autumn Offer')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (5, TO_DATE('2024-11-01', 'YYYY-MM-DD'), TO_DATE('2025-01-15', 'YYYY-MM-DD'), 600, 12, 'Holiday Deal')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (6, TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2025-04-30', 'YYYY-MM-DD'), 350, 7, 'Early Bird')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (7, TO_DATE('2025-06-01', 'YYYY-MM-DD'), TO_DATE('2025-09-01', 'YYYY-MM-DD'), 800, 18, 'Mega Saver')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (8, TO_DATE('2025-10-01', 'YYYY-MM-DD'), TO_DATE('2026-01-31', 'YYYY-MM-DD'), 550, 10, 'End of Year Sale')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (9, TO_DATE('2026-02-01', 'YYYY-MM-DD'), TO_DATE('2026-05-31', 'YYYY-MM-DD'), 450, 9, 'Spring Break')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (10, TO_DATE('2026-07-01', 'YYYY-MM-DD'), TO_DATE('2026-09-30', 'YYYY-MM-DD'), 650, 14, 'Back to School')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (11, TO_DATE('2026-10-15', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'), 900, 20, 'Black Friday')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (12, TO_DATE('2027-01-01', 'YYYY-MM-DD'), TO_DATE('2027-03-31', 'YYYY-MM-DD'), 400, 8, 'Winter Sale')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (13, TO_DATE('2027-04-01', 'YYYY-MM-DD'), TO_DATE('2027-06-30', 'YYYY-MM-DD'), 750, 16, 'Spring Promo')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (14, TO_DATE('2027-07-01', 'YYYY-MM-DD'), TO_DATE('2027-09-30', 'YYYY-MM-DD'), 1000, 25, 'Summer Bonanza')

    INTO promotion_dim (promotion_id, valid_from, valid_to, maximum_fare_discount, promotion_percentage, category) 
    VALUES (15, TO_DATE('2027-10-01', 'YYYY-MM-DD'), TO_DATE('2027-12-31', 'YYYY-MM-DD'), 500, 10, 'Year-End Special')

SELECT * FROM dual;

COMMIT;
------------------------------------------------------------

-- Create SegmentActivityFact table
CREATE TABLE SegmentActivityFact (
    passenger_id NUMBER,
    class_services_id NUMBER,
    promotion_id NUMBER,
    booking_channel_id NUMBER,
    flight_id NUMBER,
    status_id NUMBER,
    ticket_number VARCHAR2(50),
    overnight_stay NUMBER,
    revenue_amount NUMBER,
    cancellation_fees NUMBER,
    refund_amount NUMBER,
    CONSTRAINT fk_passenger FOREIGN KEY (passenger_id) REFERENCES customer_dim(passenger_id),
    CONSTRAINT fk_class_services FOREIGN KEY (class_services_id) REFERENCES class_services_dim(class_of_services_id),
    CONSTRAINT fk_promotion FOREIGN KEY (promotion_id) REFERENCES promotion_dim(promotion_id),
    CONSTRAINT fk_booking_channel FOREIGN KEY (booking_channel_id) REFERENCES booking_channel_dim(channel_id),
    CONSTRAINT fk_status FOREIGN KEY (status_id) REFERENCES trip_status_dim(status_id),
    CONSTRAINT fk_flight FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id)
);
INSERT ALL
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (1, 1, 1, 1, 101, 1, 'TKT10001', 0, 500.00, 0.00, 0.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (2, 2, NULL, 2, 102, 2, 'TKT10002', 1, 750.00, 50.00, 100.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (3, 3, 2, 3, 103, 3, 'TKT10003', 0, 1200.00, 80.00, 200.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (4, 1, 3, 1, 104, 1, 'TKT10004', 1, 400.00, 0.00, 0.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (5, 2, NULL, 2, 105, 2, 'TKT10005', 0, 600.00, 40.00, 90.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (6, 3, 4, 3, 106, 3, 'TKT10006', 1, 1350.00, 100.00, 250.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (7, 1, NULL, 1, 107, 1, 'TKT10007', 0, 520.00, 0.00, 0.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (8, 2, 2, 2, 108, 2, 'TKT10008', 1, 820.00, 60.00, 120.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (9, 3, NULL, 3, 109, 3, 'TKT10009', 0, 1450.00, 120.00, 300.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, booking_channel_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (10, 1, 1, 1, 110, 1, 'TKT10010', 1, 550.00, 0.00, 0.00)
SELECT 1 FROM DUAL;