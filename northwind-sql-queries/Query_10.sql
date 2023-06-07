/* All ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it */
SELECT *
FROM customers c
join orders o on c.customer_id=o.customer_id
join employees e on o.employee_id=e.employee_id;

/* Customers , orders and the Employee who processed it */
SELECT Orders.order_id, Customers.contact_name AS Customer_name, concat(Employees.first_name ,' ', Employees.last_name) AS Employee_name
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
JOIN Employees ON Orders.employee_id = Employees.employee_id;