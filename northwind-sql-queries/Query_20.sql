/* Top 5 employees who have processed the most orders */
SELECT orders.order_id,employees.employee_id,concat(Employees.first_name ,' ', Employees.last_name) AS Employee_name, count(*) AS total_orders_processed
FROM orders
join employees on orders.employee_id=employees.employee_id
GROUP BY employees.employee_id
order by total_orders_processed desc
limit 5;