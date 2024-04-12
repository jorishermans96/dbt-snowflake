{% macro snowflake__get_drop_table_sql(relation) %}
    {% if iceberg %}
    drop iceberg table if exists {{ relation }} cascade
    {% else %}
    drop table if exists {{ relation }} cascade
    {% endif %}
{% endmacro %}
