{{ config(materialized='table',
          alias='sum_sal_dept',
          pre_hook=["{{remove_dups_ts('emp_uniq','employee','empid','NA')}}"],
   )
}}

select deptno,sum(salary) as sum_salary from curated_data.emp_uniq
group by 1