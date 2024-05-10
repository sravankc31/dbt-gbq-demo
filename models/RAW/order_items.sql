{{
    config(
        materialized='view'
    )
}}
select * from bigquery-public-data.thelook_ecommerce.order_items