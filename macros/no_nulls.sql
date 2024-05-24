{% macro no_nulls_in_columns(model) %}
 SELECT * FROM {{ model }} WHERE
 {% for col in adapter.get_columns_in_relation(model) -%}
 {{ col.column }} IS not NULL and
 {% endfor %}
 FALSE
{% endmacro %}
