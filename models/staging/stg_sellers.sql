-- models/staging/stg_sellers.sql
WITH raw AS (
    SELECT *
    FROM `{{ var("project_id") }}.raw_olist.sellers`
)

SELECT
    seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
FROM raw

