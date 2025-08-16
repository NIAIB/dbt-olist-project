with raw as (
    select *
    from `sinuous-network-468812-j8.raw_olist.orders`
)

select
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
    order_estimated_delivery_date
from raw


