/* All order ids shipped to ‘Germany’ from customers table using join */
SELECT Orders.order_id, Customers.country AS Ordersship_to
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
WHERE Customers.country = 'Germany';

/* All order details shipped to ‘Germany’ from orders table */
SELECT * FROM orders
where ship_country='Germany';