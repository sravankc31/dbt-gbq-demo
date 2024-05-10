with 

source as (

    select * from {{ source('sravan', 'ord_items') }}

),

renamed as (

    select

    from source

)

select * from renamed
