/* Customer who has ordered the most ‘Chai’ product */
select customers.customer_id, customers.contact_name, products.product_name,count(*) as total_orders_processed
from products 
JOIN Order_details ON products.product_id = Order_details.product_id
join orders on Order_details.order_id=orders.order_id
JOIN Customers ON Orders.customer_id = Customers.customer_id
where products.product_name='Chai';