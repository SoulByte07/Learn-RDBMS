SELECT customerid, SUM(quantity) as total_quantity
FROM products
GROUP BY customerid
ORDER BY total_quantity DESC
LIMIT 5;
