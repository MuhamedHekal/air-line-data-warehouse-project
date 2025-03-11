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
    passenger_status VARCHAR2(50),
    start_date DATE DEFAULT TO_DATE('2000-01-01', 'YYYY-MM-DD'), -- Default start date
    end_date DATE DEFAULT TO_DATE('9999-12-31', 'YYYY-MM-DD'), -- Open-ended for current records
    is_current CHAR(1) DEFAULT 'Y' CHECK (is_current IN ('Y', 'N')) -- 'Y' for current, 'N' for history
);

INSERT ALL
    INTO customer_dim VALUES (1, 'Ahmed Mohamed', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01001234567', 1200, 'Gold', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (2, 'Sara Ahmed', TO_DATE('1990-12-20', 'YYYY-MM-DD'), 'Female', 'Alexandria, Egypt', '01009876543', 800, 'Silver', TO_DATE('2023-07-15', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (3, 'Mohamed Hassan', TO_DATE('1978-08-05', 'YYYY-MM-DD'), 'Male', 'Giza, Egypt', '01102345678', 1500, 'Platinum', TO_DATE('2022-06-10', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (4, 'Nour Amr', TO_DATE('1995-04-22', 'YYYY-MM-DD'), 'Female', 'Aswan, Egypt', '01205678901', 400, 'Bronze', TO_DATE('2021-05-20', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (5, 'Khaled Ibrahim', TO_DATE('1983-09-30', 'YYYY-MM-DD'), 'Male', 'Mansoura, Egypt', '01501112233', 1300, 'Gold', TO_DATE('2020-03-12', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (6, 'Mariam Saleh', TO_DATE('1992-11-10', 'YYYY-MM-DD'), 'Female', 'Suez, Egypt', '01007654321', 900, 'Silver', TO_DATE('2019-08-25', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (7, 'Omar Tarek', TO_DATE('1989-03-05', 'YYYY-MM-DD'), 'Male', 'Luxor, Egypt', '01106543210', 1600, 'Platinum', TO_DATE('2018-04-10', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (8, 'Layla Adel', TO_DATE('1997-07-18', 'YYYY-MM-DD'), 'Female', 'Port Said, Egypt', '01203456789', 500, 'Bronze', TO_DATE('2017-09-30', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (9, 'Youssef Nabil', TO_DATE('1980-12-02', 'YYYY-MM-DD'), 'Male', 'Zagazig, Egypt', '01507654321', 1100, 'Gold', TO_DATE('2016-06-20', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (10, 'Hana Sameh', TO_DATE('1994-05-14', 'YYYY-MM-DD'), 'Female', 'Tanta, Egypt', '01005432176', 750, 'Silver', TO_DATE('2015-02-18', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (11, 'Hassan Youssef', TO_DATE('1987-10-25', 'YYYY-MM-DD'), 'Male', 'Fayoum, Egypt', '01003456789', 950, 'Silver', TO_DATE('2014-08-12', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (12, 'Amina Khaled', TO_DATE('1996-03-30', 'YYYY-MM-DD'), 'Female', 'Ismailia, Egypt', '01107896543', 600, 'Bronze', TO_DATE('2013-11-05', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (13, 'Walid Mahmoud', TO_DATE('1982-07-18', 'YYYY-MM-DD'), 'Male', 'Damietta, Egypt', '01204567891', 1400, 'Gold', TO_DATE('2012-09-22', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (14, 'Rania Hatem', TO_DATE('1991-12-10', 'YYYY-MM-DD'), 'Female', 'Minya, Egypt', '01506543219', 700, 'Silver', TO_DATE('2011-06-15', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (15, 'Tarek Salah', TO_DATE('1979-05-05', 'YYYY-MM-DD'), 'Male', 'Beni Suef, Egypt', '01007654320', 1700, 'Platinum', TO_DATE('2010-04-30', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (16, 'Mona Nader', TO_DATE('1998-08-21', 'YYYY-MM-DD'), 'Female', 'Sohag, Egypt', '01104356782', 450, 'Bronze', TO_DATE('2009-07-18', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (17, 'Mostafa Adel', TO_DATE('1986-02-14', 'YYYY-MM-DD'), 'Male', 'Qena, Egypt', '01203456780', 1250, 'Gold', TO_DATE('2008-03-25', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (18, 'Salma Tamer', TO_DATE('1993-09-11', 'YYYY-MM-DD'), 'Female', 'Hurghada, Egypt', '01502345678', 850, 'Silver', TO_DATE('2007-12-05', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (19, 'Yasser Fathy', TO_DATE('1984-06-07', 'YYYY-MM-DD'), 'Male', 'Sharm El Sheikh, Egypt', '01001234568', 1550, 'Platinum', TO_DATE('2006-10-10', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (20, 'Heba Magdy', TO_DATE('1999-01-29', 'YYYY-MM-DD'), 'Female', 'Matrouh, Egypt', '01107895432', 500, 'Bronze', TO_DATE('2005-05-15', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (21, 'Ahmed Shokry', TO_DATE('1988-11-12', 'YYYY-MM-DD'), 'Male', 'Alexandria, Egypt', '01005678912', 1100, 'Gold', TO_DATE('2014-02-20', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (22, 'Nourhan Saeed', TO_DATE('1995-07-28', 'YYYY-MM-DD'), 'Female', 'Giza, Egypt', '01109876543', 750, 'Silver', TO_DATE('2013-05-15', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (23, 'Ibrahim Khalil', TO_DATE('1980-04-03', 'YYYY-MM-DD'), 'Male', 'Aswan, Egypt', '01206789012', 1600, 'Platinum', TO_DATE('2012-10-10', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (24, 'Heba El-Sayed', TO_DATE('1992-09-17', 'YYYY-MM-DD'), 'Female', 'Mansoura, Egypt', '01507896532', 900, 'Silver', TO_DATE('2011-08-08', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (25, 'Khaled Fathy', TO_DATE('1985-01-22', 'YYYY-MM-DD'), 'Male', 'Zagazig, Egypt', '01003456721', 1300, 'Gold', TO_DATE('2010-07-05', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (26, 'Mai Tamer', TO_DATE('1997-06-14', 'YYYY-MM-DD'), 'Female', 'Qena, Egypt', '01108765432', 550, 'Bronze', TO_DATE('2009-03-25', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (27, 'Mohamed Galal', TO_DATE('1978-12-05', 'YYYY-MM-DD'), 'Male', 'Ismailia, Egypt', '01203456123', 1800, 'Platinum', TO_DATE('2008-11-12', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (28, 'Laila Hossam', TO_DATE('1994-03-19', 'YYYY-MM-DD'), 'Female', 'Tanta, Egypt', '01502345671', 800, 'Silver', TO_DATE('2007-06-18', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (29, 'Youssef Nabil', TO_DATE('1983-08-07', 'YYYY-MM-DD'), 'Male', 'Minya, Egypt', '01001234529', 1450, 'Gold', TO_DATE('2006-09-22', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (30, 'Sara Adel', TO_DATE('2000-02-01', 'YYYY-MM-DD'), 'Female', 'Damietta, Egypt', '01107895421', 480, 'Bronze', TO_DATE('2005-04-30', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')

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

