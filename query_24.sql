-- views 
-- views are called vartual table which is used to store query
-- it do not store any data
-- view give access to spacific rows and columns 
-- it is used to make complex queruy easier
-- in views we can write joins,aggregation into a views
-- query ko  reusable bana ne me kaam aata 

create database if not exists viewdb;
use viewdb;


CREATE TABLE departments (
    dept_id   INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id   INT PRIMARY KEY,
    name     VARCHAR(50),
    dept_id  INT,
    salary   DECIMAL(10,2),
    city     VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1,'HR'), (2,'IT'), (3,'Finance');

INSERT INTO employees VALUES
(101,'Aman',    2, 70000, 'Jaipur'),
(102,'Priya',   1, 45000, 'Delhi'),
(103,'Rahul',   2, 90000, 'Mumbai'),
(104,'Sneha',   3, 55000, 'Jaipur'),
(105,'Vikram',  2, 30000, 'Pune');

select * from employees;
select * from departments;

select * from departments where dept_id<3;

create view dept_view as  select * from departments where dept_id<3;  	-- we make view table
select * from dept_view;	-- by this we can access 

select * from employees;
create view city_sum as select city,sum(salary) from employees group by city;

select * from city_sum;		 -- view table ko dekha hai

create view emp_2_col as select emp_id,name from employees;
select salary from emp_2_col;		 -- we can access salary column beacuse it is not in view we restrict the view
select * from emp_2_col;

insert into emp_2_col values(107,'ashis');
select * from emp_2_col; 		-- we insert data into view and this changes show in your orignal table also
select * from employees;

update  emp_2_col set emp_id=111
where emp_id=101;
select * from emp_2_col; 

delete from emp_2_col where emp_id=101;
select * from emp_2_col;
select * from employees	;	-- in my orignal table 101 id is delete

-- not update able view
-- if we do task like this aggregate, joins ,windows or any other function non-udateable view

create view new_view as select name,sum(salary) from employees 	group by name;
select * from new_view;

create view new_1_view as select e.name,d.dept_id from employees e join departments d on e.dept_id=d.dept_id;
select * from new_1_view;
update new_1_view set name='rohan'
where name='priya'; 
select * from new_1_view;




 