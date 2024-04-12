{%- macro snowflake__get_rename_table_sql(relation, new_name) -%}
{% if iceberg %}
    alter iceberg table {{ relation }} rename to {{ new_name }}
{% else %}
    alter table {{ relation }} rename to {{ new_name }}
{% endif %}
{%- endmacro -%}
