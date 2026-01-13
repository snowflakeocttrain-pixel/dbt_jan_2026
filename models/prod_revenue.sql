{{ config (materialized='table',alias='revenue_tbl',transient=false)}}

select name,sum(unit_price*units_sold) as revenue 
from raw_data.products p inner join raw_data.sales s
on p.prod_id=s.prod_id
group by name