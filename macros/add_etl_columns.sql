{% macro add_etl_columns() %}

current_timestamp as etl_inserted_at,
current_user() as etl_inserted_by

{% endmacro %}