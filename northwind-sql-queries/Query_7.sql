/* Top 5 most sold products id , name and quantity */
SELECT order_details.product_id, products.product_name, SUM(quantity) AS total_quantity_sold
FROM order_details
join products on order_details.product_id=products.product_id
GROUP BY products.product_id
order by total_quantity_sold desc
limit 5;