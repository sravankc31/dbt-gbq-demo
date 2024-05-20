{%- macro retail(col_name=1, decimal_place=2) -%}
   round(1.0*({{col_name}}*100)/2, {{decimal_place}})
{%- endmacro -%}