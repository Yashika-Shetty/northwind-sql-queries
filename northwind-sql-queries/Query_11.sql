/* Average product price by category */
SELECT categories.category_id,categories.category_name, AVG(products.unit_price) AS Average_price
FROM products
join categories on products.category_id=categories.category_id
GROUP BY categories.category_name;