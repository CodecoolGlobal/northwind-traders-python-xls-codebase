SELECT
       p.product_name AS product,
       s.company_name AS company
FROM products p
JOIN suppliers s
    on p.supplier_id = s.supplier_id
ORDER BY product ASC