SELECT c.category_name AS category,
       COUNT(p.product_id) AS number_of_products
FROM categories c
JOIN products p
ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER BY number_of_products DESC, category ASC