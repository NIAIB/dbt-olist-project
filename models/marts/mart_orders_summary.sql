-- models/marts/mart_orders_summary.sql
WITH orders AS (
    SELECT *
    FROM {{ ref('stg_orders') }}
),
customers AS (
    SELECT *
    FROM {{ ref('stg_customers') }}
),
order_items AS (
    SELECT *
    FROM {{ ref('stg_order_items') }}
)

SELECT
    o.order_id,
    c.customer_unique_id,
    c.customer_city,
    c.customer_state,
    DATE(o.order_purchase_timestamp) AS order_date,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.price) AS total_revenue,
    AVG(oi.price) AS avg_order_value
FROM orders o
LEFT JOIN customers c ON o.customer_id = c.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY
    o.order_id,
    c.customer_unique_id,
    c.customer_city,
    c.customer_state,
    order_date

