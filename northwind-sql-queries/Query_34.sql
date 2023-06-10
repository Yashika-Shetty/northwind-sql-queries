/* Customers who have ordered products from all categories */
SELECT Customers.contact_name AS Customer_name , COUNT(DISTINCT products.category_id) AS  ' Total number of Categories of products bought'
FROM Customers
JOIN Orders ON Customers.customer_id = Orders.customer_id
join order_details on orders.order_id = order_details.order_id
JOIN Products ON Order_details.product_id = Products.product_id
GROUP BY Customers.contact_name
HAVING COUNT(DISTINCT Products.category_id) = (SELECT COUNT(DISTINCT category_id) FROM Products);