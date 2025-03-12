-- Insert aircraft_dim data
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

COMMIT;
-- Create airport_dim Data
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (1, 'CAI', 'Cairo International Airport', 'Cairo', 'Egypt');
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (2, 'HRG', 'Hurghada International Airport', 'Hurghada', 'Egypt');
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (3, 'SSH', 'Sharm El Sheikh International Airport', 'Sharm El Sheikh', 'Egypt');
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (4, 'LXR', 'Luxor International Airport', 'Luxor', 'Egypt');
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (5, 'ASW', 'Aswan International Airport', 'Aswan', 'Egypt');
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (6, 'ALY', 'Alexandria International Airport', 'Alexandria', 'Egypt');
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (7, 'SPX', 'Sphinx International Airport', 'Giza', 'Egypt');
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (8, 'HBE', 'Borg El Arab International Airport', 'Alexandria', 'Egypt');
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (9, 'DBB', 'Al Alamain International Airport', 'El Alamein', 'Egypt');
INSERT INTO airport_dim (airport_id, airport_code, airport_name, airport_city, airport_location) VALUES (10, 'TCP', 'Taba International Airport', 'Taba', 'Egypt');

COMMIT;


-- Create customer_dim data
INSERT ALL
    INTO customer_dim VALUES (1,1, 'Ahmed Mohamed', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01001234567', 1200, 'Gold', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (2,2, 'Sara Ahmed', TO_DATE('1990-12-20', 'YYYY-MM-DD'), 'Female', 'Alexandria, Egypt', '01009876543', 800, 'Silver', TO_DATE('2023-07-15', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (3,3, 'Mohamed Hassan', TO_DATE('1978-08-05', 'YYYY-MM-DD'), 'Male', 'Giza, Egypt', '01102345678', 1500, 'Platinum', TO_DATE('2022-06-10', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (4,4, 'Nour Amr', TO_DATE('1995-04-22', 'YYYY-MM-DD'), 'Female', 'Aswan, Egypt', '01205678901', 400, 'Bronze', TO_DATE('2021-05-20', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (5,5, 'Khaled Ibrahim', TO_DATE('1983-09-30', 'YYYY-MM-DD'), 'Male', 'Mansoura, Egypt', '01501112233', 1300, 'Gold', TO_DATE('2020-03-12', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (6,6, 'Mariam Saleh', TO_DATE('1992-11-10', 'YYYY-MM-DD'), 'Female', 'Suez, Egypt', '01007654321', 900, 'Silver', TO_DATE('2019-08-25', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (7,7, 'Omar Tarek', TO_DATE('1989-03-05', 'YYYY-MM-DD'), 'Male', 'Luxor, Egypt', '01106543210', 1600, 'Platinum', TO_DATE('2018-04-10', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (8,8, 'Layla Adel', TO_DATE('1997-07-18', 'YYYY-MM-DD'), 'Female', 'Port Said, Egypt', '01203456789', 500, 'Bronze', TO_DATE('2017-09-30', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (9,9, 'Youssef Nabil', TO_DATE('1980-12-02', 'YYYY-MM-DD'), 'Male', 'Zagazig, Egypt', '01507654321', 1100, 'Gold', TO_DATE('2016-06-20', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (10,10, 'Hana Sameh', TO_DATE('1994-05-14', 'YYYY-MM-DD'), 'Female', 'Tanta, Egypt', '01005432176', 750, 'Silver', TO_DATE('2015-02-18', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (11,11, 'Hassan Youssef', TO_DATE('1987-10-25', 'YYYY-MM-DD'), 'Male', 'Fayoum, Egypt', '01003456789', 950, 'Silver', TO_DATE('2014-08-12', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (12,12, 'Amina Khaled', TO_DATE('1996-03-30', 'YYYY-MM-DD'), 'Female', 'Ismailia, Egypt', '01107896543', 600, 'Bronze', TO_DATE('2013-11-05', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (13,13, 'Walid Mahmoud', TO_DATE('1982-07-18', 'YYYY-MM-DD'), 'Male', 'Damietta, Egypt', '01204567891', 1400, 'Gold', TO_DATE('2012-09-22', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (14,14, 'Rania Hatem', TO_DATE('1991-12-10', 'YYYY-MM-DD'), 'Female', 'Minya, Egypt', '01506543219', 700, 'Silver', TO_DATE('2011-06-15', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (15,15, 'Tarek Salah', TO_DATE('1979-05-05', 'YYYY-MM-DD'), 'Male', 'Beni Suef, Egypt', '01007654320', 1700, 'Platinum', TO_DATE('2010-04-30', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (16,16, 'Mona Nader', TO_DATE('1998-08-21', 'YYYY-MM-DD'), 'Female', 'Sohag, Egypt', '01104356782', 450, 'Bronze', TO_DATE('2009-07-18', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (17,17, 'Mostafa Adel', TO_DATE('1986-02-14', 'YYYY-MM-DD'), 'Male', 'Qena, Egypt', '01203456780', 1250, 'Gold', TO_DATE('2008-03-25', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (18,18, 'Salma Tamer', TO_DATE('1993-09-11', 'YYYY-MM-DD'), 'Female', 'Hurghada, Egypt', '01502345678', 850, 'Silver', TO_DATE('2007-12-05', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (19,19, 'Yasser Fathy', TO_DATE('1984-06-07', 'YYYY-MM-DD'), 'Male', 'Sharm El Sheikh, Egypt', '01001234568', 1550, 'Platinum', TO_DATE('2006-10-10', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (20,20, 'Heba Magdy', TO_DATE('1999-01-29', 'YYYY-MM-DD'), 'Female', 'Matrouh, Egypt', '01107895432', 500, 'Bronze', TO_DATE('2005-05-15', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (21,21, 'Ahmed Shokry', TO_DATE('1988-11-12', 'YYYY-MM-DD'), 'Male', 'Alexandria, Egypt', '01005678912', 1100, 'Gold', TO_DATE('2014-02-20', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (22,22, 'Nourhan Saeed', TO_DATE('1995-07-28', 'YYYY-MM-DD'), 'Female', 'Giza, Egypt', '01109876543', 750, 'Silver', TO_DATE('2013-05-15', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (23,23, 'Ibrahim Khalil', TO_DATE('1980-04-03', 'YYYY-MM-DD'), 'Male', 'Aswan, Egypt', '01206789012', 1600, 'Platinum', TO_DATE('2012-10-10', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (24,24, 'Heba El-Sayed', TO_DATE('1992-09-17', 'YYYY-MM-DD'), 'Female', 'Mansoura, Egypt', '01507896532', 900, 'Silver', TO_DATE('2011-08-08', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (25,25, 'Khaled Fathy', TO_DATE('1985-01-22', 'YYYY-MM-DD'), 'Male', 'Zagazig, Egypt', '01003456721', 1300, 'Gold', TO_DATE('2010-07-05', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (26,26, 'Mai Tamer', TO_DATE('1997-06-14', 'YYYY-MM-DD'), 'Female', 'Qena, Egypt', '01108765432', 550, 'Bronze', TO_DATE('2009-03-25', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (27,27, 'Mohamed Galal', TO_DATE('1978-12-05', 'YYYY-MM-DD'), 'Male', 'Ismailia, Egypt', '01203456123', 1800, 'Platinum', TO_DATE('2008-11-12', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (28,28, 'Laila Hossam', TO_DATE('1994-03-19', 'YYYY-MM-DD'), 'Female', 'Tanta, Egypt', '01502345671', 800, 'Silver', TO_DATE('2007-06-18', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (29,29, 'Youssef Nabil', TO_DATE('1983-08-07', 'YYYY-MM-DD'), 'Male', 'Minya, Egypt', '01001234529', 1450, 'Gold', TO_DATE('2006-09-22', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
    INTO customer_dim VALUES (30,30, 'Sara Adel', TO_DATE('2000-02-01', 'YYYY-MM-DD'), 'Female', 'Damietta, Egypt', '01107895421', 480, 'Bronze', TO_DATE('2005-04-30', 'YYYY-MM-DD'), TO_DATE('9999-12-31', 'YYYY-MM-DD'), 'Y')
SELECT 1 FROM DUAL;

COMMIT;

--Booking Channel data
INSERT INTO booking_channel_dim (channel_id, booking_name, type, contact_detail) 
VALUES (1, 'Online Booking', 'Online', 'contact@online.com');

INSERT INTO booking_channel_dim (channel_id, booking_name, type, contact_detail) 
VALUES (2, 'Travel Agency Booking', 'Travel Agency', 'contact@travelagency.com');

INSERT INTO booking_channel_dim (channel_id, booking_name, type, contact_detail) 
VALUES (3, 'Direct Hotel Booking', 'Direct Booking', 'contact@directhotel.com');


Commit;

--trip status dim data

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

Commit;

--class of service dim data

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

Commit;

--promotion dim data


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

Commit;

--time dim data
-- Insert data into time_dim
INSERT INTO time_dim (time_id, hour, minute, hour_description)
SELECT 
    -- Generate a timestamp for each row (starting from a specific date, e.g., '1970-01-01 00:00:00')
    TO_TIMESTAMP('2020-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS') + NUMTODSINTERVAL((LEVEL - 1) * 30, 'MINUTE') AS time_id,
    MOD(TRUNC((LEVEL - 1) / 2), 24) AS hour,  -- Cycles through 0-23 hours
    CASE MOD(LEVEL - 1, 2) WHEN 0 THEN 0 ELSE 30 END AS minute,  -- Alternates 00 and 30
    CASE 
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) = 0 THEN 'Midnight'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 1 AND 5 THEN 'Early Morning'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 6 AND 11 THEN 'Morning'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 12 AND 17 THEN 'Afternoon'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 18 AND 20 THEN 'Evening'
        WHEN MOD(TRUNC((LEVEL - 1) / 2), 24) BETWEEN 21 AND 23 THEN 'Night'
    END AS hour_description
FROM DUAL
CONNECT BY LEVEL <= 24 * 2;  -- 24 hours * 2 (for 00 and 30 minutes)

Commit;

--date dim data
DECLARE
    TYPE Date_Table IS TABLE OF date_dim%ROWTYPE INDEX BY PLS_INTEGER;
    v_dates Date_Table;
    v_index NUMBER := 1;
    v_start_date DATE := DATE '2020-01-01';  
    v_end_date   DATE := DATE '2020-12-31';  
    v_current_date DATE := v_start_date;
    v_date_id DATE := v_start_date;  -- Change to DATE type
