-- Create aircraft_dim table
CREATE TABLE aircraft_dim (
    aircraft_id NUMBER PRIMARY KEY,
    aircraft_name VARCHAR2(100),
    number_of_seats NUMBER,
    aircraft_model VARCHAR2(50),
    manufacture_year NUMBER
);

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
    start_date DATE DEFAULT TO_DATE('2000-01-01', 'YYYY-MM-DD'),
    end_date DATE DEFAULT TO_DATE('9999-12-31', 'YYYY-MM-DD'),
    is_current CHAR(1) DEFAULT 'Y' CHECK (is_current IN ('Y', 'N'))
);

-- Create booking_channel_dim table
CREATE TABLE booking_channel_dim (
    channel_id NUMBER PRIMARY KEY,
    booking_name VARCHAR2(100),
    type VARCHAR2(50),
    contact_detail VARCHAR2(100)
);

-- Create trip_status_dim table
CREATE TABLE trip_status_dim (
    status_id NUMBER PRIMARY KEY,
    reservation_status VARCHAR2(50),
    cancellation_reason VARCHAR2(100)
);

-- Create class_services_dim table
CREATE TABLE class_services_dim (
    class_of_services_id NUMBER PRIMARY KEY,
    class_purchased VARCHAR2(50),
    class_flown VARCHAR2(50),
    class_change_indicator VARCHAR2(20)
);

-- Create promotion_dim table
CREATE TABLE promotion_dim (
    promotion_id NUMBER PRIMARY KEY,
    valid_from DATE,
    valid_to DATE,
    maximum_fare_discount NUMBER,
    promotion_percentage NUMBER,
    category VARCHAR2(50)
);

CREATE TABLE time_dim (
    time_id TIMESTAMP PRIMARY KEY,
    hour NUMBER(2,0) NOT NULL,      -- Stores only the hour (0-23)
    minute NUMBER(2,0) NOT NULL,    -- Stores only the minutes (0-59)
    hour_description VARCHAR2(255)  -- Descriptive text about the hour
);

-- Create date_dim table
CREATE TABLE date_dim (
    date_id DATE PRIMARY KEY,
    year NUMBER(4,0),
    quarter NUMBER(1,0),
    month NUMBER(2,0),
    day_of_week NUMBER(1,0),
    day_of_month NUMBER(2,0),
    day_of_year NUMBER(3,0),
    week_of_year NUMBER(2,0),
    is_holiday NUMBER(1,0) CHECK (is_holiday IN (0,1))
);

-- Create flight_dim table
CREATE TABLE flight_dim (
    flight_id NUMBER PRIMARY KEY,
    origin_airport_id NUMBER NOT NULL,
    destination_airport_id NUMBER NOT NULL,
    origin_date DATE NOT NULL,
    origin_time TIMESTAMP NOT NULL,
    arrival_date DATE NOT NULL,
    arrival_time TIMESTAMP NOT NULL,
    aircraft_id NUMBER NOT NULL,
    segment_miles NUMBER(10,2),
    miles_earned NUMBER(10,2),
    CONSTRAINT fk_origin_airport FOREIGN KEY (origin_airport_id) REFERENCES airport_dim(airport_id),
    CONSTRAINT fk_destination_airport FOREIGN KEY (destination_airport_id) REFERENCES airport_dim(airport_id),
    CONSTRAINT fk_origin_date FOREIGN KEY (origin_date) REFERENCES date_dim(date_id),
    CONSTRAINT fk_origin_time FOREIGN KEY (origin_time) REFERENCES time_dim(time_id),
    CONSTRAINT fk_arrival_date FOREIGN KEY (arrival_date) REFERENCES date_dim(date_id),
    CONSTRAINT fk_arrival_time FOREIGN KEY (arrival_time) REFERENCES time_dim(time_id),
    CONSTRAINT fk_aircraft FOREIGN KEY (aircraft_id) REFERENCES aircraft_dim(aircraft_id)
);

-- Create feedback_dim table
CREATE TABLE feedback_dim (
    feedback_id NUMBER PRIMARY KEY,
    type VARCHAR2(50),
    description VARCHAR2(500)
);

