-- display the employees name with salary who earn more than 10k
select first_name,salary
from employees 
where salary >10000; 
-- display the employees details who earn 20000 or less than 20000 -- 106
select * from employees;
where salary <= 20000;
-- display the employees id with salary who earns other than 12000. -- 104
select employee_id,salary from employees where salary != 12000;
-- display the employee name with department_id who works as 'SA_REP'
select first_name,department_id from employees
where job_id ='SA_REP';
-- display the employee name who does not work in department 50 
select first_name from employees where department_id <>50;
-- display the salary with 1000 bonus who dont have commission_percentage.
select salary+1000 as bonus_salary  from employees
where commission_pct is null;
-- display the salary with 500 deduction  who have a commission_percentage
select salary-500 as deducted_salary  from employees
where commission_pct is not null;
/*display the name,department_id,salary who earn more than 5k 
and their department_id should be 50*/
select first_name,department_id,salary from employees
where salary >5000 and department_id=50;
/*display the name,department_id,salary who earn more than 5k 
or department_id should be 50*/
select first_name,department_id,salary from employees
where salary >5000 or department_id=50;
-- display the salary who earn ranges more than 10k and below 20k
select salary from employees
where salary>=10000 and salary<=20000;

select salary from employees
where salary between 10000 and 20000;






