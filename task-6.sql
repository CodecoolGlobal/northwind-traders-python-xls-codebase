SELECT
       c.company_name,
       COUNT(o.order_id) orders,
       STRING_AGG(o.order_id::text ,', ') order_ids
FROM orders o
JOIN customers c on o.customer_id = c.customer_id
WHERE c.country = 'USA'
GROUP BY c.company_name
HAVING COUNT(o.order_id) < 5
ORDER BY orders, company_name ASC
