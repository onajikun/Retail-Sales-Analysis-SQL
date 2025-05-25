SELECT
    c.customer_id,
    c.customer_name,
    c.gender,
    SUM(s.quantity * s.price_per_unit) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name, c.gender
ORDER BY total_spent DESC
LIMIT 10;
