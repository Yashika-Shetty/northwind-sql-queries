/* Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 Then PerformanceCategory as ‘High Performing’. If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’ */
select
  employees.first_name,
  employees.last_name,
  count(orders.order_id) AS NumberOfOrders,
  CASE
    WHEN count(orders.order_id) > 100 THEN 'High Performing'
    WHEN count(orders.order_id) > 50 THEN 'Medium Performing'
    ELSE 'Low Performing'
  END as PerformanceCategory
from employees
  JOIN orders ON employees.employee_id = orders.employee_id
group by employees.first_name;