/* Customers that have never placed any order */
SELECT customers.customer_id, customers.contact_name
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.customer_id ISNULL;

/* 2nd way o write query */
SELECT customers.customer_id, customers.contact_name
FROM customers
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);