-- Create aircraft_dim table
CREATE TABLE aircraft_dim (
    aircraft_id NUMBER PRIMARY KEY,
    aircraft_name VARCHAR2(100),
    number_of_seats NUMBER,
    aircraft_model VARCHAR2(50),
    manufacture_year NUMBER
);

------------------------------------------------------------------------------------

-- Create airport_dim table
CREATE TABLE airport_dim (
    airport_id NUMBER PRIMARY KEY,
    airport_code VARCHAR2(10),
    airport_name VARCHAR2(100),
    airport_city VARCHAR2(100),
    airport_location VARCHAR2(100)
);

----------------------------------------------------------------------------

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

--------------------------------------------------------------------------

-- Create class_services_dim table with updated class_change_indicator values
CREATE TABLE class_services_dim (
    class_of_services_id NUMBER PRIMARY KEY,
    class_purchased VARCHAR2(50),
    class_flown VARCHAR2(50),
    class_change_indicator VARCHAR2(20)
);


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
