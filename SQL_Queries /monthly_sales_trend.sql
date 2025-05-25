SELECT
    DATE_TRUNC('month', sale_date) AS month,
    SUM(quantity * price_per_unit) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;