-- Create class_services_dim table with updated class_change_indicator values
CREATE TABLE class_services_dim (
    class_of_services_id NUMBER PRIMARY KEY,
    class_purchased VARCHAR2(50),
    class_flown VARCHAR2(50),
    class_change_indicator VARCHAR2(20)
);

-- Insert data with "Upgrade", "Downgrade", or "No Change"
INSERT ALL
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (1, 'Economy', 'Economy', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (2, 'Business', 'Business', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (3, 'First Class', 'First Class', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (4, 'Economy', 'Business', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (5, 'Business', 'First Class', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (6, 'Business', 'Economy', 'Downgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (7, 'First Class', 'Business', 'Downgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (8, 'Economy', 'Economy', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (9, 'Business', 'Business', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (10, 'Economy', 'Business', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (11, 'Business', 'First Class', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (12, 'Economy', 'Economy', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (13, 'Economy', 'Economy', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (14, 'Business', 'Business', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (15, 'First Class', 'First Class', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (16, 'Economy', 'Business', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (17, 'Business', 'First Class', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (18, 'Economy', 'Economy', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (19, 'Business', 'Economy', 'Downgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (20, 'First Class', 'Business', 'Downgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (21, 'Economy', 'Business', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (22, 'Business', 'First Class', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (23, 'Economy', 'Economy', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (24, 'Economy', 'Economy', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (25, 'Business', 'Business', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (26, 'First Class', 'First Class', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (27, 'Economy', 'Business', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (28, 'Business', 'First Class', 'Upgrade')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (29, 'Economy', 'Economy', 'No Change')
    INTO class_services_dim (class_of_services_id, class_purchased, class_flown, class_change_indicator) VALUES (30, 'First Class', 'Business', 'Downgrade')
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
    CONSTRAINT fk_status FOREIGN KEY (status_id) REFERENCES trip_status_dim(status_id)
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