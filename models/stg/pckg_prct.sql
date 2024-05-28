select
 {{dbt_utils.generate_surrogate_key(['order_id','user_id'])}} as id1
,order_id, 
user_id, 
id ,
 status ,
  created_at from {{ source('raw', 'ord_items') }}

  ---pkgkkk