create database if not exists datatypedb;

use datatypedb;

-- numeric 
create table test1(id tinyint);
insert into test1 values(-1),(10);
insert into test1 value(-129); 	-- out of range(1 byte==>8 bit ==> 2**8(-128 to 127)
select * from test1;

-- small int -> byte medium int ->3 byte
-- int==>4
-- big int ==> 8byte

create table test2(age tinyint unsigned);		-- unsigned meaning vo sirf positive number he lega
insert into test2 values(250);
select * from test2;


-- seinged olny floating values,double 
create table test3(salary float,salary2 double);
insert into test3 values(1989.243334,1929.36783);
select * from test3;

create table test4(price double(6,2)); 	-- total 6 values, 2 is decimal value,4 are the integer values before 
insert test4 values(0.3467546);
insert test4 values(1234);
insert test4 values(1234.321); -- there are 7 vlaues in this it don't give any value
insert test4 values(12342);		-- it show error  Out of range value for column 'price' at row 1
select * from test4;

-- string data types 
create table test10(countrycode char(3));
insert into table10 values('ind');
insert into table10 values('india');		 -- error


create table test11(countrycode varchar(3));
insert into table11 values('ind');
insert into table11 values('india');		 -- error
insert into table11 values('h'      );
select *,char_length(countrycode) from test6;

