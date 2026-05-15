show databases;
use shadidb;
select * from employees;

create table departments(dept_id int, dept_name varchar(20), location varchar(20));
insert into departments values(10,'HR' ,'mumbai'),(20,'it','banglore'),(30,'finance','delhi');
select * from departments;

select dept_name from departments where location in ('banglore','delhi');
select * from employees where department =any(select dept_name from departments where location in ('banglore','delhi'));



-- most important for interview 
-- correlated sub quary
-- A Correlated Subquery is a subquery that depends on the outer query for its values.
-- It runs once for every row processed by the outer query.
-- Simple Definition
-- Normal subquery → runs only one time.
-- Correlated subquery → runs again and again for each row of the main query.
-- If inner query uses column from outer query → Correlated Subquery.

select *  from employees as e where  
salary >(select avg(salary) from employees where department =e.department);

-- how have highest salary as of its department
select * from employees as e where 
salary=(select max(salary) from employees where department=e.department); 

select * from employees as e where
70000<all(select salary from employees where department=e.department);
