/* The suppliers who supply the top 5 most sold products */
SELECT suppliers.supplier_id, suppliers.contact_name AS 'Supplier Name'
FROM products
JOIN order_details ON products.product_id = order_details.product_id
JOIN suppliers ON products.supplier_id = suppliers.supplier_id
GROUP BY suppliers.supplier_id, suppliers.contact_name
ORDER BY SUM(order_details.quantity) DESC
LIMIT 5;