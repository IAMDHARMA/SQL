/*view*/
use d;
select * from office;
select * from office where salaryid=5;
create view empview as select * from office where salaryid=5;
select * from empview;
update empview set erole='dotnet dev' where regid=1;
update empview set erole='data scientist' where regid=1;
/*distinct*/
/*is null ,is not null,if null*/
use student_data;
select * from student;
select * from student where gpa is null;
select * from student where gpa is not null;
select id,ifnull(gpa,5.3)from student;
