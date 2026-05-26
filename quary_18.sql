-- constrant 
create database const_db;

use const_db;
select database();

-- DDL --> (DATA DEFFINATION LANGUAGE )
-- CREATE
create table if not exists test1(
id int,
age  int);

-- DML (DATA MANIPULATIO LANGUAGE )
-- INSERT
INSERT INTO TEST1 VALUE(101,32),(102,NULL);

SELECT * FROM TEST1;

-- CONSTRANT ===> ARE THE RULE TO TABLE COLUMN TO PREVANT INVALID DATA ENTRY

create table if not exists test2(
id int,
age  int  NOT NULL );
INSERT INTO TEST2 VALUE(101,32),(102,NULL); 		-- NOT TO BE NULL BEACUSE WE USE COSTRANT "NOT NULL"

-- create table if not exists test3(
-- id int unique,
-- age  int);
-- INSERT INTO TEST3 VALUE(101,32),(101,NULL); 	-- ERROR  BEACUSE WE USE COSTRANT "UNIQUE" WE DON'T GIVE DUPLICATE VALUE
-- SELECT * FROM TEST3;


create table if not exists test3(
id int unique,
age  int);
INSERT INTO TEST3 VALUE(101,32),(102,NULL); 	--  BEACUSE WE USE COSTRANT "UNIQUE" WE DON'T GIVE DUPLICATE VALUE
SELECT * FROM TEST3;


create table if not exists test3(
id int unique,
age  int);
INSERT INTO TEST3 VALUE(101,32),(101,NULL); 	-- ERROR  BEACUSE WE USE COSTRANT "UNIQUE" WE DON'T GIVE DUPLICATE VALUE
SELECT * FROM TEST4;


create table if not exists test5(
id int default 100,
age  int);
INSERT INTO TEST5(AGE) VALUE(101); 	--  WE USE COSTRANT "Default"  
SELECT * FROM TEST5;

create table if not exists test6(
id int primary key,
age  int);
INSERT INTO TEST6 VALUE(10,23); 
INSERT INTO TEST6 VALUE(10,24);					-- error  WE USE COSTRANT "primary key"  duplicate value in id coloumn 
SELECT * FROM TEST6;


create table if not exists test8(
id int,
age  int,				-- we make two colum primary key
salary int ,
primary key(id,age));
INSERT INTO TEST8 VALUE(10,23,30000); 
INSERT INTO TEST8 VALUE(10,24,382777);					
SELECT * FROM TEST8;

create table if not exists test9(
id int,
age  int  check (age>18)  );
INSERT INTO TEST9 VALUE(1,32); 

select * from test9;  

create table if not exists test10(
id int,
age  int  check (age>18) );
INSERT INTO TEST10 VALUE(1,10);  		 -- error "check" constrant age is not >18

select * from test10;  

create table if not exists test11(
id int,
age  int  check (age between 18 and 30 ) );		-- error check constrant "age between 18 and 30" you give age 32 
INSERT INTO TEST11 VALUE(1,32); 

select * from test11;  

create table student(id int, name varchar(20),c_name varchar(20));		-- foregion key
insert into student values(1,'naina','10'),(2,'abhi',12);

create table class( c_name varchar(20)primary key);
insert into class values(10),(20),(12);

