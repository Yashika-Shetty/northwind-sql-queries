/* Employee who processed the most orders in August 2016 */
SELECT orders.order_id,employees.employee_id,concat(Employees.first_name ,' ', Employees.last_name) AS Employee_name, count(*) AS total_orders_processed
FROM orders
join employees on orders.employee_id=employees.employee_id
WHERE (month(order_date)=8 and YEAR(order_date) = 2016);