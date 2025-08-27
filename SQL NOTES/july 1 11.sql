select * from t2;	
-- DMl-insert,update,delete

-- insert into tb_name values(val1,val2....)
insert into t2
values(2,'reena'),(3,'joy');

insert into t2(id)
values(4),(5),(6);

insert into t2(name) 
values('joe'),('john'),('james');

update t2
set name='mary'
where name='reena';

set sql_safe_updates=0;

-- name- null-'unknown'
update t2
set name='unknown'
where name is null;
select * from t2;
update t2
set id=1000
where id is not null;

update t2
set name='unknown';

-- where is optional in update and delete


delete from t2
where id is null;

Delete from t2;


select 10*3;

