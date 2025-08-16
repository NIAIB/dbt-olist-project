-- models/staging/stg_geolocation.sql
WITH raw AS (
    SELECT *
    FROM `{{ var("project_id") }}.raw_olist.geolocation`
)

SELECT
    geolocation_zip_code_prefix,
    geolocation_lat AS latitude,
    geolocation_lng AS longitude,
    geolocation_city,
    geolocation_state
FROM raw

