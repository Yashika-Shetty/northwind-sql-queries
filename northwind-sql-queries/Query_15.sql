/* Total revenue for the year 2016 */
SELECT SUM(unit_price*quantity) AS total_revenue
FROM order_details
join orders on orders.order_id=order_details.order_id
WHERE YEAR(order_date) = 2016;