select order_id from {{ ref('stg_orders') }}
where sale_price <0