SELECT
    DATE_TRUNC('month', s.sale_date) AS month,
    st.store_name,
    st.region,
    SUM(s.quantity * s.price_per_unit) AS total_sales
FROM sales s
JOIN stores st ON s.store_id = st.store_id
GROUP BY month, st.store_name, st.region
ORDER BY month, total_sales DESC;