{{ config(enabled=true) }}
select * from {{ source('raw', 'ord_items') }}