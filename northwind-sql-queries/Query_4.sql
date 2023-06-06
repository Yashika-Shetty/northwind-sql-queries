/* Total sales for each category of products ,their category name and their category_id in increasing order of category_id  */
SELECT products.category_id,categories.category_name, SUM(order_details.quantity * order_details.unit_price) AS total_sales
FROM products
JOIN order_details ON products.product_id = order_details.product_id
JOIN categories ON products.category_id = categories.category_id
GROUP BY products.category_id;