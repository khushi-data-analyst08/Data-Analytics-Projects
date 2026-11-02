SELECT
    s.customer_id,
    SUM(m.price) AS total_spending
FROM sales AS s
JOIN menu AS m
    ON s.product_id = m.product_id
GROUP BY s.customer_id
ORDER BY total_spending DESC;


SELECT
    customer_id,
    COUNT(DISTINCT order_date) AS visit_days
FROM sales
GROUP BY customer_id
ORDER BY customer_id;
