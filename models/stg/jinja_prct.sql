with products as (
    select * from {{ ref('stg_products') }}
)
,
pivoted as (
    select * from products
)

select * from pivoted