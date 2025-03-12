-- Indexes for Foreign Key Relationships
create index idx_customer_care_date_id on
   customercarefact (
      date_id
   );
create index idx_customer_care_feedback_id on
   customercarefact (
      feedback_id
   );
create index idx_customer_care_employee_id on
   customercarefact (
      employee_id
   );


--  Indexes for Frequently Queried Columns
create index idx_customer_care_customer_id on
   customercarefact (
      customer_id
   );
create index idx_customer_care_interaction_type on
   customercarefact (
      interaction_type
   );
create index idx_customer_care_satisfaction_rate on
   customercarefact (
      satisfaction_rate
   );
create index idx_customer_care_duration on
   customercarefact (
      duration
   );



-- Composite Indexes for Multi-Column Queries
create index idx_customer_date on
   customercarefact (
      customer_id,
      date_id
   );
create index idx_customer_feedback on
   customercarefact (
      customer_id,
      feedback_id
   );
create index idx_date_employee on
   customercarefact (
      date_id,
      employee_id
   );



--  Indexes for Improving Aggregation Performance

create bitmap index idx_bitmap_interaction_type on
   customercarefact (
      interaction_type
   );

----------------------------------------------------------------------------------------------------------------------------------

-- Foreign Key Indexes for columns like date_id, feedback_id, and employee_id
-- Single-Column Indexes for commonly queried columns like customer_id, interaction_type, satisfaction_rate, and duration
-- Composite Indexes for columns often queried together, such as customer_id and date_id, or customer_id and feedback_id
-- Bitmap Indexes for low-cardinality columns like interaction_type