BEGIN
    WHILE v_current_date <= v_end_date LOOP
        v_dates(v_index).date_id := v_date_id;  -- Assign DATE value
        v_dates(v_index).year := EXTRACT(YEAR FROM v_current_date);
        v_dates(v_index).quarter := CEIL(EXTRACT(MONTH FROM v_current_date) / 3);
        v_dates(v_index).month := EXTRACT(MONTH FROM v_current_date);
        v_dates(v_index).day_of_week := TO_NUMBER(TO_CHAR(v_current_date, 'D')) - 1;
        v_dates(v_index).day_of_month := EXTRACT(DAY FROM v_current_date);
        v_dates(v_index).day_of_year := TO_NUMBER(TO_CHAR(v_current_date, 'DDD'));
        v_dates(v_index).week_of_year := TO_NUMBER(TO_CHAR(v_current_date, 'IW'));
        v_dates(v_index).is_holiday := CASE WHEN TO_CHAR(v_current_date, 'MM-DD') IN ('01-01', '12-25') THEN 1 ELSE 0 END;

        v_current_date := v_current_date + 1;
        v_date_id := v_date_id + 1;  -- Increment DATE by 1 day
        v_index := v_index + 1;
    END LOOP;

    FORALL i IN 1..v_dates.COUNT
        INSERT INTO date_dim VALUES v_dates(i);

    COMMIT;
END;
/
--insert into flight
Commit;


DECLARE
    v_flight_id NUMBER;
    v_origin_airport_id NUMBER;
    v_destination_airport_id NUMBER;
    v_origin_date DATE;
    v_arrival_date DATE;
    v_origin_time TIMESTAMP;
    v_arrival_time TIMESTAMP;
    v_aircraft_id NUMBER;
    v_segment_miles NUMBER(10, 2);
    v_miles_earned NUMBER(10, 2);
    v_time_diff INTERVAL DAY TO SECOND;
    v_arrival_time_rounded TIMESTAMP;
    v_valid_time_id TIMESTAMP; -- To ensure a valid arrival time

