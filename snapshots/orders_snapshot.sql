{% snapshot orders_snapshot %}

{{
    config(
      target_database='DEV',
      target_schema='CURATED_DATA',
      unique_key='order_id',
      strategy='timestamp',
      updated_at='inserted_update_at',
    )
}}

 select * from DEV.RAW_DATA.orders

{% endsnapshot %}