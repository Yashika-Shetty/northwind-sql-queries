/* Products that have never been ordered */
SELECT products.product_id, products.product_name
FROM products
LEFT JOIN order_details ON products.product_id = order_details.product_id
WHERE order_details.quantity ISNULL;

/* 2nd way to write the query*/
SELECT product_id, product_name
FROM products
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM order_details);