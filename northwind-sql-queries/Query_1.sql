/*Query for Total number of orders placed by each customer*/
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id;