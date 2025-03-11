CREATE TABLE time_dim (
    time_id INT PRIMARY KEY,
    hour INT NOT NULL,
    minutes INT NOT NULL,
    month INT NOT NULL,
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
    passenger_id INT NOT NULL,
    date_id INT NOT NULL,
    flight_id INT NOT NULL,
    revenue_type VARCHAR(255),
    revenue_amount DECIMAL(15,2),
    FOREIGN KEY (passenger_id) REFERENCES customer_dim(passenger_id),
    FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id)
);

CREATE TABLE ExpensesFact (
    date_id INT NOT NULL,
    flight_id INT NOT NULL,
    expenses_type VARCHAR(255),
    expense_amount DECIMAL(15,2),
    FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id)
);

CREATE TABLE ProfitFact (
    flight_id INT NOT NULL,
    date_id INT NOT NULL,
    revenue_amount DECIMAL(15,2),
    expense_amount DECIMAL(15,2), 
    profit_amount DECIMAL(15,2),
    FOREIGN KEY (flight_id) REFERENCES flight_dim(flight_id),
    FOREIGN KEY (date_id) REFERENCES date_dim(date_id)
);

