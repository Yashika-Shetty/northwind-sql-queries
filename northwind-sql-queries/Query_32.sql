/* Employees who have not processed any orders */
SELECT employees.employee_id, CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee Name'
FROM employees
LEFT JOIN orders ON employees.employee_id = orders.employee_id
WHERE orders.order_id IS NULL
group by employees.employee_id;