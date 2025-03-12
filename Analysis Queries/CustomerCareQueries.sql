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


--an insight into employee workload and efficiency by analyzing the 
--total interactions handled and the average satisfaction rate for each employee.

 SELECT 
    e.employee_name,
    COUNT(c.customer_id) AS total_interactions,
    ROUND(AVG(c.satisfaction_rate), 2) AS avg_satisfaction,
    ROUND(AVG(c.duration), 2) AS avg_interaction_duration,
    CASE 
        WHEN COUNT(c.customer_id) > (SELECT AVG(total_interactions) FROM 
            (SELECT COUNT(customer_id) AS total_interactions 
             FROM customercarefact 
             GROUP BY employee_id))
        THEN 'High Workload'
        ELSE 'Normal Workload'
    END AS workload_category
FROM customercarefact c
JOIN employee_dim e ON c.employee_id = e.employee_id
GROUP BY e.employee_name
ORDER BY total_interactions DESC, avg_satisfaction DESC;
