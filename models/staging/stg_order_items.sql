with raw as (
    select *
    from `sinuous-network-468812-j8.raw_olist.order_items`
)

select
    order_id,
    order_item_id,
    product_id,
    seller_id,
    shipping_limit_date,
    price,
    freight_value
from raw


