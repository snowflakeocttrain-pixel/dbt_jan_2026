{{ config(materialized='ephemeral') }}

select deptno,avg(salary) as average_sal from RAW_DATA.EMPLOYEE group by 1