-- joins in sql

create database regexjoin;

use regexjoin;

-- Create first table: customers
CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

-- Insert records into customers
INSERT INTO customers VALUES
(1, 'Amit', 'Delhi'),
(2, 'Priya', 'Mumbai'),
(3, 'Rahul', 'Pune'),
(4, 'Sneha', 'Jaipur'),
(5, 'Karan', 'Chennai');


-- Create second table: orders
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    product_name VARCHAR(50)
);

-- Insert records into orders
-- Duplicate customer_id is present because some customers ordered multiple products
INSERT INTO orders VALUES
(101, 1, 'Laptop'),
(102, 2, 'Mobile'),
(103, 1, 'Keyboard'),
(104, 3, 'Mouse'),
(105, 2, 'Headphones');

select * from orders;
select * from customers;

-- assignment
-- inner joint ,left joint, right joint 

select customers.customer_id,customers.customer_name,orders.product_name from customers
join orders where customers.customer_id=orders.customer_id;

select customers.customer_id,customers.customer_name,orders.customer_id,orders.product_name from customers
join orders on customers.customer_id=orders.customer_id;

-- inner join is a type of join which collect similar values or comman vlaues

 -- left join
 select customers.customer_id,customers.customer_name,orders.customer_id,orders.product_name from customers
left join orders on customers.customer_id=orders.customer_id;

-- left or outer join jo data join nahi kar rha to vaha per null ayega

-- 'is null' is use when we extrat data which is null 
 select customers.customer_id,customers.customer_name,orders.customer_id,orders.product_name from customers
left join orders on customers.customer_id=orders.customer_id where product_name is null;

-- "is not null"  is use when we extrat data which is not null 
 select customers.customer_id,customers.customer_name,orders.customer_id,orders.product_name from customers
left join orders on customers.customer_id=orders.customer_id where product_name is not null;

insert into orders values(106,11,'ice cream');

select customers.customer_id,customers.customer_name,orders.customer_id,orders.product_name from customers
right join orders on customers.customer_id=orders.customer_id;

-- "natural join"
-- me dono tabels ko jodunga but unaka column name same hona caheya
select customers.customer_id,customers.customer_name,orders.customer_id,orders.product_name from customers
natural join orders;

-- "self join" 
-- a table when joined with it self

-- Self join

create database joindb;

use joindb;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    manager_id INT,
    salary INT
);

INSERT INTO employees (emp_id, emp_name, department, manager_id, salary) VALUES
(1, 'Amit', 'Management', NULL, 120000),
(2, 'Neha', 'HR', 1, 75000),
(3, 'Raj', 'IT', 1, 90000),
(4, 'Simran', 'Finance', 1, 85000),
(5, 'Karan', 'IT', 3, 70000),
(6, 'Priya', 'IT', 3, 72000),
(7, 'Rohit', 'HR', 2, 50000),
(8, 'Anjali', 'HR', 2, 52000),
(9, 'Vikas', 'Finance', 4, 65000),
(10, 'Sneha', 'Finance', 4, 62000),
(11, 'Arjun', 'IT', 5, 55000),
(12, 'Pooja', 'IT', 5, 53000),
(13, 'Meera', 'HR', 7, 45000),
(14, 'Dev', 'Finance', 9, 48000),
(15, 'Nitin', 'IT', 6, 51000);


-- don't do this mistack --> employees_id=employees_id wrong , manager_id=manager_id wrong,
-- write to check is employees_id= manager_id 


select * from employees;
select empl.emp_id,empl.emp_name,empl.manager_id from employees as empl;

select empl.emp_id,empl.emp_name,empl.manager_id,mngr.emp_id,mngr.emp_name from employees as empl join employees as mngr where  empl.manager_id=mngr.emp_id;

-- find the employee name and its salary if it is grater than the salary of its manager 

select  e.emp_name,e.salary,m.emp_name,m.salary from employees as e join employees as m where e.manager_id=m.emp_id and e.salary>m.salary;


-- show all the employee name with all the manager name 
-- show employee and its grand manager 
-- find employees who are also the manager

