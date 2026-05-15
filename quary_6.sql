-- Q1. Calculate the total revenue (sum of OrderValue) for each product Category.Tables
select category,sum(ordervalue) from sales_data group by category;

-- Q2. Count the total number of orders placed in each Category.
select category,count(orderid) from sales_data group by category;

-- Q3. Find the highest (maximum) single OrderValue within each Category.
sELECT category, max(order_value) from sales_data group by category;

-- Q1. List all unique product Categories that appear in the Sales_Data table.
select distinct categroies  from sales_data group by categroies;

-- Q2. List all unique CustomerIDs who have placed at least one order.
select distinct customer_id from sales_data group by customer_id ;

-- Q3. Find all unique combinations of CustomerID and Category (i.e., which customers bought from which categories). 
select customer_id,category from sales_data group by customer_id,category;

-- Q1
select customer_id,catogry,sum(order_value) from sales_data group by customer_id,catogry;

-- Q2
select customer_id,catogry,count(order_id) from sales_data group by customer_id,catogry;

-- Q3 
select catogry,order_month,sum(order_value) from sales_data group by catogry,order_month;

-- Q1
select catogry,sum(order_value) from sales_data where sum(order_value)>$20000 group by catogry;

-- Q2
select count(customer_id) from sales_data where count(customer_id)>1;

-- Q3
select customer_id,catogry, sum(order_value) from sales_data where sum(order_value)>100000;

 