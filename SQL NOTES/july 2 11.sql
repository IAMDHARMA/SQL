create table marks(tamil int,english int,total int);
insert into marks(tamil,english) values(70,80),(45,67),
(45,89),(90,90),(56,78);
select * from marks;
set sql_safe_updates=0;



update marks
set total=tamil+english;

-- TCL- commit,rollback,savepoint
-- DDL and DML is auto commit -- no undo 

create table tcl(id int);
start transaction; -- session start

insert into tcl values(1),(1);
select * from tcl; 
-- shutdown- session end


start transaction;-- session start
insert into tcl values(1),(1);
savepoint A1;
insert into tcl values(2),(2),(2);
select * from tcl;
savepoint a2;
insert into tcl values(1000),(1000);
savepoint a3;

rollback to a2;

rollback to a1;

select * from tcl;

create table a1(id int); -- session end

DCL- Grant,Revoke

Grant previleges on schema.table to username@host;

Grant insert,update  on hr.employees  to 'john'@host;

Revoke insert on hr.employees from username@host;






