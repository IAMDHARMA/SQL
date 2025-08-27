/*display the employees who earns apart from the 
range of 10 to 20k*/
select first_name,salary from employees
where salary not between 10000 and 20000;
/*display the employees name with department_id who work
in the department 50,60,90,100*/
select first_name,salary from employees
where department_id in (50,60,90,100);
-- salary= 50 or salary=60 or salary=90 or salary=100
/*display the employees who does not work in the position
'sa_rep','st_clerk'*/
select first_name,job_id from employees
where job_id not in ('sa_rep','st_clerk');
select first_name,job_id from employees
where job_id!='sa_rep'and job_id<>'st_clerk';
-- display the salary who earn more than 5000,10000,15000
/*> any(5000,10000,15000)
salary>10000 or salary >5000 or salary>15000
> all (5000,10000,15000)
salary >5000 and salary>10000 and salary>15000*/

-- display the names whose having second letter 'a';
select first_name from employees
where first_name like '_a%';
-- display the names whose length of name is 4
select first_name from employees
where first_name like '____';
-- dsiplay the name whose name end with 's' --7
select first_name from employees
where first_name like '%s';
/*display the name whose name start with 's'
and the length of name should be '5'*/ -- 3
select first_name from employees
where first_name like 's____';
/* -- display the name whose having 'z' in their name -- 3*/
select first_name from employees
where first_name like '%z%';
-- display the 5 letter first_name and 4 letter last_name*/
select first_name from employees
where first_name like '_____' and last_name like '____';
-- display the first_name start with 'j',last name end with 'n'
select first_name,last_name from employees
where first_name like 'J%' and last_name like '%n';

-- order by -- to sort the data 
-- display the salary in descending order
select salary from employees
order by salary desc;
select salary from employees
order by salary;
select salary from employees
order by salary asc;
-- order by defaultly return ascending order 
select salary ,department_id from employees
order by 2;
select salary,department_id from employees
order by first_name;
select salary,department_id from employees
order by 3;

select first_name,last_name from employees
order by first_name ,last_name desc;










