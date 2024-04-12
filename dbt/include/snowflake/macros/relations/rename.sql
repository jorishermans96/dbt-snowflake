{% macro snowflake__rename_relation(from_relation, to_relation) -%}
  {% call statement('rename_relation') -%}
  {% if iceberg %}
    alter iceberg table {{ from_relation }} rename to {{ to_relation }}
  {% else %}
    alter table {{ from_relation }} rename to {{ to_relation }}
  {% endif %}
  {%- endcall %}
{% endmacro %}
