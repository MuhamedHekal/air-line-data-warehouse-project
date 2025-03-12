
--------time dimension 
CREATE INDEX idx_time_dim_hour ON time_dim(hour);
CREATE INDEX idx_time_dim_minutes ON time_dim(minute);


---------- flight dim 
CREATE INDEX idx_flight_dim_origin_airport ON flight_dim(origin_airport_id);
CREATE INDEX idx_flight_dim_destination ON flight_dim(destination_airport_id);
CREATE INDEX idx_flight_dim_aircraft ON flight_dim(aircraft_id);
CREATE INDEX idx_flight_dim_origin_date ON flight_dim(origin_date);
CREATE INDEX idx_flight_dim_arrival_date ON flight_dim(arrival_date);


----------profit fact 
CREATE INDEX idx_profitfact_flight ON ProfitFact(flight_id);
CREATE INDEX idx_profitfact_date ON ProfitFact(date_id);
CREATE INDEX idx_profitfact_promotion ON ProfitFact(promotion_id);
CREATE INDEX idx_profitfact_booking_channel ON ProfitFact(booking_channel_id);


---------revenue fact (to be edited)
-- CREATE UNIQUE INDEX idx_revenuefact ON RevenueFact(passenger_id, flight_id, date_id, booking_channel_id, promotion_id);
-- CREATE INDEX idx_revenuefact_flight ON RevenueFact(flight_id);
-- CREATE INDEX idx_revenuefact_date ON RevenueFact(date_id);
-- CREATE INDEX idx_revenuefact_booking_channel ON RevenueFact(booking_channel_id);
-- CREATE INDEX idx_revenuefact_promotion ON RevenueFact(promotion_id);



----------expenses fact 

CREATE INDEX idx_expensesfact_flight ON ExpensesFact(flight_id);
CREATE INDEX idx_expensesfact_date ON ExpensesFact(date_id);
CREATE INDEX idx_expensesfact_type ON ExpensesFact(expenses_type);