-- Create employee_dim table
CREATE TABLE employee_dim (
    sk_employee_id NUMBER PRIMARY KEY,
    employee_id NUMBER,
    employee_name VARCHAR2(35),
    employee_dateOfBirth DATE,
    employee_gender VARCHAR2(10),
    employee_address VARCHAR2(100),
    employee_phone VARCHAR2(20),
    salary NUMBER(10,2),
    start_date DATE DEFAULT SYSDATE,
    end_date DATE,
    is_current CHAR(1) DEFAULT 'Y' CHECK (is_current IN ('Y', 'N'))
);

-- Create SegmentActivityFact table
CREATE TABLE SegmentActivityFact (
    passenger_id NUMBER,
    class_services_id NUMBER,
    promotion_id NUMBER,
    flight_id NUMBER,
    status_id NUMBER,
    ticket_number VARCHAR2(50) PRIMARY KEY,
    overnight_stay NUMBER,
    revenue_amount NUMBER,
    cancellation_fees NUMBER,
    refund_amount NUMBER,
    date_id DATE,
    time_id TIMESTAMP,
    CONSTRAINT fk_passenger FOREIGN KEY (passenger_id) REFERENCES customer_dim(passenger_id),
    CONSTRAINT fk_class_services FOREIGN KEY (class_services_id) REFERENCES class_services_dim(class_of_services_id),
    CONSTRAINT fk_promotion FOREIGN KEY (promotion_id) REFERENCES promotion_dim(promotion_id),
    CONSTRAINT fk_status FOREIGN KEY (status_id) REFERENCES trip_status_dim(status_id),
    CONSTRAINT fk_flight FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id),
    CONSTRAINT fk_origin_date FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    CONSTRAINT fk_origin_time FOREIGN KEY (time_id) REFERENCES time_dim(time_id)
);

-- Create RevenueFact table
CREATE TABLE RevenueFact (
    passenger_id NUMBER NOT NULL,
    date_id DATE NOT NULL,
    flight_id NUMBER NOT NULL,
    promotion_id NUMBER,
    booking_channel_id NUMBER,
    revenue_type VARCHAR2(255),
    revenue_amount NUMBER(15,2),
    CONSTRAINT fk_promotion FOREIGN KEY (promotion_id) REFERENCES promotion_dim(promotion_id),
    CONSTRAINT fk_booking_channel FOREIGN KEY (booking_channel_id) REFERENCES booking_channel_dim(channel_id),
    CONSTRAINT fk_rev_passenger FOREIGN KEY (passenger_id) REFERENCES customer_dim(passenger_id),
    CONSTRAINT fk_rev_date FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    CONSTRAINT fk_rev_flight FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id)
);

-- Create ExpensesFact table
CREATE TABLE ExpensesFact (
    date_id DATE NOT NULL,
    flight_id NUMBER NOT NULL,
    expenses_type VARCHAR2(255),
    expense_amount NUMBER(15,2),
    CONSTRAINT fk_exp_date FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    CONSTRAINT fk_exp_flight FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id)
);

-- Create ProfitFact table
CREATE TABLE ProfitFact (
    flight_id NUMBER NOT NULL,
    date_id DATE NOT NULL,
    promotion_id NUMBER,
    booking_channel_id NUMBER,
    revenue_amount NUMBER(15,2),
    expense_amount NUMBER(15,2),
    profit_amount NUMBER(15,2),
    CONSTRAINT fk_promotion FOREIGN KEY (promotion_id) REFERENCES promotion_dim(promotion_id),
    CONSTRAINT fk_booking_channel FOREIGN KEY (booking_channel_id) REFERENCES booking_channel_dim(channel_id),
    CONSTRAINT fk_profit_flight FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id),
    CONSTRAINT fk_profit_date FOREIGN KEY (date_id) REFERENCES date_dim(date_id)
);

-- Create CustomerCareFact table
CREATE TABLE CustomerCareFact (
    customer_id NUMBER,
    date_id DATE,
    feedback_id NUMBER,
    employee_id NUMBER,
    interaction_type VARCHAR2(50),
    satisfaction_rate NUMBER(5,2),
    duration NUMBER,
    CONSTRAINT pk_customer_care PRIMARY KEY (customer_id, date_id, feedback_id, employee_id),
    CONSTRAINT fk_care_date FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    CONSTRAINT fk_care_feedback FOREIGN KEY (feedback_id) REFERENCES feedback_dim(feedback_id),
    CONSTRAINT fk_care_employee FOREIGN KEY (employee_id) REFERENCES employee_dim(employee_id)
);
