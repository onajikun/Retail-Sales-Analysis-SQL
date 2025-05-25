SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(s.quantity) AS total_units_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY total_units_sold DESC;