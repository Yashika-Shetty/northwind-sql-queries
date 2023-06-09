/* Total sales for each year */
SELECT YEAR(orders.order_date) AS sales_year, SUM(order_details.unit_price * order_details.quantity) AS total_revenue
FROM order_details
JOIN orders ON orders.order_id = order_details.order_id
GROUP BY sales_year;