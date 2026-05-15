use sakila;
-- if - else condition 
select first_name,department,salary,if(department='it',true,false) from employees;
select first_name,department,salary,if(department='it',salary*1.1,salary*1.05) from employees;
select first_name,department,salary,if(department='it',salary*1.1,if(department='hr',salary*1.05,salary)) from employees;

-- /*
-- select col1,col2
-- case 
-- when condition then statement
-- end
-- from table_name
-- /* 
select first_name,department,salary,
case
	when department='it' then true
    else 'non it'
end
from employees;

select first_name,department,salary,
case
	when department='it' or department='hr' then 'a category'
    else 'b category'
end
from employees;

select first_name,department,salary,
case
	when department='it' then salary*1.1
    when department='hr' then salary*1.05
    else salary
end as 'new salary'
from employees;

select * from employees;

-- if the hiring date of the employe is before the year 2020 then print job title like sinear
-- if year =2021 then print asociate 
-- else same print kardenge
 
-- select first_name,hire_date,job_title,year(hire_date)
-- case
-- 	when year(hire_date)<2020 then concate('
--     
-- -- if the salary is gratere then 70,000 create a category name as average salary
-- -- if the salary is grater then 80,000 then print high salary
-- -- if salary is grater then 100000 then print extrime salary
-- -- other wise print category name as low salary

select first_name,salary,
case 
	when salary>70000 then concat(salary,' ','average salary')
	when salary>80000 then concat(salary,' ','high salary')
	when salary>1000000 then concat(salary,' ','low salary')
end as 'new salary'
from employees;

-- select the job title and print the column value based on the condition 
-- jobtitle >1 se jada then print 

select  job_title,count(job_title),
case
when count(job_title)=1 then concat(job_title,'position have',count(job_title),'person')
when count(job_title)>1 then concat(job_title,'position have',count(job_title),'persons')
end as 'new job_title'
from employees group by job_title;


-- assignment
-- what is super key
-- what is primery key and forigen key
-- what is normalisation and what is 1f

-- and do sql zoo pe 1,2,3,4,5 karna hai

-- 'super key'
-- A super key in SQL (or in database design) is a set of one or more columns that can uniquely identify each row in a table.

-- 'primary key'
-- A Primary Key in SQL is a column (or set of columns) that uniquely identifies each row in a table.
-- Primary Key = Unique + Not NULL

-- 'foreign key'
-- A Foreign Key in SQL is a column (or set of columns) that is used to link one table with another table.
-- Foreign Key = A column that refers to the Primary Key of another table
-- connaction banana 2 ya 2 se jada table

-- 'normalization' is important 
--  the process of organizing data into multiple tables to reduce redundancy (duplicate data) and improve data integrity.

-- 1f rule 
-- Each column contains atomic (single) values
-- → No multiple values in one cell
-- No repeating groups or arrays
-- → Don’t store data like “Math, Science” in one column
-- Each row should be unique
-- → Use a Primary Key


