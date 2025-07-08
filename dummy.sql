create database d
use d
create table salary(sid int primary key,srange int)

create table office(regid int primary key, ename varchar(30) not null, erole varchar(20),salaryid int,
 foreign key(salaryid) references salary(sid))

CREATE TABLE officedetails (
    sno INT,
    regid INT,
    ename VARCHAR(30) NOT NULL,
    age INT,
    dob DATE,
    place VARCHAR(30),
    FOREIGN KEY (regid) REFERENCES office(regid)
);
select * from salary
SELECT * FROM office
SELECT * FROM officedetails

insert into salary values(1,50000),
(2,55000),
(3,60000),
(4,65000),
(5,70000)

insert into office(regid,ename,erole,salaryid)
 values(1,"dharma","hr",5),
(2,"yuvi","sales",4),
(3,"karan","TL",2),
(4,"jega","hr",5),
(5,"karthi","sales",4);

insert into officedetails(sno,regid,ename,age,dob,place) values
(101,1,'dharma',20,'2004-10-15','trichy'),
(102,2,'yuvi',19,'2005-1-1','chennai'),
(103,3,'karan',22,'2002-4-5','karur'),
(104,4,'jega',20,'2004-2-6','pondichery'),
(105,5,'karthi',21,'2003-6-22','madurai')

select * from salary
SELECT * FROM office
SELECT * FROM officedetails

/*INNER JOIN*/
select a.regid,a.ename,a.erole,b.srange,c.age,c.dob,c.place from office as a
inner join salary as b on salaryid=sid
inner join officedetails as c on a.regid=c.regid;

/*LEFT JOIN*/

select a.regid,a.ename,a.erole,b.srange from office as a
cross join salary as b on a.salaryid=b.sid
right join officedetails as c on a.regid=c.regid;

select a.regid,a.ename,a.erole,b.srange from office as a,salary as b where salaryid=sid;
