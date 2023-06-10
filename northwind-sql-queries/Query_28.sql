/* Top 3 most popular categories of products ordered */
SELECT categories.category_id,categories.category_name, COUNT(*) AS "Number of products ordered"
FROM products 
JOIN categories on products.category_id=categories.category_id
JOIN order_details ON products.product_id = order_details.product_id 
group by categories.category_id
order by count(*) desc
limit 3;