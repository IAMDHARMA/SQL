/*subquery*/
use d;
select * from office;
select * from salary;
select * from office where regid < any(select sid from salary where srange=50000);
select regid,ename,
case
	when srange>50000 then '50000 above value'
    when srange=50000 then 'is equal'
    else 'not'
end as salary
from office;

/*scenrio*/
use d;
create table student(column_id int primary key,name varchar(100),age int,mark int);
select * from student;
insert into student(column_id,name,age,mark) values (1, 'Aarav', 18, 85),
(2, 'Diya', 17, 92),
(3, 'Kabir', 19, 76),
(4, 'Meera', 18, 88),
(5, 'Rohan', 20, 65),
(6, 'Sanya', 17, 91),
(7, 'Ishaan', 18, 72),
(8, 'Anaya', 19, 95),
(9, 'Vivaan', 18, 80),
(10, 'Tara', 17, 87);
/*Write a query to find all students who scored more than the average marks.*/
select * from student where mark >(select avg(mark) from student);

/*There’s an orders table with order_id, customer_id, order_date, total_amount.*/
create table orders(order_id int primary key,customer_id int,order_date date,
total_amount int);
select * from orders;
insert into orders(order_id,customer_id,order_date,total_amount) values
(101, 1, '2025-06-01', 250.50),
(102, 2, '2025-06-03', 100.00),
(103, 1, '2025-06-05', 75.25),
(104, 3, '2025-06-07', 300.00),
(105, 4, '2025-06-08', 150.75),
(106, 2, '2025-06-10', 50.00),
(107, 5, '2025-06-11', 200.00),
(108, 3, '2025-06-12', 90.90),
(109, 1, '2025-06-13', 180.00),
(110, 4, '2025-06-14', 210.45);
/*Find customers who have placed more than 5 orders in the last 30 days.*/

SELECT customer_id
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 30 DAY
GROUP BY customer_id
HAVING COUNT(order_id) > 5;
use sakila;
select * from actor;


