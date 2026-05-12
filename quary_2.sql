--  SQL me GROUP BY ka use similar data ko group (same values ke according combine) karne ke liye hota hai,
--  taaki hum un groups par calculations kar saken jaise:

-- aggregate functions
-- COUNT() → kitne records hain
-- SUM() → total
-- AVG() → average
-- MAX() → maximum
-- MIN() → minimum

use sakila;

-- count null ko nahi include karta hai
select sum(salary) ,count(salary) from employees;

select sum(salary),count(salary) from employees where department='it';

select department,count(department) from employees  group by (department);

select department,sum(salary),avg(salary),count(department) from employees  group by (department);

select job_title,sum(salary) from employees group by job_title;

select * from payment;

-- quation 
-- from this table find the total amount and avg amount 
-- from this table find num of tansiction done by coustomer_id1 
-- from this table find num of tansiction done by customer _id 2,5
-- find avg amount sapande in year 2005
-- find totl tansication done by each customer_id
-- find and total amount spend after the customer_id 3
-- find the accurrance for each amount payments  like 0.99 kitne bar aaya 
-- find the total amount given in your table 
-- get avg amount spend by each staff
-- get toatl amount spand in each month 
-- get total amount spend for each month of each year


select sum(amount),avg(amount),customer_id from payment group by customer_id;
select count(amount),customer_id from payment where  customer_id=1;
select count(amount),customer_id from payment where  customer_id in(2 and 5);
select avg(amount) from payment where year=2005;

-- assignment
-- these lean from regex software
-- read learn emplyes database
-- if error came hoe to solve mysql is not reconized

select sum(amount),avg(amount) from payment;
select count(customer_id) from payment where customer_id in(2,5);
select count(customer_id),customer_id from payment group by customer_id;
select sum(amount) from payment where customer_id>3;
select customer_id,count(customer_id),amount from payment group by amount,customer_id;
select sum(amount) from payment ;
select staff_id,avg(amount) from payment group by staff_id ;
select payment_date,sum(amount) from payment group by payment_date;





