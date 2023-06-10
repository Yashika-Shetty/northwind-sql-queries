/* Top 3 customers who have ordered the most products */
SELECT customers.customer_id,customers.contact_name As ' Customer Name', COUNT(*) AS "Number of products ordered"
FROM orders 
JOIN customers ON orders.customer_id = customers.customer_id 
GROUP by customers.customer_id
order by count(*) desc
limit 3;