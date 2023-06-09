/* the customers who have spent more than $5000 in total in descening order of total expense*/
SELECT Customers.customer_id, Customers.contact_name , SUM(order_details.quantity * order_details.unit_price) As total_expense
FROM Customers
JOIN orders ON Customers.customer_id = Orders.customer_id
join order_details on orders.order_id = order_details.order_id
GROUP BY Customers.customer_id, Customers.contact_name
HAVING SUM(order_details.quantity * order_details.unit_price) > 5000
order by total_expense desc;