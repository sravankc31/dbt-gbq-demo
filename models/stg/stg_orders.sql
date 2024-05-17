{{
    config(
        schema='test2'
    )
}}
select * from {{ source('raw', 'ord_items') }}