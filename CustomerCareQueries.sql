--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@--CUSTOMR CARE--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-- 

--  customer satisfaction 
--  Helps track customer satisfaction trends over time i seek for better customer care 


select d.year,
       d.month,
       avg(c.satisfaction_rate) as avg_satisfaction
  from customercarefact c
  join date_dim d
on c.date_id = d.date_id
 group by d.year,
          d.month
 order by d.year,
          d.month;





--  employee performance
--  identify the employees with average satisfaction rate 
--  this helps us to keep track of employee performance and mayby the best performing employees 


select e.employee_name,
       avg(c.satisfaction_rate) as avg_satisfaction
  from customercarefact c
  join employee_dim e
on c.employee_id = e.employee_id
 group by e.employee_name
 order by avg_satisfaction desc;




-- feedback type distribution
-- Count the number of each type of feedback received that Helps understand the most common customer concerns

select f.type,
       count(*) as feedback_count
  from customercarefact c
  join feedback_dim f
on c.feedback_id = f.feedback_id
 group by f.type
 order by feedback_count desc;


-- peak days for customer interactions 
-- plan staffing needs for busy days


select d.day_of_week,
       count(*) as total_interactions
  from customercarefact c
  join date_dim d
on c.date_id = d.date_id
 group by d.day_of_week
 order by total_interactions desc;