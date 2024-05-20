with products as (
    select * from {{ ref('stg_products') }}
)
,
pivoted as (
    select 
    id,
    {%- set categories=['Plus','Accessories'] -%}
    {% for category in categories %}
        sum(case when category='{{category}}'then {{retail('retail_price',3)}} else 0 end ) as {{category}}_type
        {% if not loop.last %}
        ,
        {% endif %}
    {% endfor %}
    {#sum(case when category='Plus' then retail_price else 0 end ) as Plus,
     sum(case when category='Accessories' then retail_price else 0 end ) as Accessories#}
    from products  where department='Women' 
    group by 1 
)

select * from pivoted