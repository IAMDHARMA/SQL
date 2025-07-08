create database learn_path;
show char set;
drop database learn_path;
drop database if exists learn_path;
use learn_path;
show tables;
create table students(id int primary key auto_increment,
name varchar(100),cgpa decimal(3,2));
select * from students;
describe students;
alter table students add department varchar(20);
alter table students drop department;
insert into students(name,cgpa) values
("Aarthi",7.6),
("Anitha",8.31),
("Anitha",8.5),
("Arul",8.2),
("Ashwin",7.6);
insert into students(name,cgpa) values('Balaji',7.2);
insert into students(name) values("Raj");
select name from students;

/*where class*/

create table employee(Emp_id int primary key auto_increment,
Ename varchar(100),JobDesc varchar(100),salary int);
describe employee;
select * from employee;
insert into employee(Ename,JobDesc,salary) values
('Ram','ADMIN',1000000),
('Harini','MANAGER',2500000),
('George','SALES',2000000),
('Ramya','SALES',1300000),
('Meena','HR',2000000),
('Ashok','MANAGER',3000000),
('Abdul','HR',2000000),
('Ramya','ENGINEER',1000000),
('Raghu','CEO',8000000),
('Arvind','MANAGER',2800000),
('Akshay','ENGINEER',1000000),
('John','ADMIN',2200000),
('Abinaya','ENGINEER',2100000);

-- coditions
select * from employee where Ename='ramya';
select * from employee where Ename<>'ramya';
select ename,jobdesc from employee where Ename='ramya';
select * from employee where salary >1000000;
select * from employee where salary < 1000000;
select * from employee where salary >=1000000;
select * from employee where salary <=1000000;

-- And or OR or IN or Not in 

select * from employee where salary<2600000 and jobdesc='admin';
select * from employee where jobdesc='hr' or jobdesc='sales';
select * from employee where jobdesc in ('hr','sales');
select * from employee where jobdesc not in ('hr','sales');

-- BETWEEN AND

select * from employee where emp_id between 4 and 10;

-- Limit

select * from employee limit 5;
select * from employee where emp_id between 4 and 10
limit 3;

-- like '%' and wildcards '_'

select * from employee where ename like 'a%';
select * from employee where ename like 'r%a';
select * from employee where ename like '%i%';
select * from employee where ename like '__i%';
select * from employee where ename like 'r\%';
select * from employee where ename not like 'a%';

-- Update and Delete

update employee set jobdesc='data scientist' where emp_id=3;
delete from employee where emp_id=12;

-- Distinct

select distinct jobdesc from employee;

-- order by
select * from employee;
select * from employee order by salary desc;
select * from employee order by salary;
select * from employee where jobDesc='manager' order by salary desc;
select * from employee order by jobDesc,ename;
select * from employee order by (case jobdesc
when 'ceo' then 1
when 'manager' then 2
when 'sales' then 3
when 'Hr' then 4
when 'engineer' then 5
else 100 end);

select * from employee order by (case jobdesc
when 'ceo' then 1
when 'manager' then 2
when 'sales' then 3
when 'Hr' then 4
when 'engineer' then 5
else 100 end),salary;

-- functions
-- aggregate function
use learn_path;
select * from employee;
select * from employee order by salary;
select * from employee order by salary desc;
select count(*) from employee;
select count(salary) from employee;
select count(*) as manager_count from employee where jobdesc='manager';
select avg(salary) average_salary_employee from employee;
select avg(salary) average_salary_managers from employee where jobdesc='manager';
select sum(salary) total_salary_of_analyst from employee where jobdesc='manager';
select max(salary) from employee;
select * from employee where salary=(select max(salary) from employee);
select min(salary) from employee;
select min(salary) from employee where jobdesc='manager';

-- string
select ucase(ename),salary from employee;
select ename,char_length(ename) from employee;
select salary,char_length(salary) from employee;
select ename,concat('rs. ',salary,0) from employee;
select ename,left(jobdesc,4) from employee;


