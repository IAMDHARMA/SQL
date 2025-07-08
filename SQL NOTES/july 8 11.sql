/*display the employees details who earn highest
salary*/
select first_name,salary from employees
order by salary desc limit 1;

/* display the employees name with salary top 3 lowest 
paid employees.*/
select first_name,salary from employees
order by salary limit 3;
-- display the 2nd highest paid employees.
select first_name,salary from employees
order by salary desc limit 1 offset 1;
-- display the 2nd and 3rd lowest paid employees
select * from employees order by salary
limit 2 offset 1;
/*display the 2nd and 3rd highest paid employees in 
'st_clerk' role*/
select first_name,salary,job_id from employees
where job_id='st_clerk'
order by salary desc
limit 2 offset 1;

/*display the reivised salary if the salary < 10K
then show 'low salary',salary  between 10k to 20k
then 'medium salary' salary >20K then 'high salary'*/

select salary,
case
when salary <10000 then "low salary"
when salary between 10000 and 20000 then "medium salary"
when salary >20000 then "high salary" 
end  as revised_salary
from employees;

select salary,
case
when salary <10000 then "low salary"
when salary between 10000 and 20000 then "medium salary"
else 'high salary'
end  as revised_salary
from employees;

select salary,
case
when salary <10000 then "low salary"
when salary between 10000 and 20000 then "medium salary"
end  as revised_salary
from employees;

-- Role category based on job_id
if the job_id start with 
'IT' then technical
'HR' then human resource
'SA' then 'sales'
any thing else then other

salary >10000,cp-not null =salary+comm+0.02+1000
salary >10000,cp-null=salary+0.03+1000
salary <10000,cp-not null=salary+comm+500
salary<10000,cp-null=salary+0.01+500












