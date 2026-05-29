-- TCL(transaction control language)
-- transaction are the group of sql statemnt which work as a unit
-- this TCL command insure my data is correct and acurate 
-- four properties "ACID"
-- first is A===>"ATOMETICITY"
-- MY TRANSCITON DONE CAN'T BE DONE
-- SECOND C==>"CONSISTENCY" 
-- STAP BY STAP execution
-- third I==>"ISOLATED"
-- WORK DONE BY ME ONLY
-- FORTH D==>"DUREBILITY"
-- CHANGES ARE PERMANENT IF THE SERVER IS CRASE 

create database rajdb;
use rajdb;
create table raj45(id int );
insert into raj45 values(12);
select * from raj45;

-- TCL
 start transaction; 
insert into raj45 values(12),(23);
select * from raj45;

commit;

-- transaction start 
-- transaction start when dml opertation transaction keyword 
-- transaction end when you type commit, rollback,ddl statemnt ko execute 

start transaction;
update raj45 set id=34;
SET SQL_SAFE_UPDATES=0;
-- rollback undo karta hai 

start transaction;
insert into raj45 value(10),(35),(66);
delete from raj45 where id=11;

select * from raj45;
commit;
rollback;
select * from raj45;

drop database rajdb;
create database rajdb;
create table raj45(id int );
insert into raj45 values(12),(23),(46);
select * from raj45;

start transaction;
insert into raj45 values(50),(39);
select * from raj45;




update raj45 set id=2333;

savepoint raj45_savepoint_ins;
update raj45 set id=1000;
select * from raj45;

rollback to raj45_savepoint_ins;










