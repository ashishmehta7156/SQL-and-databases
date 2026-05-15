CREATE TABLE sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    region VARCHAR(50),
    product VARCHAR(50),
    sales_person VARCHAR(50),
    amount DECIMAL(10,2),
    sale_date DATE
);

INSERT INTO sales (region, product, sales_person, amount, sale_date) VALUES
('North', 'Laptop', 'Amit', 55000, '2025-01-05'),
('North', 'Mobile', 'Amit', 20000, '2025-01-06'),
('South', 'Laptop', 'Ravi', 60000, '2025-01-07'),
('East', 'Tablet', 'Suman', 15000, '2025-01-08'),
('West', 'Laptop', 'Neha', 58000, '2025-01-09'),

('North', 'Tablet', 'Amit', 12000, '2025-01-10'),
('South', 'Mobile', 'Ravi', 22000, '2025-01-11'),
('East', 'Laptop', 'Suman', 50000, '2025-01-12'),
('West', 'Tablet', 'Neha', 14000, '2025-01-13'),
('North', 'Laptop', 'Amit', 57000, '2025-01-14'),

('South', 'Tablet', 'Ravi', 13000, '2025-01-15'),
('East', 'Mobile', 'Suman', 21000, '2025-01-16'),
('West', 'Laptop', 'Neha', 61000, '2025-01-17'),
('North', 'Mobile', 'Amit', 19000, '2025-01-18'),
('South', 'Laptop', 'Ravi', 62000, '2025-01-19'),

('East', 'Tablet', 'Suman', 16000, '2025-01-20'),
('West', 'Mobile', 'Neha', 23000, '2025-01-21'),
('North', 'Tablet', 'Amit', 11000, '2025-01-22'),
('South', 'Mobile', 'Ravi', 25000, '2025-01-23'),
('East', 'Laptop', 'Suman', 52000, '2025-01-24'),

('West', 'Tablet', 'Neha', 13500, '2025-01-25'),
('North', 'Laptop', 'Amit', 59000, '2025-01-26'),
('South', 'Tablet', 'Ravi', 12500, '2025-01-27'),
('East', 'Mobile', 'Suman', 20500, '2025-01-28'),
('West', 'Laptop', 'Neha', 60000, '2025-01-29'),

('North', 'Mobile', 'Amit', 21000, '2025-01-30'),
('South', 'Laptop', 'Ravi', 63000, '2025-01-31'),
('East', 'Tablet', 'Suman', 17000, '2025-02-01'),
('West', 'Mobile', 'Neha', 24000, '2025-02-02'),
('North', 'Tablet', 'Amit', 12500, '2025-02-03'),

('South', 'Mobile', 'Ravi', 26000, '2025-02-04'),
('East', 'Laptop', 'Suman', 54000, '2025-02-05'),
('West', 'Tablet', 'Neha', 15000, '2025-02-06'),
('North', 'Laptop', 'Amit', 61000, '2025-02-07'),
('South', 'Tablet', 'Ravi', 14000, '2025-02-08');

select * from sales;
select sum(amount) from sales ;
select sum(amount) from sales where product='mobile';

-- find total sales and avg sales for north  region but for the product laptop and mobile
select sum(amount),avg(amount) from sales where region='north' and (product='laptop' or product='mobile');

-- find max amount and min amount for febrary month 
select max(amount),min(amount) , month (sale_date) from sales where month(sale_date)=2;

-- find the total sales we have done for each region 
-- find avg sales done by each persion
-- find total amount and total sale each product but  amit shoud not be the sales persion 
-- find the num of sales for each persion greater than 10,000
--  find num of transiction done from day 1 to day 7 for any month
-- find total amount and avg amount and max amount for each product for each region
--  find the total transiton amount for each product where the produt should be sold more than 13 times

select sum(amount),region from sales group by region;
select avg(amount),sales_person from sales group by sales_person;

select sum(amount),count(sales_person),sales_person from sales where sales_person!='amit' group by sales_person;

select sales_person,count(sales_person) from sales  where amount>=10000 group by sales_person ;

use sakila;
select * from sales;

select product,sum(amount) from sales where sum(amount)>200000 group by product; -- error dega
-- where close is used filter the data on the table
-- where close can't be apply on aggregate function

-- important 
-- having is used with the group by 

select product,sum(amount) from sales where sum(amount)>200000 group by product; -- error dega
select product,sum(amount) from sales group by product having sum(amount)>200000;

-- find how many sales done by each person

select sales_person,count(*) from sales group by sales_person having count(*)>8 ;

-- find total transction done by each person in the dicresing order
select sales_person,count(amount) from sales group by sales_person;
select sales_person,count(amount),product from sales group by sales_person,product;

select year(payment_date),month(payment_date),sum(amount) from payment group by year(payment_date),month(payment_date);