BEGIN
    -- Get the next available flight_id
    SELECT NVL(MAX(flight_id), 0) + 1 INTO v_flight_id FROM flight_dim;

    FOR i IN 1..200 LOOP  -- Generate 200 flights
        -- Select random origin and destination airports
        SELECT airport_id INTO v_origin_airport_id
        FROM (SELECT airport_id FROM airport_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        SELECT airport_id INTO v_destination_airport_id
        FROM (SELECT airport_id FROM airport_dim WHERE airport_id <> v_origin_airport_id ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Select random origin date
        SELECT date_id INTO v_origin_date
        FROM (SELECT date_id FROM date_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Select random arrival date within 2 days of origin date
        SELECT date_id INTO v_arrival_date
        FROM (SELECT date_id FROM date_dim WHERE date_id BETWEEN v_origin_date AND v_origin_date + 2 ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Select random origin time
        SELECT time_id INTO v_origin_time
        FROM (SELECT time_id FROM time_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Calculate a random time difference for arrival time (between 1 and 12 hours)
        v_time_diff := NUMTODSINTERVAL(DBMS_RANDOM.VALUE(1, 12), 'HOUR');

        -- Calculate arrival time
        v_arrival_time := v_origin_time + v_time_diff;

        -- Round arrival time to the nearest 30-minute interval
        v_arrival_time_rounded := TO_TIMESTAMP(
            TO_CHAR(v_arrival_time, 'YYYY-MM-DD HH24:') ||
            CASE
                WHEN TO_NUMBER(TO_CHAR(v_arrival_time, 'MI')) < 30 THEN '00'
                ELSE '30'
            END || ':00',
            'YYYY-MM-DD HH24:MI:SS'
        );

        -- Ensure the rounded arrival time exists in the time_dim table
        BEGIN
            SELECT time_id INTO v_valid_time_id
            FROM time_dim
            WHERE time_id = v_arrival_time_rounded;

        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                -- If the rounded time doesn't exist, get the closest available time
                SELECT MIN(time_id) INTO v_valid_time_id
                FROM time_dim
                WHERE time_id > v_arrival_time_rounded;

                -- If still NULL, get the earliest available time in the table
                IF v_valid_time_id IS NULL THEN
                    SELECT MIN(time_id) INTO v_valid_time_id FROM time_dim;
                END IF;
        END;

        -- Ensure we have a valid arrival time before inserting
        IF v_valid_time_id IS NOT NULL THEN
            v_arrival_time := v_valid_time_id;
        ELSE
            -- Use a default fallback value (earliest time in time_dim)
            SELECT MIN(time_id) INTO v_arrival_time FROM time_dim;
        END IF;

        -- Select random aircraft
        SELECT aircraft_id INTO v_aircraft_id
        FROM (SELECT aircraft_id FROM aircraft_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Generate random segment miles and miles earned
        v_segment_miles := ROUND(DBMS_RANDOM.VALUE(100, 5000), 2);
        v_miles_earned := ROUND(DBMS_RANDOM.VALUE(100, 5000), 2);

        -- Insert the flight
        INSERT INTO flight_dim (flight_id, origin_airport_id, destination_airport_id, origin_date, origin_time, arrival_date, arrival_time, aircraft_id, segment_miles, miles_earned)
        VALUES (v_flight_id, v_origin_airport_id, v_destination_airport_id, v_origin_date, v_origin_time, v_arrival_date, v_arrival_time, v_aircraft_id, v_segment_miles, v_miles_earned);

        -- Increment flight_id
        v_flight_id := v_flight_id + 1;
    END LOOP;

    COMMIT;
END;


--feedback dim data

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

Commit;

--employee dim data
INSERT INTO employee_dim VALUES (1, 1, 'Ahmed Hassan', TO_DATE('1986-04-28', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01234567890', 12105, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (2, 2, 'Mona Ali', TO_DATE('1984-06-04', 'YYYY-MM-DD'), 'Female', 'Giza, Egypt', '01234567891', 12521, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (3, 3, 'Youssef Mohamed', TO_DATE('1987-05-17', 'YYYY-MM-DD'), 'Male', 'Alexandria, Egypt', '01234567892', 15550, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'N');
INSERT INTO employee_dim VALUES (4, 3, 'Youssef Mohamed', TO_DATE('1987-05-17', 'YYYY-MM-DD'), 'Male', 'New Cairo, Egypt', '01234567892', 15550, TO_DATE('2024-03-16', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (5, 4, 'Sara Ibrahim', TO_DATE('1987-06-12', 'YYYY-MM-DD'), 'Female', 'Aswan, Egypt', '01234567893', 17595, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (6, 5, 'Omar Khaled', TO_DATE('1987-11-16', 'YYYY-MM-DD'), 'Male', 'Luxor, Egypt', '01234567894', 9824, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (7, 6, 'Fatma Adel', TO_DATE('1990-08-24', 'YYYY-MM-DD'), 'Female', 'Mansoura, Egypt', '01234567895', 11030, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (8, 7, 'Tarek Mostafa', TO_DATE('1986-06-10', 'YYYY-MM-DD'), 'Male', 'Suez, Egypt', '01234567896', 10800, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2024-02-10', 'YYYY-MM-DD'), 'N');
INSERT INTO employee_dim VALUES (9, 7, 'Tarek Mostafa', TO_DATE('1986-06-10', 'YYYY-MM-DD'), 'Male', 'Port Said, Egypt', '01234567896', 10800, TO_DATE('2024-02-11', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (10, 8, 'Nada Hossam', TO_DATE('1993-02-14', 'YYYY-MM-DD'), 'Female', 'Tanta, Egypt', '01234567897', 11800, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (11, 9, 'Ali Mahmoud', TO_DATE('1991-10-22', 'YYYY-MM-DD'), 'Male', 'Ismailia, Egypt', '01234567898', 9700, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (12, 10, 'Yasmin Salah', TO_DATE('1992-07-01', 'YYYY-MM-DD'), 'Female', 'Sharm El-Sheikh, Egypt', '01234567899', 13000, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
UPDATE employee_dim SET end_date = TO_DATE('2024-01-05', 'YYYY-MM-DD'), is_current = 'N' WHERE employee_id = 15 AND is_current = 'Y';
INSERT INTO employee_dim VALUES (13, 15, 'Mohamed Salah', TO_DATE('1984-09-10', 'YYYY-MM-DD'), 'Male', 'New Damietta, Egypt', '01234567904', 14000, TO_DATE('2024-01-06', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (14, 16, 'Ramy Saad', TO_DATE('1985-03-25', 'YYYY-MM-DD'), 'Male', 'Alexandria, Egypt', '01234567905', 10500, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (15, 17, 'Lina Ehab', TO_DATE('1990-12-30', 'YYYY-MM-DD'), 'Female', 'Fayoum, Egypt', '01234567906', 11200, TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (16, 51, 'Amira Zaki', TO_DATE('1994-06-08', 'YYYY-MM-DD'), 'Female', 'Dahab, Egypt', '01234567951', 12500, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (17, 52, 'Hassan Ehab', TO_DATE('1992-01-20', 'YYYY-MM-DD'), 'Male', 'Cairo, Egypt', '01234567952', 13550, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (18, 53, 'Mariam Khaled', TO_DATE('1993-09-30', 'YYYY-MM-DD'), 'Female', 'Alexandria, Egypt', '01234567953', 12000, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (19, 54, 'Yousef Samir', TO_DATE('1991-03-25', 'YYYY-MM-DD'), 'Male', 'Giza, Egypt', '01234567954', 11000, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (20, 55, 'Khaled Tamer', TO_DATE('1989-07-18', 'YYYY-MM-DD'), 'Male', 'Tanta, Egypt', '01234567955', 13000, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (21, 56, 'Nour Hany', TO_DATE('1990-11-02', 'YYYY-MM-DD'), 'Female', 'Luxor, Egypt', '01234567956', 11850, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (22, 58, 'Sameh Adel', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (23, 59, 'Ahmed Adel', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (24, 60, 'Abdelrahman Sayed', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (25, 61, 'Seif Khalil', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (26, 62, 'Mohmed Hekal', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (27, 63, 'Mohamed Moaaz', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (28, 64, 'Omar Mustafa', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (29, 65, 'Bassel Walid', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (30, 66, 'Ahmed Nasr', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (31, 67, 'Mohamed Nasr', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (32, 68, 'Hussein Mohamed', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (33, 69, 'Huss', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (34, 70, 'Mohamed Makbool', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (35, 71, 'Ahmed El Sheikh', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (36, 72, 'Ahmed El Adawy', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (37, 73, 'Ahmed Otifi', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (38, 74, 'Mohamed Walid', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (39, 75, 'Ziad Essam', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (40, 76, 'Omar Hany', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (41, 77, 'Mohamed Ramy', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (42, 78, 'Ahmed Sayed', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (43, 79, 'Khaled Essam', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (44, 80, 'Youssef Galal', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (45, 81, 'Amr Ibrahim', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (46, 82, 'Amr Khalid', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (47, 83, 'Diaa Essam', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (48, 84, 'Kareem Walid', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (49, 85, 'Sameh Adel', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');
INSERT INTO employee_dim VALUES (50, 86, 'Sameh Adel', TO_DATE('1993-05-27', 'YYYY-MM-DD'), 'Male', 'Hurghada, Egypt', '01234567957', 12250, TO_DATE('2024-02-15', 'YYYY-MM-DD'), NULL, 'Y');

Commit;

--segment activity fact data
INSERT ALL
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (1, 1, 1, 101, 1, 'TKT10001', 0, 500.00, 0.00, 0.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (2, 2, NULL, 102, 2, 'TKT10002', 1, 750.00, 50.00, 100.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (3, 3, 2, 103, 3, 'TKT10003', 0, 1200.00, 80.00, 200.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (4, 1, 3, 104, 1, 'TKT10004', 1, 400.00, 0.00, 0.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (5, 2, NULL, 105, 2, 'TKT10005', 0, 600.00, 40.00, 90.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (6, 3, 4, 106, 3, 'TKT10006', 1, 1350.00, 100.00, 250.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (7, 1, NULL, 107, 1, 'TKT10007', 0, 520.00, 0.00, 0.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (8, 2, 2, 108, 2, 'TKT10008', 1, 820.00, 60.00, 120.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (9, 3, NULL, 109, 3, 'TKT10009', 0, 1450.00, 120.00, 300.00)
    INTO SegmentActivityFact (passenger_id, class_services_id, promotion_id, flight_id, status_id, ticket_number, overnight_stay, revenue_amount, cancellation_fees, refund_amount) 
    VALUES (10, 1, 1, 110, 1, 'TKT10010', 1, 550.00, 0.00, 0.00)
SELECT 1 FROM DUAL;

Commit;

--insert into expenses fact 
DECLARE
    v_date_id DATE;  -- Declare v_date_id as DATE
    v_flight_id NUMBER;
    v_expenses_type VARCHAR2(255);
    v_expense_amount NUMBER(15, 2);
    -- This list can be changed 
    v_expense_types SYS.ODCIVARCHAR2LIST := SYS.ODCIVARCHAR2LIST('Fuel', 'Maintenance', 'Catering', 'Staff', 'Other');
BEGIN
    FOR i IN 1..1000 LOOP  -- Generate 1000 expense records
        -- Randomly select a date_id from date_dim (ensure it's a DATE)
        SELECT date_id INTO v_date_id
        FROM (SELECT date_id FROM date_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        -- Randomly select a flight_id from flight_dim
        SELECT flight_id INTO v_flight_id
        FROM (SELECT flight_id FROM flight_dim ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;

        v_expenses_type := v_expense_types(TRUNC(DBMS_RANDOM.VALUE(1, v_expense_types.COUNT + 1)));

        v_expense_amount := ROUND(DBMS_RANDOM.VALUE(100, 10000), 2);

        BEGIN
            INSERT INTO ExpensesFact (date_id, flight_id, expenses_type, expense_amount)
            VALUES (v_date_id, v_flight_id, v_expenses_type, v_expense_amount);
        EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN
                CONTINUE;
        END;
    END LOOP;

    COMMIT;
END;
/

Commit;

INSERT INTO ProfitFact (flight_id, date_id, promotion_id, booking_channel_id, revenue_amount, expense_amount, profit_amount)
SELECT 
    ef.flight_id,
    TO_DATE(ef.date_id, 'DD/MM/YY') AS date_id,  -- Convert string date to DATE format
    (SELECT promotion_id FROM (SELECT promotion_id FROM promotion_dim ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1) AS promotion_id,
    (SELECT channel_id FROM (SELECT channel_id FROM booking_channel_dim ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1) AS booking_channel_id,
    ROUND(DBMS_RANDOM.VALUE(5000, 20000), 2) AS revenue_amount,  -- Generate random revenue
    ef.expense_amount,
    ROUND(DBMS_RANDOM.VALUE(5000, 20000), 2) - ef.expense_amount AS profit_amount  -- Revenue - Expenses = Profit
FROM (
    SELECT 
        '01/01/20' AS date_id, 83 AS flight_id, 4012.74 AS expense_amount FROM DUAL UNION ALL
    SELECT '01/01/20', 72, 3548.23 FROM DUAL UNION ALL
    SELECT '01/01/20', 6, 6838.61 FROM DUAL UNION ALL
    SELECT '02/01/20', 21, 550.7 FROM DUAL UNION ALL
    SELECT '02/01/20', 13, 2267.59 FROM DUAL UNION ALL
    SELECT '02/01/20', 159, 2543.2 FROM DUAL UNION ALL
    SELECT '02/01/20', 11, 8604.21 FROM DUAL UNION ALL
    SELECT '03/01/20', 31, 8159.21 FROM DUAL UNION ALL
    SELECT '03/01/20', 102, 7194.86 FROM DUAL UNION ALL
    SELECT '03/01/20', 64, 5225.6 FROM DUAL UNION ALL
    SELECT '03/01/20', 77, 8400.86 FROM DUAL UNION ALL
    SELECT '04/01/20', 57, 9062.03 FROM DUAL UNION ALL
    SELECT '04/01/20', 7, 3749.42 FROM DUAL UNION ALL
    SELECT '04/01/20', 22, 1100.18 FROM DUAL UNION ALL
    SELECT '05/01/20', 129, 9358.9 FROM DUAL UNION ALL
    SELECT '06/01/20', 72 , 207.5  FROM DUAL UNION ALL
    SELECT '06/01/20' , 23 , 9346.95  FROM DUAL UNION ALL
    SELECT '07/01/20', 157 , 5381.43  FROM DUAL UNION ALL
    SELECT '07/01/20', 37 , 4473.32  FROM DUAL UNION ALL
    SELECT '07/01/20' , 12 , 8493.15  FROM DUAL UNION ALL
    SELECT '07/01/20' , 112 , 3840.55  FROM DUAL UNION ALL
    SELECT '07/01/20' , 176 , 6400.14  FROM DUAL UNION ALL
    SELECT '07/01/20' , 165 , 175.93 FROM DUAL UNION ALL
    SELECT '08/01/20' , 184 , 3701.05  FROM DUAL UNION ALL
    SELECT '09/01/20' , 145 , 444.61  FROM DUAL UNION ALL
    SELECT '09/01/20' , 31 , 9921.12 FROM DUAL UNION ALL
    SELECT '09/01/20' , 101 , 5250.59  FROM DUAL UNION ALL
    SELECT '09/01/20' , 143 , 1944.62  FROM DUAL UNION ALL
    SELECT '10/01/20' , 87 , 7328.04  FROM DUAL UNION ALL
    SELECT '10/01/20' , 44 , 8613.71  FROM DUAL UNION ALL
    SELECT '11/01/20' , 90 , 6169.67  FROM DUAL UNION ALL
    SELECT '11/01/20' , 85 , 5940.46  FROM DUAL UNION ALL
    SELECT '12/01/20' , 194 , 6047.68  FROM DUAL UNION ALL
    SELECT '12/01/20' , 129 , 8522.17 FROM DUAL UNION ALL
    SELECT '12/01/20' , 5 , 8217.23 A FROM DUAL UNION ALL
    SELECT '12/01/20' , 132 , 2992.35  FROM DUAL UNION ALL
    SELECT '13/01/20' , 25 , 6629.04 FROM DUAL UNION ALL
    SELECT '13/01/20' , 61 , 4455.11  FROM DUAL UNION ALL
    SELECT '14/01/20' , 6 , 5024.28  FROM DUAL UNION ALL
    SELECT '14/01/20' , 160 , 2897.03 FROM DUAL UNION ALL
    SELECT '15/01/20' , 118 , 3470.05  FROM DUAL UNION ALL
    SELECT '15/01/20' , 147 , 9007.04  FROM DUAL UNION ALL
    SELECT '15/01/20', 169 , 9950.85 FROM DUAL UNION ALL
    SELECT '16/01/20', 53, 6249.37 FROM DUAL UNION ALL
    SELECT '16/01/20', 15, 974.28 FROM DUAL UNION ALL
    SELECT '16/01/20', 92, 3531.91 FROM DUAL UNION ALL
    SELECT '16/01/20', 104, 2886.8 FROM DUAL UNION ALL
    SELECT '17/01/20', 123, 8938.82 FROM DUAL UNION ALL
    SELECT '17/01/20', 62, 1139.67 FROM DUAL UNION ALL
    SELECT '17/01/20', 188, 8829.31 FROM DUAL UNION ALL
    SELECT '18/01/20', 195, 8225.0 FROM DUAL UNION ALL
    SELECT '18/01/20', 126, 9791.64 FROM DUAL UNION ALL
    SELECT '18/01/20', 67, 6841.77 FROM DUAL UNION ALL
    SELECT '18/01/20', 163, 3307.35 FROM DUAL UNION ALL
    SELECT '19/01/20', 30, 8122.97 FROM DUAL UNION ALL
    SELECT '19/01/20', 98, 8063.44 FROM DUAL UNION ALL
    SELECT '19/01/20', 154, 4224.2 FROM DUAL UNION ALL
    SELECT '19/01/20', 20, 7294.52 FROM DUAL UNION ALL
    SELECT '19/01/20', 158, 4017.52 FROM DUAL UNION ALL
    SELECT '20/01/20', 57, 2695.95 FROM DUAL UNION ALL
    SELECT '21/01/20', 94, 596.8 FROM DUAL UNION ALL
    SELECT '21/01/20', 142, 3004.94 FROM DUAL UNION ALL
    SELECT '22/01/20', 130, 6004.4 FROM DUAL UNION ALL
    SELECT '23/01/20', 117, 7334.52 FROM DUAL UNION ALL
    SELECT '23/01/20', 179, 222.8 FROM DUAL UNION ALL
    SELECT '23/01/20', 3, 6966.58 FROM DUAL UNION ALL
    SELECT '23/01/20', 156, 168.58 FROM DUAL UNION ALL
    SELECT '24/01/20', 97, 9793.1 FROM DUAL UNION ALL
    SELECT '24/01/20', 110, 7208.85 FROM DUAL UNION ALL
    SELECT '24/01/20', 29, 3776.48 FROM DUAL UNION ALL
    SELECT '24/01/20', 76, 7236.04 FROM DUAL UNION ALL
    SELECT '25/01/20', 52, 382.71 FROM DUAL UNION ALL
    SELECT '25/01/20', 149, 7979.47 FROM DUAL UNION ALL
    SELECT '25/01/20', 82, 477.18 FROM DUAL UNION ALL
    SELECT '25/01/20', 79, 4611.23 FROM DUAL UNION ALL
    SELECT '26/01/20', 21, 3154.04 FROM DUAL UNION ALL
    SELECT '26/01/20', 85, 1197.84 FROM DUAL UNION ALL
    SELECT '26/01/20', 183, 8524.93 FROM DUAL UNION ALL
    SELECT '26/01/20', 74, 5725.14 FROM DUAL UNION ALL
    SELECT '26/01/20', 14, 8104.67 FROM DUAL UNION ALL
    SELECT '26/01/20', 115, 5390.04 FROM DUAL UNION ALL
    SELECT '27/01/20', 17, 2974.37 FROM DUAL UNION ALL
    SELECT '27/01/20', 138, 3798.15 FROM DUAL UNION ALL
    SELECT '27/01/20', 185, 8052.57 FROM DUAL UNION ALL
    SELECT '27/01/20', 87, 4721.26 FROM DUAL UNION ALL
    SELECT '29/01/20', 197, 6753.44 FROM DUAL UNION ALL
    SELECT '29/01/20', 168, 1441.28 FROM DUAL UNION ALL
    SELECT '29/01/20', 28, 2099.64 FROM DUAL UNION ALL
    SELECT '29/01/20', 128, 3074.52 FROM DUAL UNION ALL
    SELECT '29/01/20', 143, 7469.45 FROM DUAL UNION ALL
    SELECT '30/01/20', 70, 4408.64 FROM DUAL UNION ALL
    SELECT '30/01/20', 187, 5465.03 FROM DUAL UNION ALL
    SELECT '30/01/20', 74, 3878.73 FROM DUAL UNION ALL
    SELECT '30/01/20', 86, 223.36 FROM DUAL UNION ALL
    SELECT '31/01/20', 174, 7242.14 FROM DUAL UNION ALL
    SELECT '01/02/20', 125, 993.4 FROM DUAL UNION ALL
    SELECT '02/02/20', 45, 2320.26 FROM DUAL UNION ALL
    SELECT '02/02/20', 105, 9301.52 FROM DUAL UNION ALL
    SELECT '02/02/20', 46, 8754.65 FROM DUAL UNION ALL
    SELECT '04/02/20', 77, 8238.18 FROM DUAL UNION ALL
    SELECT '04/02/20', 197, 4804.6 FROM DUAL UNION ALL
    SELECT '04/02/20', 131, 187.82 FROM DUAL UNION ALL
    SELECT '04/02/20', 96, 7633.63 FROM DUAL UNION ALL
    SELECT '04/02/20', 175, 7053.63 FROM DUAL UNION ALL
    SELECT '05/02/20', 196, 9916.73 FROM DUAL UNION ALL
    SELECT '05/02/20', 151, 6304.88 FROM DUAL UNION ALL
    SELECT '05/02/20', 127, 886.21 FROM DUAL UNION ALL
    SELECT '05/02/20', 154, 6770.1 FROM DUAL UNION ALL
    SELECT '06/02/20', 125, 4760.15 FROM DUAL UNION ALL
    SELECT '06/02/20', 82, 3021.43 FROM DUAL UNION ALL
    SELECT '08/02/20', 136, 4236.56 FROM DUAL UNION ALL
    SELECT '08/02/20', 138, 5026.85 FROM DUAL UNION ALL
    SELECT '08/02/20', 117, 7331.22 FROM DUAL UNION ALL
    SELECT '09/02/20', 3, 8385.16 FROM DUAL UNION ALL
    SELECT '09/02/20', 28, 3173.0 FROM DUAL UNION ALL
    SELECT '10/02/20', 39, 5036.24 FROM DUAL UNION ALL
    SELECT '10/02/20', 177, 7969.79 FROM DUAL UNION ALL
    SELECT '10/02/20', 20, 5028.9 FROM DUAL UNION ALL
    SELECT '10/02/20', 34, 1038.68 FROM DUAL UNION ALL
    SELECT '10/02/20', 30, 2423.49 FROM DUAL UNION ALL
    SELECT '10/02/20', 71, 3633.48 FROM DUAL UNION ALL
    SELECT '11/02/20', 178, 1003.68 FROM DUAL UNION ALL
    SELECT '11/02/20', 103, 8580.64 FROM DUAL UNION ALL
    SELECT '11/02/20', 70, 7258.25 FROM DUAL UNION ALL
    SELECT '11/02/20', 176, 7194.13 FROM DUAL UNION ALL
    SELECT '12/02/20', 166, 685.94 FROM DUAL UNION ALL
    SELECT '12/02/20', 89, 9091.61 FROM DUAL UNION ALL
    SELECT '12/02/20', 138, 7441.04 FROM DUAL UNION ALL
    SELECT '12/02/20', 28, 8354.03 FROM DUAL UNION ALL
    SELECT '12/02/20', 147, 1188.16 FROM DUAL UNION ALL
    SELECT '13/02/20', 44, 9454.57 FROM DUAL UNION ALL
    SELECT '13/02/20', 173, 7333.12 FROM DUAL UNION ALL
    SELECT '14/02/20', 190, 2447.94 FROM DUAL UNION ALL
    SELECT '01/03/20', 101, 3298.24 FROM DUAL UNION ALL
    SELECT '02/03/20', 66, 8439.09 FROM DUAL UNION ALL
    SELECT '02/03/20', 147, 9509.65 FROM DUAL UNION ALL
    SELECT '02/03/20', 141, 9900.02 FROM DUAL UNION ALL
    SELECT '02/03/20', 127, 3836.36 FROM DUAL UNION ALL
    SELECT '02/03/20', 62, 2197.52 FROM DUAL UNION ALL
    SELECT '03/03/20', 38, 1933.46 FROM DUAL UNION ALL
    SELECT '03/03/20', 1, 6544.61 FROM DUAL UNION ALL
    SELECT '04/03/20', 34, 597.16 FROM DUAL UNION ALL
    SELECT '04/03/20', 83, 4441.35 FROM DUAL UNION ALL
    SELECT '04/03/20', 19, 9018.5 FROM DUAL UNION ALL
    SELECT '04/03/20', 71, 8641.6 FROM DUAL UNION ALL
    SELECT '05/03/20', 22, 8812.07 FROM DUAL UNION ALL
    SELECT '05/03/20', 175, 1938.89 FROM DUAL UNION ALL
    SELECT '05/03/20', 97, 2901.7 FROM DUAL UNION ALL
    SELECT '06/03/20', 24, 1247.02 FROM DUAL UNION ALL
    SELECT '06/03/20', 124, 2049.04 FROM DUAL UNION ALL
    SELECT '07/03/20', 187, 2391.93 FROM DUAL UNION ALL
    SELECT '07/03/20', 126, 1966.14 FROM DUAL UNION ALL
    SELECT '07/03/20', 195, 6303.17 FROM DUAL UNION ALL
    SELECT '08/03/20', 134, 7415.97 FROM DUAL UNION ALL
    SELECT '08/03/20', 27, 658.68 FROM DUAL UNION ALL
    SELECT '09/03/20', 195, 9150.9 FROM DUAL UNION ALL
    SELECT '10/03/20', 33, 8918.34 FROM DUAL UNION ALL
    SELECT '10/03/20', 74, 5371.5 FROM DUAL UNION ALL
    SELECT '10/03/20', 156, 2429.03 FROM DUAL UNION ALL
    SELECT '10/03/20', 144, 9947.0 FROM DUAL UNION ALL
    SELECT '11/03/20', 59, 1478.89 FROM DUAL UNION ALL
    SELECT '11/03/20', 32, 152.22 FROM DUAL UNION ALL
    SELECT '11/03/20', 18, 8691.2 FROM DUAL UNION ALL
    SELECT '12/03/20', 184, 4371.36 FROM DUAL UNION ALL
    SELECT '13/03/20', 121, 2021.54 FROM DUAL UNION ALL
    SELECT '13/03/20', 187, 9422.4 FROM DUAL UNION ALL
    SELECT '13/03/20', 49, 8191.83 FROM DUAL UNION ALL
    SELECT '13/03/20', 8, 7294.16 FROM DUAL UNION ALL
    SELECT '14/03/20', 96, 2757.31 FROM DUAL UNION ALL
    SELECT '14/03/20', 101, 6272.89 FROM DUAL UNION ALL
    SELECT '14/03/20', 167, 3315.2 FROM DUAL UNION ALL
    SELECT '15/03/20', 57, 3098.34 FROM DUAL UNION ALL
     SELECT '01/04/20', 70, 8111.04 FROM DUAL UNION ALL
    SELECT '01/04/20', 200, 7852.95 FROM DUAL UNION ALL
    SELECT '01/04/20', 55, 2459.56 FROM DUAL UNION ALL
    SELECT '01/04/20', 162, 8373.33 FROM DUAL UNION ALL
    SELECT '01/04/20', 131, 5963.91 FROM DUAL UNION ALL
    SELECT '02/04/20', 150, 1902.81 FROM DUAL UNION ALL
    SELECT '02/04/20', 141, 329.52 FROM DUAL UNION ALL
    SELECT '02/04/20', 48, 2812.63 FROM DUAL UNION ALL
    SELECT '02/04/20', 164, 2294.29 FROM DUAL UNION ALL
    SELECT '03/04/20', 13, 2991.11 FROM DUAL UNION ALL
    SELECT '03/04/20', 186, 1226.51 FROM DUAL UNION ALL
    SELECT '03/04/20', 2, 6932.35 FROM DUAL UNION ALL
    SELECT '03/04/20', 168, 2120.62 FROM DUAL UNION ALL
    SELECT '04/04/20', 192, 8958.61 FROM DUAL UNION ALL
    SELECT '05/04/20', 166, 5388.39 FROM DUAL UNION ALL
    SELECT '05/04/20', 74, 9781.75 FROM DUAL UNION ALL
    SELECT '05/04/20', 185, 8240.13 FROM DUAL UNION ALL
    SELECT '05/04/20', 143, 3194.98 FROM DUAL UNION ALL
    SELECT '05/04/20', 80, 1929.99 FROM DUAL UNION ALL
    SELECT '05/04/20', 34, 7836.1 FROM DUAL UNION ALL
    SELECT '06/04/20', 44, 6860.3 FROM DUAL UNION ALL
    SELECT '07/04/20', 169, 9885.31 FROM DUAL UNION ALL
    SELECT '07/04/20', 27, 721.68 FROM DUAL UNION ALL
    SELECT '08/04/20', 40, 8735.28 FROM DUAL UNION ALL
    SELECT '09/04/20', 15, 2183.62 FROM DUAL UNION ALL
    SELECT '09/04/20', 1, 2170.11 FROM DUAL UNION ALL
    SELECT '09/04/20', 61, 4902.46 FROM DUAL UNION ALL
    SELECT '09/04/20', 114, 2552.57 FROM DUAL UNION ALL
    SELECT '09/04/20', 4, 6257.83 FROM DUAL UNION ALL
    SELECT '09/04/20', 84, 5683.57 FROM DUAL UNION ALL
    SELECT '09/04/20', 18, 2262.35 FROM DUAL UNION ALL
    SELECT '10/04/20', 3, 9545.2 FROM DUAL UNION ALL
    SELECT '10/04/20', 65, 8722.1 FROM DUAL UNION ALL
    SELECT '10/04/20', 155, 4963.46 FROM DUAL UNION ALL
    SELECT '10/04/20', 105, 6945.78 FROM DUAL UNION ALL
    SELECT '11/04/20', 103, 4992.86 FROM DUAL UNION ALL
    SELECT '13/04/20', 135, 1311.24 FROM DUAL UNION ALL
    SELECT '13/04/20', 22, 7871.84 FROM DUAL UNION ALL
    SELECT '13/04/20', 165, 1802.91 FROM DUAL UNION ALL
    SELECT '14/04/20', 12, 5768.37 FROM DUAL UNION ALL
    SELECT '14/04/20', 21, 6370.56 FROM DUAL UNION ALL
    SELECT '14/04/20', 124, 1727.12 FROM DUAL UNION ALL
    SELECT '15/04/20', 170, 7798.82 FROM DUAL UNION ALL
    SELECT '01/05/20', 158, 1968.77 FROM DUAL UNION ALL
    SELECT '01/05/20', 195, 2995.68 FROM DUAL UNION ALL
    SELECT '01/05/20', 31, 7040.81 FROM DUAL UNION ALL
    SELECT '01/05/20', 191, 7698.07 FROM DUAL UNION ALL
    SELECT '01/05/20', 107, 1476.66 FROM DUAL UNION ALL
    SELECT '02/05/20', 191, 9562.58 FROM DUAL UNION ALL
    SELECT '02/05/20', 167, 431.9 FROM DUAL UNION ALL
    SELECT '02/05/20', 127, 3229.68 FROM DUAL UNION ALL
    SELECT '02/05/20', 65, 2780.52 FROM DUAL UNION ALL
    SELECT '02/05/20', 197, 2741.4 FROM DUAL UNION ALL
    SELECT '02/05/20', 37, 6948.74 FROM DUAL UNION ALL
    SELECT '03/05/20', 115, 5273.59 FROM DUAL UNION ALL
    SELECT '03/05/20', 19, 4991.59 FROM DUAL UNION ALL
    SELECT '03/05/20', 1, 7801.21 FROM DUAL UNION ALL
    SELECT '03/05/20', 97, 4283.49 FROM DUAL UNION ALL
    SELECT '04/05/20', 56, 1996.91 FROM DUAL UNION ALL
    SELECT '04/05/20', 151, 8200.96 FROM DUAL UNION ALL
    SELECT '04/05/20', 166, 7118.73 FROM DUAL UNION ALL
    SELECT '05/05/20', 67, 5318.78 FROM DUAL UNION ALL
    SELECT '07/05/20', 121, 9365.9 FROM DUAL UNION ALL
    SELECT '08/05/20', 84, 8626.33 FROM DUAL UNION ALL
    SELECT '08/05/20', 176, 3964.72 FROM DUAL UNION ALL
    SELECT '09/05/20', 120, 326.02 FROM DUAL UNION ALL
    SELECT '09/05/20', 23, 2271.73 FROM DUAL UNION ALL
    SELECT '10/05/20', 125, 7523.59 FROM DUAL UNION ALL
    SELECT '10/05/20', 75, 8851.82 FROM DUAL UNION ALL
    SELECT '10/05/20', 58, 3733.36 FROM DUAL UNION ALL
    SELECT '10/05/20', 79, 5203.56 FROM DUAL UNION ALL
    SELECT '12/05/20', 123, 214.23 FROM DUAL UNION ALL
    SELECT '12/05/20', 31, 3391.27 FROM DUAL UNION ALL
    SELECT '12/05/20', 122, 2398.34 FROM DUAL UNION ALL
    SELECT '13/05/20', 18, 5859.43 FROM DUAL UNION ALL
    SELECT '13/05/20', 174, 5412.78 FROM DUAL UNION ALL
    SELECT '13/05/20', 61, 7023.35 FROM DUAL UNION ALL
    SELECT '13/05/20', 15, 1638.14 FROM DUAL UNION ALL
    SELECT '13/05/20', 44, 7348.62 FROM DUAL UNION ALL
    SELECT '13/05/20', 110, 6555.07 FROM DUAL UNION ALL
    SELECT '14/05/20', 18, 8631.22 FROM DUAL UNION ALL
    SELECT '14/05/20', 65, 625.04 FROM DUAL UNION ALL
    SELECT '14/05/20', 152, 9185.31 FROM DUAL UNION ALL
    SELECT '15/05/20', 100, 2046.15 FROM DUAL UNION ALL
    SELECT '15/05/20', 174, 4292.01 FROM DUAL UNION ALL
    SELECT '15/05/20', 134, 9316.09 FROM DUAL UNION ALL
    SELECT '15/05/20', 137, 5284.9 FROM DUAL UNION ALL
    SELECT '16/05/20', 14, 2403.22 FROM DUAL UNION ALL
    SELECT '17/05/20', 121, 9920.64 FROM DUAL UNION ALL
    SELECT '17/05/20', 177, 1625.74 FROM DUAL UNION ALL
    SELECT '18/05/20', 196, 7174.51 FROM DUAL UNION ALL
    SELECT '18/05/20', 107, 4007.07 FROM DUAL UNION ALL
    SELECT '18/05/20', 5, 9797.39 FROM DUAL UNION ALL
    SELECT '19/05/20', 46, 6249.97 FROM DUAL UNION ALL
    SELECT '19/05/20', 8, 4021.34 FROM DUAL UNION ALL
    SELECT '19/05/20', 198, 6907.49 FROM DUAL UNION ALL
    SELECT '20/05/20', 128, 5074.85  FROM DUAL
) ef;

COMMIT;


INSERT INTO RevenueFact (passenger_id, date_id, flight_id, promotion_id, booking_channel_id, revenue_type, revenue_amount)
SELECT 
    (SELECT sk_passenger_id FROM (SELECT sk_passenger_id FROM customer_dim ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1) AS passenger_id,
    TO_DATE(ef.date_id, 'DD/MM/YY') AS date_id,  -- Convert string date to DATE format
    ef.flight_id,
    (SELECT promotion_id FROM (SELECT promotion_id FROM promotion_dim ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1) AS promotion_id,
    (SELECT channel_id FROM (SELECT channel_id FROM booking_channel_dim ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1) AS booking_channel_id,
    CASE 
        WHEN DBMS_RANDOM.VALUE < 0.5 THEN 'Ticket Sale'
        WHEN DBMS_RANDOM.VALUE < 0.8 THEN 'Baggage Fee'
        ELSE 'Onboard Sales'
    END AS revenue_type,  -- Randomly assign a revenue type
    ef.revenue_amount
FROM (
    SELECT 
        '01/01/20' AS date_id, 83 AS flight_id, 5227.98 AS revenue_amount FROM DUAL UNION ALL
    SELECT '01/01/20', 72, 13127.1 FROM DUAL UNION ALL
    SELECT '01/01/20', 6, 15062.92 FROM DUAL UNION ALL
    SELECT '02/01/20', 21, 16942.46 FROM DUAL UNION ALL
    SELECT '02/01/20', 13, 8210.54 FROM DUAL UNION ALL
    SELECT '02/01/20', 159, 15446.56 FROM DUAL UNION ALL
    SELECT '02/01/20', 11, 19823.3 FROM DUAL UNION ALL
    SELECT '03/01/20', 31, 7045.43 FROM DUAL UNION ALL
    SELECT '03/01/20', 102, 19238.07 FROM DUAL UNION ALL
    SELECT '03/01/20', 64, 5386.95 FROM DUAL UNION ALL
    SELECT '03/01/20', 77, 8463.99 FROM DUAL UNION ALL
    SELECT '04/01/20', 57, 17526.49 FROM DUAL UNION ALL
    SELECT '04/01/20', 7, 15561.39 FROM DUAL UNION ALL
    SELECT '04/01/20', 22, 9823.66 FROM DUAL UNION ALL
    SELECT '05/01/20', 129, 10005.74 FROM DUAL UNION ALL
    SELECT '06/01/20', 72, 14888.12 FROM DUAL UNION ALL
    SELECT '06/01/20', 23, 9357.56 FROM DUAL UNION ALL
    SELECT '07/01/20', 157, 8897.3 FROM DUAL UNION ALL
    SELECT '07/01/20', 37, 18837.13 FROM DUAL UNION ALL
    SELECT '07/01/20', 12, 19511.11 FROM DUAL UNION ALL
    SELECT '07/01/20', 112, 5241.29 FROM DUAL UNION ALL
    SELECT '07/01/20', 176, 7816.55 FROM DUAL UNION ALL
    SELECT '07/01/20', 165, 19544.42 FROM DUAL UNION ALL
    SELECT '08/01/20', 184, 7412.99 FROM DUAL UNION ALL
    SELECT '09/01/20', 145, 6979.84 FROM DUAL UNION ALL
    SELECT '09/01/20', 31, 13089.73 FROM DUAL UNION ALL
    SELECT '09/01/20', 101, 11620.83 FROM DUAL UNION ALL
    SELECT '09/01/20', 143, 8410.68 FROM DUAL UNION ALL
    SELECT '10/01/20', 87, 16552.29 FROM DUAL UNION ALL
    SELECT '10/01/20', 44, 8609.27 FROM DUAL UNION ALL
    SELECT '11/01/20', 90, 9726.63 FROM DUAL UNION ALL
    SELECT '11/01/20', 85, 8566.95 FROM DUAL UNION ALL
    SELECT '12/01/20', 194, 14169.77 FROM DUAL UNION ALL
    SELECT '12/01/20', 129, 14965.78 FROM DUAL UNION ALL
    SELECT '12/01/20', 5, 17073.26 FROM DUAL UNION ALL
    SELECT '12/01/20', 194, 14169.77 FROM DUAL UNION ALL
    SELECT '13/01/20', 25, 10091.05 FROM DUAL UNION ALL
    SELECT '13/01/20', 61, 15901.79 FROM DUAL UNION ALL
    SELECT '14/01/20', 6, 16065.59 FROM DUAL UNION ALL
    SELECT '14/01/20', 160, 18405.39 FROM DUAL UNION ALL
    SELECT '15/01/20', 118, 10765.53 FROM DUAL UNION ALL
    SELECT '15/01/20', 147, 14747.12 FROM DUAL UNION ALL
    SELECT '15/01/20', 169, 17824.49 FROM DUAL UNION ALL
    SELECT '16/01/20', 53, 6065.2 FROM DUAL UNION ALL
    SELECT '16/01/20', 15, 14055.14 FROM DUAL UNION ALL
    SELECT '16/01/20', 92, 10956.81 FROM DUAL UNION ALL
    SELECT '16/01/20', 104, 8480.76 FROM DUAL UNION ALL
    SELECT '17/01/20', 123, 5118.59 FROM DUAL UNION ALL
    SELECT '17/01/20', 62, 8684.15 FROM DUAL UNION ALL
    SELECT '17/01/20', 188, 7676.96 FROM DUAL UNION ALL
    SELECT '18/01/20', 195, 17058.62 FROM DUAL UNION ALL
    SELECT '18/01/20', 126, 8353.04 FROM DUAL UNION ALL
    SELECT '18/01/20', 67, 7029.55 FROM DUAL UNION ALL
    SELECT '18/01/20', 163, 5544.64 FROM DUAL UNION ALL
    SELECT '19/01/20', 30, 11279.75 FROM DUAL UNION ALL
    SELECT '19/01/20', 98, 13330.59 FROM DUAL UNION ALL
    SELECT '19/01/20', 154, 15864.14 FROM DUAL UNION ALL
    SELECT '19/01/20', 20, 16695.22 FROM DUAL UNION ALL
    SELECT '19/01/20', 158, 10129.37 FROM DUAL UNION ALL
    SELECT '20/01/20', 57, 13477.96 FROM DUAL UNION ALL
    SELECT '21/01/20', 142, 7224.19 FROM DUAL UNION ALL
    SELECT '22/01/20', 130, 9634.59  FROM DUAL UNION ALL
    SELECT '01/02/20', 125, 15810.46 FROM DUAL UNION ALL
    SELECT '02/02/20', 45, 15462.49 FROM DUAL UNION ALL
    SELECT '02/02/20', 105, 10169.19 FROM DUAL UNION ALL
    SELECT '02/02/20', 46, 12338.5 FROM DUAL UNION ALL
    SELECT '04/02/20', 77, 7688.32 FROM DUAL UNION ALL
    SELECT '04/02/20', 197, 18660.23 FROM DUAL UNION ALL
    SELECT '04/02/20', 131, 18854.35 FROM DUAL UNION ALL
    SELECT '04/02/20', 96, 10302.18 FROM DUAL UNION ALL
    SELECT '04/02/20', 175, 13247.96 FROM DUAL UNION ALL
    SELECT '05/02/20', 196, 18240.22 FROM DUAL UNION ALL
    SELECT '05/02/20', 151, 19038.02 FROM DUAL UNION ALL
    SELECT '05/02/20', 127, 8769.86 FROM DUAL UNION ALL
    SELECT '05/02/20', 154, 7706.11 FROM DUAL UNION ALL
    SELECT '06/02/20', 125, 16968.51 FROM DUAL UNION ALL
    SELECT '06/02/20', 82, 18247.18 FROM DUAL UNION ALL
    SELECT '08/02/20', 136, 8400.89 FROM DUAL UNION ALL
    SELECT '08/02/20', 138, 7244.2 FROM DUAL UNION ALL
    SELECT '08/02/20', 117, 11131.82 FROM DUAL UNION ALL
    SELECT '09/02/20', 3, 13933.57 FROM DUAL UNION ALL
    SELECT '09/02/20', 28, 15046.22 FROM DUAL UNION ALL
    SELECT '10/02/20', 39, 17224.48 FROM DUAL UNION ALL
    SELECT '10/02/20', 177, 11109.3 FROM DUAL UNION ALL
    SELECT '10/02/20', 20, 9082.96 FROM DUAL UNION ALL
    SELECT '10/02/20', 34, 17306.58 FROM DUAL UNION ALL
    SELECT '10/02/20', 30, 6970.26 FROM DUAL UNION ALL
    SELECT '10/02/20', 71, 8133.62 FROM DUAL UNION ALL
    SELECT '01/03/20', 101, 14994.92 FROM DUAL UNION ALL
    SELECT '02/03/20', 66, 7713.58 FROM DUAL UNION ALL
    SELECT '02/03/20', 147, 12770.28 FROM DUAL UNION ALL
    SELECT '02/03/20', 141, 19483.53 FROM DUAL UNION ALL
    SELECT '02/03/20', 127, 10348.11 FROM DUAL UNION ALL
    SELECT '02/03/20', 62, 9439.94 FROM DUAL UNION ALL
    SELECT '03/03/20', 38, 16541.63 FROM DUAL UNION ALL
    SELECT '03/03/20', 1, 5240.92 FROM DUAL UNION ALL
    SELECT '04/03/20', 34, 7105.84 FROM DUAL UNION ALL
    SELECT '04/03/20', 83, 5765.05 FROM DUAL UNION ALL
    SELECT '04/03/20', 19, 12026.9 FROM DUAL UNION ALL
    SELECT '04/03/20', 71, 5806.41 FROM DUAL UNION ALL
    SELECT '05/03/20', 22, 11798.43 FROM DUAL UNION ALL
    SELECT '05/03/20', 175, 8030.18 FROM DUAL UNION ALL
    SELECT '05/03/20', 97, 11069.65 FROM DUAL UNION ALL
    SELECT '06/03/20', 24, 16976.44 FROM DUAL UNION ALL
    SELECT '06/03/20', 124, 8848.18 FROM DUAL UNION ALL
    SELECT '07/03/20', 187, 8192.95 FROM DUAL UNION ALL
    SELECT '07/03/20', 126, 12533.14 FROM DUAL UNION ALL
    SELECT '07/03/20', 195, 7390.67 FROM DUAL UNION ALL
    SELECT '08/03/20', 134, 14754.32 FROM DUAL UNION ALL
    SELECT '08/03/20', 27, 7702.03 FROM DUAL UNION ALL
    SELECT '09/03/20', 195, 16675.56 FROM DUAL UNION ALL
    SELECT '10/03/20', 33, 12987.21 FROM DUAL UNION ALL
    SELECT '10/03/20', 74, 19658.56 FROM DUAL UNION ALL
    SELECT '10/03/20', 156, 11318.67 FROM DUAL UNION ALL
    SELECT '10/03/20', 144, 10053.61 FROM DUAL UNION ALL
    SELECT '11/03/20', 59, 10308.55 FROM DUAL UNION ALL
    SELECT '11/03/20', 32, 19995.73 FROM DUAL UNION ALL
    SELECT '11/03/20', 18, 16161.02 FROM DUAL UNION ALL
    SELECT '12/03/20', 184, 7590.09 FROM DUAL UNION ALL
    SELECT '13/03/20', 121, 14696.33 FROM DUAL UNION ALL
    SELECT '13/03/20', 187, 17342.54 FROM DUAL UNION ALL
    SELECT '13/03/20', 49, 6065.11 FROM DUAL UNION ALL
    SELECT '13/03/20', 8, 12118.72 FROM DUAL UNION ALL
    SELECT '14/03/20', 96, 16813.13 FROM DUAL UNION ALL
    SELECT '14/03/20', 101, 13014.06 FROM DUAL UNION ALL
    SELECT '14/03/20', 167, 6009.59 FROM DUAL UNION ALL
    SELECT '15/03/20', 57, 15539.8 FROM DUAL UNION ALL
    SELECT '01/04/20', 70, 7398.01 FROM DUAL UNION ALL
    SELECT '01/04/20', 200, 6297.04 FROM DUAL UNION ALL
    SELECT '01/04/20', 55, 8025.92 FROM DUAL UNION ALL
    SELECT '01/04/20', 162, 7648.71 FROM DUAL UNION ALL
    SELECT '01/04/20', 131, 17515.37 FROM DUAL UNION ALL
    SELECT '02/04/20', 150, 9071.38 FROM DUAL UNION ALL
    SELECT '02/04/20', 141, 7135.52 FROM DUAL UNION ALL
    SELECT '02/04/20', 48, 16695.18 FROM DUAL UNION ALL
    SELECT '02/04/20', 164, 10810.13 FROM DUAL UNION ALL
    SELECT '03/04/20', 13, 6336.78 FROM DUAL UNION ALL
    SELECT '03/04/20', 186, 9238.14 FROM DUAL UNION ALL
    SELECT '03/04/20', 2, 17467.3 FROM DUAL UNION ALL
    SELECT '03/04/20', 168, 17070.6 FROM DUAL UNION ALL
    SELECT '04/04/20', 192, 10844.83 FROM DUAL UNION ALL
    SELECT '05/04/20', 166, 5243.74 FROM DUAL UNION ALL
    SELECT '05/04/20', 74, 13954.38 FROM DUAL UNION ALL
    SELECT '05/04/20', 185, 13250.33 FROM DUAL UNION ALL
    SELECT '05/04/20', 143, 5092.61 FROM DUAL UNION ALL
    SELECT '05/04/20', 80, 14963.18 FROM DUAL UNION ALL
    SELECT '05/04/20', 34, 18744.96 FROM DUAL UNION ALL
    SELECT '06/04/20', 44, 18040.21 FROM DUAL UNION ALL
    SELECT '07/04/20', 169, 11986.86 FROM DUAL UNION ALL
    SELECT '07/04/20', 27, 19198 FROM DUAL UNION ALL
    SELECT '08/04/20', 40, 19718.59 FROM DUAL UNION ALL
    SELECT '09/04/20', 15, 8957.01 FROM DUAL UNION ALL
    SELECT '09/04/20', 1, 12234.22 FROM DUAL UNION ALL
    SELECT '09/04/20', 61, 12496.74 FROM DUAL UNION ALL
    SELECT '09/04/20', 114, 18593.97 FROM DUAL UNION ALL
    SELECT '09/04/20', 4, 19129.6 FROM DUAL UNION ALL
    SELECT '09/04/20', 84, 6677.1 FROM DUAL UNION ALL
    SELECT '09/04/20', 18, 16716.67 FROM DUAL UNION ALL
    SELECT '10/04/20', 3, 14991.55 FROM DUAL UNION ALL
    SELECT '10/04/20', 65, 10136.67 FROM DUAL UNION ALL
    SELECT '10/04/20', 155, 18540.91 FROM DUAL UNION ALL
    SELECT '10/04/20', 105, 5362.03 FROM DUAL UNION ALL
    SELECT '11/04/20', 103, 9298.7 FROM DUAL UNION ALL
    SELECT '13/04/20', 135, 13510.78 FROM DUAL UNION ALL
    SELECT '13/04/20', 22, 11967.77 FROM DUAL UNION ALL
    SELECT '13/04/20', 165, 12608.18 FROM DUAL UNION ALL
    SELECT '14/04/20', 12, 12423.6 FROM DUAL UNION ALL
    SELECT '14/04/20', 21, 7023.46 FROM DUAL UNION ALL
    SELECT '14/04/20', 124, 17575.97 FROM DUAL UNION ALL
    SELECT '15/04/20', 170, 13600.5 FROM DUAL UNION ALL
    SELECT '01/05/20', 158, 12175.18 FROM DUAL UNION ALL
    SELECT '01/05/20', 195, 13434.63 FROM DUAL UNION ALL
    SELECT '01/05/20', 31, 7456.61 FROM DUAL UNION ALL
    SELECT '01/05/20', 191, 6841.88 FROM DUAL UNION ALL
    SELECT '01/05/20', 107, 17977.41 FROM DUAL UNION ALL
    SELECT '02/05/20', 191, 10577.92 FROM DUAL UNION ALL
    SELECT '02/05/20', 167, 5299.33 FROM DUAL UNION ALL
    SELECT '02/05/20', 127, 19254.04 FROM DUAL UNION ALL
    SELECT '02/05/20', 65, 11473.6 FROM DUAL UNION ALL
    SELECT '02/05/20', 197, 7674.49 FROM DUAL UNION ALL
    SELECT '02/05/20', 37, 13683.86 FROM DUAL UNION ALL
    SELECT '03/05/20', 115, 10192.98 FROM DUAL UNION ALL
    SELECT '03/05/20', 19, 5496.23 FROM DUAL UNION ALL
    SELECT '03/05/20', 1, 10220.92 FROM DUAL UNION ALL
    SELECT '03/05/20', 97, 16010.15 FROM DUAL UNION ALL
    SELECT '04/05/20', 56, 9151.43 FROM DUAL UNION ALL
    SELECT '04/05/20', 151, 18145.64 FROM DUAL UNION ALL
    SELECT '04/05/20', 166, 10933.71 FROM DUAL UNION ALL
    SELECT '05/05/20', 67, 8778.55 FROM DUAL UNION ALL
    SELECT '07/05/20', 121, 9176.65 FROM DUAL UNION ALL
    SELECT '08/05/20', 84, 12027.22 FROM DUAL UNION ALL
    SELECT '08/05/20', 176, 18851.42 FROM DUAL UNION ALL
    SELECT '09/05/20', 120, 7996.16 FROM DUAL UNION ALL
    SELECT '09/05/20', 23, 6203.17 FROM DUAL UNION ALL
    SELECT '10/05/20', 125, 18495.4 FROM DUAL UNION ALL
    SELECT '10/05/20', 75, 17281.04 FROM DUAL UNION ALL
    SELECT '10/05/20', 58, 12845.41 FROM DUAL UNION ALL
    SELECT '10/05/20', 79, 18565.91 FROM DUAL UNION ALL
    SELECT '12/05/20', 123, 13533 FROM DUAL UNION ALL
    SELECT '12/05/20', 31, 6022.79 FROM DUAL UNION ALL
    SELECT '12/05/20', 122, 16997.01 FROM DUAL UNION ALL
    SELECT '13/05/20', 18, 15903.25 FROM DUAL UNION ALL
    SELECT '13/05/20', 174, 6748.19 FROM DUAL UNION ALL
    SELECT '13/05/20', 61, 11525.3 FROM DUAL UNION ALL
    SELECT '13/05/20', 15, 6763.94 FROM DUAL UNION ALL
    SELECT '13/05/20', 44, 11293.39 FROM DUAL UNION ALL
    SELECT '13/05/20', 110, 16556.49 FROM DUAL UNION ALL
    SELECT '14/05/20', 18, 11469.09 FROM DUAL UNION ALL
    SELECT '14/05/20', 65, 11967.14 FROM DUAL UNION ALL
    SELECT '14/05/20', 152, 9914.76 FROM DUAL UNION ALL
    SELECT '15/05/20', 100, 10851.01 FROM DUAL UNION ALL
    SELECT '15/05/20', 174, 10512.91 FROM DUAL UNION ALL
    SELECT '15/05/20', 134, 9110.65 FROM DUAL UNION ALL
    SELECT '15/05/20', 137, 14838.15 FROM DUAL
) ef;

commit;

INSERT INTO CustomerCareFact VALUES (1, TO_DATE('2020-03-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 40, 'Chat', 4.51, 27);
INSERT INTO CustomerCareFact VALUES (2, TO_DATE('2020-03-02', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 6, 'Chat', 3.01, 40);
INSERT INTO CustomerCareFact VALUES (3, TO_DATE('2020-03-03', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 35, 'In-Person', 4.42, 35);
INSERT INTO CustomerCareFact VALUES (4, TO_DATE('2020-03-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 18, 'Chat', 3.06, 35);
INSERT INTO CustomerCareFact VALUES (5, TO_DATE('2020-03-05', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 33, 'Chat', 1.11, 2);
INSERT INTO CustomerCareFact VALUES (6, TO_DATE('2020-03-06', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 5, 'In-Person', 3.35, 13);
INSERT INTO CustomerCareFact VALUES (7, TO_DATE('2020-03-07', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 35, 'Chat', 1.04, 47);
INSERT INTO CustomerCareFact VALUES (8, TO_DATE('2020-03-08', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 9, 'In-Person', 3.36, 3);
INSERT INTO CustomerCareFact VALUES (9, TO_DATE('2020-03-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 4, 'Call', 3.89, 47);

INSERT INTO CustomerCareFact VALUES (10, TO_DATE('2020-03-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 33, 'Email', 4.90, 46);
INSERT INTO CustomerCareFact VALUES (11, TO_DATE('2020-03-11', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 14, 'Email', 1.26, 4);
INSERT INTO CustomerCareFact VALUES (12, TO_DATE('2020-03-12', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 19, 'In-Person', 3.40, 23);
INSERT INTO CustomerCareFact VALUES (13, TO_DATE('2020-03-13', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 40, 'In-Person', 2.11, 46);
INSERT INTO CustomerCareFact VALUES (14, TO_DATE('2020-03-14', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 6, 'In-Person', 2.02, 6);
INSERT INTO CustomerCareFact VALUES (15, TO_DATE('2020-03-15', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 23:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 22, 'Chat', 4.86, 56);
INSERT INTO CustomerCareFact VALUES (16, TO_DATE('2020-03-16', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 27, 'Call', 2.70, 27);
INSERT INTO CustomerCareFact VALUES (17, TO_DATE('2020-03-17', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 31, 'Email', 3.78, 23);
INSERT INTO CustomerCareFact VALUES (18, TO_DATE('2020-03-18', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 36, 'In-Person', 2.46, 54);
INSERT INTO CustomerCareFact VALUES (19, TO_DATE('2020-03-19', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 29, 'Call', 1.94, 58);
INSERT INTO CustomerCareFact VALUES (20, TO_DATE('2020-03-20', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 24, 'Call', 2.40, 38);
INSERT INTO CustomerCareFact VALUES (21, TO_DATE('2020-03-21', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 18, 'In-Person', 3.74, 59);
INSERT INTO CustomerCareFact VALUES (22, TO_DATE('2020-03-22', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 18, 'Email', 4.57, 36);
INSERT INTO CustomerCareFact VALUES (23, TO_DATE('2020-03-23', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 41, 'Email', 4.37, 50);
INSERT INTO CustomerCareFact VALUES (24, TO_DATE('2020-03-24', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 2, 'Email', 2.08, 31);
INSERT INTO CustomerCareFact VALUES (25, TO_DATE('2020-03-25', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 22, 'Call', 2.09, 22);

INSERT INTO CustomerCareFact VALUES (26, TO_DATE('2020-03-26', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 4, 'Chat', 2.82, 6);
INSERT INTO CustomerCareFact VALUES (27, TO_DATE('2020-03-27', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 16, 'Call', 3.98, 6);
INSERT INTO CustomerCareFact VALUES (28, TO_DATE('2020-03-28', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 3, 'Email', 1.18, 37);
INSERT INTO CustomerCareFact VALUES (29, TO_DATE('2020-03-29', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 38, 'Call', 3.31, 46);
INSERT INTO CustomerCareFact VALUES (30, TO_DATE('2020-03-30', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 06:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 21, 'Email', 2.53, 48);
INSERT INTO CustomerCareFact VALUES (1, TO_DATE('2020-03-31', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 47, 'In-Person', 1.66, 18);

INSERT INTO CustomerCareFact VALUES (2, TO_DATE('2020-03-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 26, 'Email', 2.94, 3);
INSERT INTO CustomerCareFact VALUES (3, TO_DATE('2020-03-02', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 47, 'Chat', 4.54, 56);
INSERT INTO CustomerCareFact VALUES (4, TO_DATE('2020-03-03', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 31, 'Call', 1.89, 37);
INSERT INTO CustomerCareFact VALUES (5, TO_DATE('2020-03-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 8, 'Chat', 4.83, 44);
INSERT INTO CustomerCareFact VALUES (6, TO_DATE('2020-03-05', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 43, 'Email', 2.54, 27);
INSERT INTO CustomerCareFact VALUES (7, TO_DATE('2020-03-06', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 7, 'Chat', 1.51, 60);
INSERT INTO CustomerCareFact VALUES (8, TO_DATE('2020-03-07', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 31, 'Chat', 4.02, 39);
INSERT INTO CustomerCareFact VALUES (9, TO_DATE('2020-03-08', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 2, 'In-Person', 1.59, 56);
INSERT INTO CustomerCareFact VALUES (10, TO_DATE('2020-03-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 26, 'Chat', 3.93, 57);
INSERT INTO CustomerCareFact VALUES (11, TO_DATE('2020-03-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 29, 'Call', 1.99, 35);
INSERT INTO CustomerCareFact VALUES (12, TO_DATE('2020-03-11', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 37, 'Email', 1.28, 14);
INSERT INTO CustomerCareFact VALUES (13, TO_DATE('2020-03-12', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 12, 'In-Person', 2.49, 48);
INSERT INTO CustomerCareFact VALUES (14, TO_DATE('2020-03-13', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 50, 'Call', 1.09, 1);
INSERT INTO CustomerCareFact VALUES (15, TO_DATE('2020-03-14', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 1, 'Call', 1.75, 23);
INSERT INTO CustomerCareFact VALUES (16, TO_DATE('2020-03-15', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 35, 'In-Person', 3.83, 20);
INSERT INTO CustomerCareFact VALUES (17, TO_DATE('2020-03-16', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 46, 'Email', 1.30, 45);
INSERT INTO CustomerCareFact VALUES (18, TO_DATE('2020-03-17', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 4, 'Chat', 1.29, 45);
INSERT INTO CustomerCareFact VALUES (19, TO_DATE('2020-03-18', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 32, 'Email', 3.68, 40);
INSERT INTO CustomerCareFact VALUES (20, TO_DATE('2020-03-19', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 29, 'Call', 4.09, 49);

INSERT INTO CustomerCareFact VALUES (21, TO_DATE('2020-03-20', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 28, 'Email', 1.33, 60);
INSERT INTO CustomerCareFact VALUES (22, TO_DATE('2020-03-21', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 42, 'In-Person', 2.59, 16);
INSERT INTO CustomerCareFact VALUES (23, TO_DATE('2020-03-22', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 4, 'Email', 2.89, 14);
INSERT INTO CustomerCareFact VALUES (24, TO_DATE('2020-03-23', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 2, 'Email', 4.33, 22);
INSERT INTO CustomerCareFact VALUES (25, TO_DATE('2020-03-24', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 7, 'In-Person', 4.74, 21);
INSERT INTO CustomerCareFact VALUES (26, TO_DATE('2020-03-25', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 07:30:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 40, 'Email', 3.94, 6);
INSERT INTO CustomerCareFact VALUES (27, TO_DATE('2020-03-26', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 17, 'Chat', 2.29, 43);
INSERT INTO CustomerCareFact VALUES (28, TO_DATE('2020-03-27', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 22, 'Email', 1.71, 30);
INSERT INTO CustomerCareFact VALUES (29, TO_DATE('2020-03-28', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 45, 'Call', 1.27, 20);
INSERT INTO CustomerCareFact VALUES (30, TO_DATE('2020-03-29', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 13, 'Chat', 3.07, 22);
INSERT INTO CustomerCareFact VALUES (1, TO_DATE('2020-03-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 10, 'In-Person', 3.30, 18);
INSERT INTO CustomerCareFact VALUES (12, TO_DATE('2020-03-02', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 49, 'Email', 4.03, 18);
INSERT INTO CustomerCareFact VALUES (13, TO_DATE('2020-03-03', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 34, 'Call', 2.05, 54);
INSERT INTO CustomerCareFact VALUES (4, TO_DATE('2020-03-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 45, 'Chat', 2.27, 15);
INSERT INTO CustomerCareFact VALUES (4, TO_DATE('2020-03-05', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 14, 'Email', 3.06, 23);
INSERT INTO CustomerCareFact VALUES (6, TO_DATE('2020-03-06', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 47, 'In-Person', 2.00, 51);
INSERT INTO CustomerCareFact VALUES (6, TO_DATE('2020-03-07', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 21, 'Chat', 1.09, 1);
INSERT INTO CustomerCareFact VALUES (5, TO_DATE('2020-03-08', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 28, 'Call', 1.79, 50);
INSERT INTO CustomerCareFact VALUES (3, TO_DATE('2020-03-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 17, 'Call', 3.01, 11);
INSERT INTO CustomerCareFact VALUES (11, TO_DATE('2020-03-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 07:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 13, 'In-Person', 4.34, 45);
INSERT INTO CustomerCareFact VALUES (7, TO_DATE('2020-03-11', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 44, 'In-Person', 1.57, 37);
INSERT INTO CustomerCareFact VALUES (7, TO_DATE('2020-03-12', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 6, 'Email', 2.19, 46);
INSERT INTO CustomerCareFact VALUES (3, TO_DATE('2020-03-13', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 15, 'In-Person', 3.20, 56);
INSERT INTO CustomerCareFact VALUES (30, TO_DATE('2020-03-14', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 41, 'Call', 1.17, 18);
INSERT INTO CustomerCareFact VALUES (11, TO_DATE('2020-03-15', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 10, 44, 'Email', 4.51, 31);
INSERT INTO CustomerCareFact VALUES (15, TO_DATE('2020-03-16', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 12, 'Call', 3.12, 24);
INSERT INTO CustomerCareFact VALUES (19, TO_DATE('2020-03-17', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5, 44, 'In-Person', 2.41, 45);
INSERT INTO CustomerCareFact VALUES (23, TO_DATE('2020-03-18', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 23:30:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 28, 'Chat', 1.21, 16);
INSERT INTO CustomerCareFact VALUES (25, TO_DATE('2020-03-19', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 4, 'In-Person', 4.61, 29);
INSERT INTO CustomerCareFact VALUES (22, TO_DATE('2020-03-20', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9, 31, 'In-Person', 1.00, 42);
INSERT INTO CustomerCareFact VALUES (25, TO_DATE('2020-03-21', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 26, 'Email', 1.64, 4);
INSERT INTO CustomerCareFact VALUES (24, TO_DATE('2020-03-22', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 43, 'Chat', 2.30, 35);
INSERT INTO CustomerCareFact VALUES (21, TO_DATE('2020-03-23', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 20:30:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 26, 'Call', 2.95, 45);
INSERT INTO CustomerCareFact VALUES (30, TO_DATE('2020-03-24', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 46, 'Chat', 4.20, 39);
INSERT INTO CustomerCareFact VALUES (11, TO_DATE('2020-03-25', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 42, 'Call', 1.57, 60);
INSERT INTO CustomerCareFact VALUES (5, TO_DATE('2020-03-26', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 07:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 25, 'In-Person', 2.76, 42);
INSERT INTO CustomerCareFact VALUES (7, TO_DATE('2020-03-27', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 26, 'Email', 3.33, 9);
INSERT INTO CustomerCareFact VALUES (8, TO_DATE('2020-03-28', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 27, 'In-Person', 4.99, 26);
INSERT INTO CustomerCareFact VALUES (9, TO_DATE('2020-04-02', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 12, 'In-Person', 1.90, 49);
INSERT INTO CustomerCareFact VALUES (10, TO_DATE('2020-04-03', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 29, 'Email', 2.60, 38);
INSERT INTO CustomerCareFact VALUES (11, TO_DATE('2020-04-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 18:30:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 20, 'In-Person', 3.40, 48);
INSERT INTO CustomerCareFact VALUES (12, TO_DATE('2020-04-05', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 38, 'Call', 2.77, 47);
INSERT INTO CustomerCareFact VALUES (13, TO_DATE('2020-04-06', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 23, 'In-Person', 4.03, 2);
INSERT INTO CustomerCareFact VALUES (14, TO_DATE('2020-04-07', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 20, 'Call', 2.42, 57);
INSERT INTO CustomerCareFact VALUES (15, TO_DATE('2020-04-08', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 21:30:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 41, 'In-Person', 4.59, 32);
INSERT INTO CustomerCareFact VALUES (16, TO_DATE('2020-04-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8, 22, 'Call', 2.98, 32);
INSERT INTO CustomerCareFact VALUES (26, TO_DATE('2020-04-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 35, 'Call', 4.51, 33);
INSERT INTO CustomerCareFact VALUES (28, TO_DATE('2020-04-11', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 21, 'Chat', 2.29, 20);
INSERT INTO CustomerCareFact VALUES (29, TO_DATE('2020-04-12', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 39, 'Call', 4.29, 14);
INSERT INTO CustomerCareFact VALUES (29, TO_DATE('2020-04-13', 'YYYY-MM-DD'), TO_TIMESTAMP('2020-01-01 22:30:00', 'YYYY-MM-DD HH24:MI:SS'), 6, 26, 'Chat', 3.27, 16);


commit ;