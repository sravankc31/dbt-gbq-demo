{{
    config(
        schema='testing2'
    )
}}
select * from {{ source('raw', 'ord_items') }}