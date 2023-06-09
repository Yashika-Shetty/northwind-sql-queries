/* Employees who have processed more than 100 orders */
SELECT Employees.employee_id,concat(Employees.first_name ,' ', Employees.last_name) AS Employee_name , count(*) as total_orders_processed
FROM Employees
JOIN Orders ON Employees.employee_id = Orders.employee_id
GROUP BY Employees.employee_id
HAVING total_orders_processed > 100
order by total_orders_processed desc;