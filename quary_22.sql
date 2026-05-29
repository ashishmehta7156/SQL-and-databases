-- DCL(DATA CONTROL LANGUAGE )
-- TO GIVE PERMISION 
SELECT * from mysql.user;

create user ishan identified by '123';

select current_user();
create database testdb4;
use testdb4;
create table raj23(id int, name varchar(20));
insert into raj23 values(20,'abhi'),(21,'ashish');
select * from raj23;

show grants for ishan;

grant select on testdb4.raj23 to ishan;
grant delete on testdb4.raj23 to ishan;

-- drop and truncate are ddl statement 

-- revoke this delete prevelage from the ishan user
-- give select and insert previllage to a particular
-- crate a data bace with three column and insert 2 rowa
-- NOW GIVE one column accsess to this ishan user
-- also give the upadte previllage to the 2 or 3 column 
-- remove all the previllage from this ishan user

create database ram23;
use ram23;
create table test_ram
(id int, name varchar(20),salary int);
insert into test_ram value(1,'ashish',2000),(2,'raju',3000);

create user ishan12 identified by '123';
grant select on ram23.test_ram to ishan12;

GRANT SELECT (name)
ON ram23.test_ram
TO ishan12;

FLUSH PRIVILEGES;


-- create three user and create a group(roll) with a name sale 
-- give permision to roll select,insert , update
-- add in this roll 
-- login and check it that the permision are came or not

-- do 25 group by and inner join 25 in notbook


