/* All the distinct countries to which orders have been shipped */
SELECT distinct ship_country , order_id FROM orders
group by order_id;