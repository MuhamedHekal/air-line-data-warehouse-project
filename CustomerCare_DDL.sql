CREATE TABLE feedback_dim (
    feedback_id NUMBER PRIMARY KEY,
    type VARCHAR2(50),
    description VARCHAR2(500)
);

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


CREATE TABLE date_dim (
    date_id NUMBER PRIMARY KEY,
    year NUMBER(4),
    quarter NUMBER(1),
    month NUMBER(2),
    day_of_week NUMBER(1),
    day_of_month NUMBER(2),
    day_of_year NUMBER(3),
    week_of_year NUMBER(2),
    is_holiday NUMBER(1) CHECK (is_holiday IN (0,1))
);

CREATE TABLE CustomerCareFact (
    customer_id NUMBER,
    date_id NUMBER,
    feedback_id NUMBER,
    employee_id NUMBER,
    interaction_type VARCHAR2(50),
    satisfaction_rate NUMBER(5,2),
    duration NUMBER,
    PRIMARY KEY (customer_id, date_id, feedback_id, employee_id), 
    FOREIGN KEY (date_id) REFERENCES date_dim(date_id),
    FOREIGN KEY (feedback_id) REFERENCES feedback_dim(feedback_id),
    FOREIGN KEY (employee_id) REFERENCES employee_dim(sk_employee_id)
);


