SELECT
    TO_CHAR(sale_date, 'Day') AS weekday,
    ROUND(AVG(quantity * price_per_unit), 2) AS avg_order_value
FROM sales
GROUP BY weekday
ORDER BY avg_order_value DESC;