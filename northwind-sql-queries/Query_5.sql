/*Employees and their number of orders */
SELECT employees.employee_id,employees.first_name,employees.last_name,COUNT(orders.order_id) AS no_of_order_placed
FROM employees
LEFT JOIN orders ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id;

/* 2nd way to write the query*/
Select employees.employee_id,employees.first_name,employees.last_name,COUNT(orders.order_id) AS no_of_order_placed
from orders
left join employees on orders.employee_id = employees.employee_id
group by employees.employee_id;