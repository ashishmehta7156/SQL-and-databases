use datatypedb;

-- DDL  STATEMENT
create table test20(id int, name varchar(20));
insert into test20 values(1,'abhi'),(2,'sahil'),(3,'yash');
select * from test20;

-- truncate  DDL statement
truncate test20;		-- truncate==> data is deleted but not the table structure

select * from test20;

-- DDL DROP statement [drop will delete both structure and table]
drop table test20;	-- drop table structure is droped/removed

-- ALTER 
alter table test20 add column (salary int);  -- add column
alter table test20 add column (age int default 18);
alter table test20 drop column salary ;		-- to delete column
alter table test20 rename column age to newage ; 		-- rename the column name
alter table test20 add constraint primary key(id) ;
desc test20;

select * from test20;

-- add a column before a name column 
-- change the data type of name column to integer
-- add a not null constrant to name and age column 
-- add a forign key name is department 

select database();
select * from sakila.actor;

-- kese dusri table me se us ka data or column lena hai to use
-- CTAS (create table as)
create table mehta123 as 
select actor_id,first_name from sakila.actor;

select * from mehta123;

insert into mehta123 values(1929,'japan');	-- DML

-- update in rows

SET SQL_SAFE_UPDATES=0;

update mehta123 set first_name='ashish';
SELECT * FROM MEHTA123;

update mehta123 set first_name='raj' WHERE  actor_id=2;
SELECT * FROM MEHTA123;

-- delete 
delete from mehta123  where actor_id=2;
SELECT * FROM MEHTA123;

-- most important quation for interview
-- what is DDL AND DML 
-- DEFERENCE B/W truncate delete and drop 
-- what is normalization 
-- difference between char and varchar data type 