-- date
alter table employee add hire_date date;
update employee set hire_date="2012-10-05";
select * from employee;
update employee set hire_date='2014-10-5' where jobdesc='manager';
select * from employee;
select now();
select date(now());
select current_date();
select date_format(curdate(),'%d/%m/%y') as dateformat;
select date_format(curdate(),'%d/%m/%Y') as dateformat;
select datediff(curdate(),'2025-07-14');
select curdate() 'start date',date_add(curdate(),interval 1 day) 'one day later',
date_add(curdate(),interval 1 week) 'one week later',
date_add(curdate(),interval 1 month) 'one month later',
date_add(curdate(),interval 1 year) 'one year later';

-- Group By and Having
select * from employee;
select jobdesc,avg(salary) from employee group by jobdesc;
select jobdesc,count(emp_id) from employee group by jobdesc;
select salary,count(emp_id) from employee group by salary;
select jobdesc, count(emp_id) from employee group by jobdesc having count(emp_id)>1;
select jobdesc, count(emp_id) from employee group by jobdesc having count(emp_id)>1 order by jobdesc;
select jobdesc, count(emp_id) from employee group by jobdesc having count(emp_id)>1 order by jobdesc desc;
select jobdesc, count(emp_id) from employee where salary>1500000 group by jobdesc;

-- joins
use learn_path;
CREATE TABLE branch (
branch_id INT PRIMARY KEY AUTO_INCREMENT,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

CREATE TABLE employe (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    ename VARCHAR(100) NOT NULL,
    jobDesc VARCHAR(100),
    salary INT,
    branch_id INT,
    FOREIGN KEY (branch_id)
        REFERENCES branch (branch_id)
);

INSERT INTO branch VALUES(1,"Chennai","16 ABC Road");
INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO employe VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO employe VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO employe VALUES(3,'George','SALES',2000000,1);
INSERT INTO employe VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO employe VALUES(5,'Meena','HR',2000000,3);
INSERT INTO employe VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO employe VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO employe VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO employe VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO employe VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO employe VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO employe VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO employe VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO employe VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO employe VALUES(15,'Ranjani','ENGINEER',2100000,NULL);

SELECT * FROM employe;
select * from branch;

SELECT 
    e.emp_id, e.ename, e.jobdesc, e.salary, b.br_name, b.addr
FROM
    employe e
        JOIN
    branch b ON e.branch_id = b.branch_id;
    
SELECT 
    e.emp_id, e.ename, e.jobdesc, e.salary, b.br_name, b.addr
FROM
    employe e
        JOIN
    branch b ON e.branch_id = b.branch_id
    order by emp_id;
    
SELECT 
    e.emp_id, e.ename, e.jobdesc, e.salary, b.br_name, b.addr
FROM
    employe e
       right JOIN
    branch b ON e.branch_id = b.branch_id
    order by emp_id;

SELECT 
    e.emp_id, e.ename, e.jobdesc, e.salary, b.br_name, b.addr
FROM
    employe e
	left JOIN
    branch b ON e.branch_id = b.branch_id
    order by emp_id;
    
    SELECT 
    e.emp_id, e.ename, e.jobdesc, e.salary, b.br_name, b.addr
FROM
    employe e
     cross   JOIN
    branch b ON e.branch_id = b.branch_id
    order by emp_id;
    
-- displays the employee count in each branch

select  b.br_name,count(e.emp_id) from branch b 
join employe e on b.branch_id=e.branch_id
group by e.branch_id;

-- Displays employee list in Chennai Branch
select * from employe
where branch_id=(select branch_id from branch where br_name='chennai')

-- Displays the employees with min salary
select * from employe where salary = (select min(salary) from employe);
SELECT * FROM employee
WHERE salary = (SELECT MIN(salary)
FROM employee);

SELECT branch_id,br_name
FROM branch
WHERE branch_id = ANY
(SELECT branch_id FROM employe
WHERE salary>2500000);

SELECT * FROM employe
WHERE branch_id <> ALL ( SELECT branch_id FROM branch
WHERE br_name IN ("Chennai","Coimbatore"));

use learn_path;
create table dummy(id int);
desc dummy;
insert dummy values(1);
alter table dummy add name varchar(10);
select * from dummy;
update dummy set name='dharma' where id=1;
alter table dummy add age int;
update dummy set age=18 where id=1;
start transaction;
insert dummy values(2,'vicky',20);
savepoint a1;
update dummy set name='karthi' where id=2;
savepoint a2;
rollback to a1;
commit