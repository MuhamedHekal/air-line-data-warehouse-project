CREATE TABLE time_dim (
    time_id INT PRIMARY KEY,
    hour INT NOT NULL,
    minutes INT NOT NULL,
    hour_description VARCHAR(255)
);


CREATE TABLE flight_dim (
    flight_id INT PRIMARY KEY,
    origin_airport_id INT NOT NULL,
    destination_airport_id INT NOT NULL,
    origin_date INT NOT NULL,
    origin_time INT NOT NULL,
    arrival_date INT NOT NULL,
    arrival_time INT NOT NULL,
    aircraft_id INT NOT NULL,
    segment_miles DECIMAL(10,2),
    miles_earned DECIMAL(10,2),
    FOREIGN KEY (origin_airport_id) REFERENCES airport_dim(airport_id),
    FOREIGN KEY (destination_airport_id) REFERENCES airport_dim(airport_id),
    FOREIGN KEY (origin_date) REFERENCES date_dim(date_id),
    FOREIGN KEY (origin_time) REFERENCES time_dim(time_id),
    FOREIGN KEY (arrival_date) REFERENCES date_dim(date_id),
    FOREIGN KEY (arrival_time) REFERENCES time_dim(time_id),
    FOREIGN KEY (aircraft_id) REFERENCES aircraft_dim(aircraft_id)
);

CREATE TABLE RevenueFact (
    passenger_id NUMBER NOT NULL,
    date_id NUMBER NOT NULL,
    flight_id NUMBER NOT NULL,
    revenue_type VARCHAR2(255),
    revenue_amount NUMBER(15,2),
    CONSTRAINT pk_revenue_fact PRIMARY KEY (passenger_id, date_id, flight_id),
    CONSTRAINT fk_revenue_passenger FOREIGN KEY (passenger_id) REFERENCES customer_dim(passenger_id),
    CONSTRAINT fk_revenue_date FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    CONSTRAINT fk_revenue_flight FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id)
);

CREATE TABLE ExpensesFact (
    date_id NUMBER NOT NULL,
    flight_id NUMBER NOT NULL,
    expenses_type VARCHAR2(255),
    expense_amount NUMBER(15,2),
    CONSTRAINT pk_expenses_fact PRIMARY KEY (date_id, flight_id, expenses_type),
    CONSTRAINT fk_expenses_date FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    CONSTRAINT fk_expenses_flight FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id)
);

CREATE TABLE ProfitFact (
    flight_id NUMBER NOT NULL,
    date_id NUMBER NOT NULL,
    revenue_amount NUMBER(15,2),
    expense_amount NUMBER(15,2), 
    profit_amount NUMBER(15,2),
    CONSTRAINT pk_profit_fact PRIMARY KEY (flight_id, date_id),
    CONSTRAINT fk_profit_flight FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id),
    CONSTRAINT fk_profit_date FOREIGN KEY (date_id) REFERENCES date_dim(date_id)
);

