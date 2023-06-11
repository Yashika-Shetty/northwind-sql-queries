/* Classify products based on their sales volume such that TotalQuantity > 1000 Then SalesCategory as ‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’ */
SELECT
  products.product_name,
  sum(order_details.quantity) AS TotalQuantity,
  case
    WHEN sum(order_details.quantity)> 1000 THEN 'High Sales'
    WHEN sum(order_details.quantity)> 500 THEN 'Medium Sales'
    ELSE 'Lower Sales'
  END AS SalesCategory
from products
 join order_details ON products.product_id = order_details.product_id
group by products.product_name;