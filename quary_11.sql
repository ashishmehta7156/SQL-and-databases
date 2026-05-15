-- sub quarary
-- is a type of quary where a quary is present within another quary
-- sub quary we also called as nested sub quary
-- in this there are two quary outer quary and inner quary

create database shadidb;

use shadidb;

create table biodata(id int, name varchar(20) ,age int);
insert into biodata values(1,'rahul',28),(2,'anjali',28),
(3,'aishwariya',40),(4,'naina',23);

select * from biodata;

select age from biodata where name='rahul';	-- age of rahul

select * from biodata where age=28;

select * from biodata where age=(select age from biodata where name='rahul');		-- sub quary

select max(age) from  biodata;
select * from biodata where age=40;
select * from biodata where age=(select max(age) from  biodata);

select char_length(name) from biodata where name='rahul';

select name from biodata where char_length(name)=(select char_length(name) from biodata where name='rahul');

-- type of sub quary
-- 1 single row sub quary= A Single Row Subquery in SQL is a subquery that returns only one row and one value.

use sakila;

select * from film;

-- Q1 name those movies where the rental rate is same for the 'AFRICAN EGG'

select rental_rate from film where title= 'AFRICAN EGG';
select title from film where rental_rate=(select rental_rate from film where title= 'AFRICAN EGG');


-- get movie id and name where rental rate =min renta rate 
-- get movie id,name and duration rate where the duration is grater then the avg duration of the movies
-- get movie id for the movies where the relase year should be = to relesing year should be equal and the rating should be same as of the applo team

 select film_id,title from film ;
 select min(rental_rate) from film;
  select film_id,title from film where rental_rate=(select min(rental_rate) from film);
  
  select film_id,title,rental_duration from film where rental_duration>(select avg(rental_duration) from film);
  
 -- moviue id , for the movuies where the release year of the movie should be = the releasing yearinf pof movuie alone trip and the rationg shoulad be same as of the apollo team
select film_id, title from film where release_year=(select release_year from film where title = 'ALONE TRIP') 
AND rating = (select rating from film where title = 'APollo TEEN');

use shadidb;
select * from biodata;

select name,age from biodata where name='anjali' or name='aishwariya';

-- one row not compare to multirows
select * from biodata where  age in (select age from biodata where name='anjali' or name='aishwariya');
select * from biodata where  age in (select age from biodata where name='anjali' or name='aishwariya' and name!='rahul');
select * from biodata where  age not in (select age from biodata where name='anjali' or name='aishwariya');

-- find name for rahul where the age is not equal to the age of anjli and ashwariya



