{% snapshot products_snapshot %}

{{
    config(
      target_database='DEV',
      target_schema='CURATED_DATA',
      unique_key='PROD_id',
      strategy='check',
      check_cols=['product_name','unit_price'],
      invalidate_hard_deletes=True
    )
}}

select * from DEV.RAW_DATA.PRODUCTS

{% endsnapshot %}