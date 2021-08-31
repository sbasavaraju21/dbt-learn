{% macro cents2dollars(column_name, roundto=2)%}
   round (1.0 * {{column_name}}/100, {{roundto}})
{% endmacro %}