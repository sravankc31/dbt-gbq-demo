{% test positive_value(model, column_name) %}
SELECT
*
FROM
{{ model }}
WHERE
{{ column_name}} >10
{% endtest %}