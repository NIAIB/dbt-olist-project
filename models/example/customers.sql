-- models/example/customers.sql
WITH raw_customers AS (
    SELECT *
    FROM `sinuous-network-468812-j8.raw_olist.customers`
)

SELECT
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state
FROM raw_customers

