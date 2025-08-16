with raw as (
    select *
    from `sinuous-network-468812-j8.raw_olist.customers`
)

select
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state
from raw

