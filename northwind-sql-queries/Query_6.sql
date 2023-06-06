/* Customers who have placed more than 10 orders */
SELECT customers.customer_id,customers.contact_name,COUNT(orders.order_id) AS no_of_order_placed
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
having COUNT(orders.order_id)>10;