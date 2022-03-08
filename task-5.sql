SELECT
       to_char(o.order_date, 'YYYY') AS year,
       to_char(o.order_date, 'MM') AS month,
       COUNT(o.order_id) AS order_count,
       ROUND(SUM(od.unit_price * od.quantity - od.unit_price * od.quantity * od.discount)) AS revenue
       FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY year, month
HAVING to_char(o.order_date, 'YYYY') = '1997'
ORDER BY month
