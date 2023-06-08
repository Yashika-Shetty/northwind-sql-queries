/* Most expensive product in each category */
SELECT categories.category_id,categories.category_name,MAX(products.unit_price) AS max_price
FROM products
join categories on products.category_id=categories.category_id
GROUP BY categories.category_id;