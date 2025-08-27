-- alter-add,change,modify,drop
create table product(pro_id int,pro_name varchar(25);
desc product;
-- to add a new column
-- alter table tb_name add new_column dtype;
alter table product add quantity int;
-- to add  new column in between
alter table product add pro_type varchar(10) after pro_id;
-- to add a new column in first
alter table product add dummy int first;

-- alter - change
-- change- to change the column name,datatype,size
desc product;
-- alter table tba_name change old_name new_name dtype(size);
alter table product change pro_id product_id varchar(30);
alter table product change pro_type pro_type char(10);

-- alter-modify
-- modify-datatype,size,constraints
-- alter table tb_name modify col_name new_type(size) constraint;
alter table product modify pro_type int;

desc product;

-- alter-drop
-- to drop the column
-- alter table tb_name drop column_name
alter table product drop dummy;

-- drop
-- to drop the database object,database
-- drop database_object_type object_name
drop table product;
drop database supermarket;

create table pro(id int,name varchar(25));
-- rename table old_name to new_name
rename table pro to product;

-- truncate
-- to delete all the records from the table. It retain the structure
select * from student;

truncate student;






