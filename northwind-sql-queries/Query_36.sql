/* Classify customers based on their total order amounts such that total order amounts > 5000 should be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’ */
SELECT Customers.company_name, 
       SUM(order_details.quantity * order_details.unit_price) AS TotalOrderAmount,
       CASE
         WHEN SUM(order_details.quantity * order_details.unit_price) > 5000 THEN 'High Value'
         WHEN SUM(order_details.quantity * order_details.unit_price) > 1000 THEN 'Medium Value'
         ELSE 'Low Value'
       END AS CustomerClass
FROM Customers
JOIN orders ON Customers.customer_id = Orders.customer_id
JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY Customers.company_name;