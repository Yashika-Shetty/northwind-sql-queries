/* Most common shipping country */
SELECT ship_country, count(*) As max_count FROM orders
GROUP BY ship_country
HAVING COUNT(*) = (
  SELECT COUNT(*) AS max_count
  FROM orders
  GROUP BY ship_country
  ORDER BY max_count DESC
  LIMIT 1
);