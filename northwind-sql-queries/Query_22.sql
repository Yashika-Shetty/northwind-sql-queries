/* List of Employee who have processed ‘Chai’ product */
select employees.employee_id,concat(Employees.first_name ,' ', Employees.last_name) AS Employee_name, products.product_name, orders.order_id
from products 
JOIN Order_details ON products.product_id = Order_details.product_id
join orders on Order_details.order_id=orders.order_id
JOIN employees ON Orders.employee_id = employees.employee_id
where products.product_name='Chai'
group by employees.employee_id;