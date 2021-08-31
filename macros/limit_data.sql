{% macro limit_data(target_name,column_name, days_past=3) %}
{% if (target.name == target_name) %}
where {{column_name}} >= dateadd('day',- {{days_past}}, current_timestamp)
{% endif %}
{% endmacro%}