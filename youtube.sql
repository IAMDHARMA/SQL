create database youtube_sql
use youtube_sql
create table emp(Emp_id int primary key,Ename varchar(30),JobDesc varchar(30),salary int)
insert into emp values(1,'Ram','ADMIN',1000000);
select * from emp
insert into emp values(2,'HARINI','MANAGER',2500000),
(3,'GEORGE','SALES',2000000),
(4,'RAMYA','SALES',1300000),
(5,'MEENA','HR',2000000),
(6,'ASHOK','MANAGER',3000000),
(7,'ABDUL','HR',2000000),
(8,'RAMYA','ENGINEER',1000000),
(9,'RAGHU','CEO',8000000),
(10,'ARVIND','MANAGER',2800000),
(11,'AKSHAY','ENGINEER',1000000),
(12,'JOHN','ADMIN',2200000),
(13,'ABINAYA','ENGINEER',2100000)
select * from emp where Ename<>'RAMYa'
select * from emp where salary > 2500000
select * from emp where jobDesc='manager' or jobDesc='hr' 
select * from emp where ename<>'ramya'
select emp_id,ename,salary from emp where salary>2000000

select * from emp
select * from emp where jobdesc<>'HR'
show tables
update emp set jobdesc='data scientist';
use youtube_sql;
delete from emp;