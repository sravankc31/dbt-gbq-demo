with 
-- --source_name: The name: defined under a sources: key
-- table_name: The name: defined under a tables: key
source as (

    select * from {{ source('raw', 'ord_items') }}

),

renamed as (

    select *

    from source

)

select * from renamed
