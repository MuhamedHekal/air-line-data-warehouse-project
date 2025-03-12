-- Indexes for SegmentActivityFact (Foreign Keys)
CREATE INDEX idx_segment_passenger ON SegmentActivityFact(passenger_id);
CREATE INDEX idx_segment_flight ON SegmentActivityFact(flight_id);
CREATE INDEX idx_segment_class ON SegmentActivityFact(class_services_id);
CREATE INDEX idx_segment_promotion ON SegmentActivityFact(promotion_id);

-- Indexes for ProfitFact (Foreign Keys)
CREATE INDEX idx_profit_flight ON ProfitFact(flight_id);
CREATE INDEX idx_profit_booking_channel ON ProfitFact(booking_channel_id);
CREATE INDEX idx_profit_promotion ON ProfitFact(promotion_id);
CREATE INDEX idx_profit_date ON ProfitFact(date_id);

-- Indexes for RevenueFact (Foreign Keys)
CREATE INDEX idx_revenue_passenger ON RevenueFact(passenger_id);
CREATE INDEX idx_revenue_promotion ON RevenueFact(promotion_id);

-- Indexes for CustomerCareFact (Foreign Keys)
CREATE INDEX idx_care_employee ON CustomerCareFact(employee_id);
CREATE INDEX idx_care_date ON CustomerCareFact(date_id);
create index idx_customer_care_feedback_id on customercarefact (feedback_id);
CREATE INDEX idx_customer_care_customer_id ON CustomerCareFact(customer_id);

-- Time dimension 
CREATE INDEX idx_time_dim_hour ON time_dim(hour);
CREATE INDEX idx_time_dim_minutes ON time_dim(minute);

-- Flight dim 
CREATE INDEX idx_flight_dim_origin_airport ON flight_dim(origin_airport_id);
CREATE INDEX idx_flight_dim_destination ON flight_dim(destination_airport_id);
CREATE INDEX idx_flight_dim_aircraft ON flight_dim(aircraft_id);
CREATE INDEX idx_flight_dim_origin_date ON flight_dim(origin_date);
CREATE INDEX idx_flight_dim_arrival_date ON flight_dim(arrival_date);

-- Composite Index for Promotions and Revenue
CREATE INDEX idx_promotion_category ON promotion_dim(category);

-- Bitmap Index for Passenger Status (if low cardinality)
CREATE BITMAP INDEX bm_passenger_status ON customer_dim(passenger_status);

-- Function-Based Index for Date Queries
CREATE INDEX idx_date_month ON date_dim(TO_CHAR(date_id, 'YYYY-MM'));