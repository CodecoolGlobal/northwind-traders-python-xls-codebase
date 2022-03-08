-- SELECT p.product_name,
--        SUM(od.unit_price * od.quantity - od.unit_price * od.quantity * od.discount) AS sum
-- FROM products p
-- JOIN order_details od on p.product_id = od.product_id
-- GROUP BY product_name
-- ORDER BY sum ASC
-- LIMIT 10

SELECT p.product_name,
       ROUND(SUM(od.unit_price * od.quantity - od.unit_price * od.quantity * od.discount)) AS sum
FROM products p
JOIN order_details od on p.product_id = od.product_id
GROUP BY product_name
ORDER BY sum ASC
LIMIT 10