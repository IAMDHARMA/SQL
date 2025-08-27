-- display all records from employees

-- display all records from department
-- syntax order
/*select -- mandatory
from 
where 
group by
having
limit
offset*/

use hr;



-- display all records from employees
select * from employees;
-- display all records from department
select * from department;

select first_name from employees;
select 'first_name';


select 45+4;
select 50-8;
select 56*8;

select ' besant technologies' ;

select first_name as name from employees;

select salary +1000 as bonus_salary from employees;


/*display the employee_id,first_name,salary from the employees
table*/ -- 107
select employee_id,first_name,salary
from employees;
/* display the department_id,department_name --27*/
select department_id,department_name from departments;
-- display the city name,postal code and state_province -- 23
select city,postal_code,state_province
from locations;
-- display the incremented salary with 2000 bonus
select salary,salary+2000 as incremented_salary
from employees;

-- where - conditional clause,filtering cluase
>,<,>=,<=,=,!=,<> -- comparision operators
and,or,in,not in,between,not between,any,all
is null,is not null,like.



















