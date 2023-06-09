/* Average quantity of products ordered in each order */
SELECT products.product_id, products.product_name , Order_details.order_id, AVG(Order_details.quantity) AS average_quantity
FROM Order_details
JOIN products ON Order_details.product_id = products.product_id
GROUP BY Order_details.order_id
order by average_quantity desc;