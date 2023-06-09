/* Order with the highest total cost */
SELECT product_id, SUM(quantity*unit_price) AS total_cost
FROM order_details
GROUP BY product_id
order by total_cost desc
limit 1;