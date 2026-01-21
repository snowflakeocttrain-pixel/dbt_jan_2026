{{ config(materialized='table',
          alias="EMP_LT_TBL",
          pre_hook=["{{audit_macro('emp_lt','started')}}"],
          post_hook=["{{audit_macro('emp_lt','completed')}}"]
   )
}}
select e.*,as1.average_sal,{{add_etl_columns()}} from 
RAW_DATA.employee e  inner join {{ref('emp_ephemeral')}} as1 
on (as1.deptno=e.deptno) and e.salary<as1.average_sal