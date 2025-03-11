CREATE TABLE feedback_dim (
    feedback_id INT PRIMARY KEY,
    type VARCHAR(50),
    description VARCHAR(500)
);

CREATE TABLE employee_dim (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(35),
    employee_dateOfBirth DATE,
    employee_gender VARCHAR(10),
    employee_address VARCHAR(10),
    employee_phone VARCHAR(20),
    salary NUMBER(10,2)
);

CREATE TABLE date_dim (
    date_id INT PRIMARY KEY,
    year INT,
    quarter INT,
    month INT,
    day_of_week INT,
    day_of_month INT,
    day_of_year INT,
    week_of_year INT,
    is_holiday BOOLEAN
);

CREATE TABLE CustomerCareFact (
    customer_id INT,
    date_id INT,
    feedback_id INT,
    employee_id INT,
    interaction_type VARCHAR(50),
    satisfaction_rate DECIMAL(5,2),
    duration INT,
    FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    FOREIGN KEY (feedback_id) REFERENCES feedback_dim(feedback_id),
    FOREIGN KEY (employee_id) REFERENCES employee_dim(employee_id)
);
