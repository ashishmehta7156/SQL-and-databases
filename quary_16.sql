create database rjdb;

use rjdb;

CREATE TABLE sales (
    id INT,
    sale_date DATE,
    amount INT
);


INSERT INTO sales VALUES
(1, '2026-01-01', 100),
(2, '2026-01-02', 200),
(3, '2026-01-03', 300),
(4, '2026-01-04', 400),
(5, '2026-01-05', 500);


select * from sales;

-- "lag" show privice row 
select *,lag(sale_date,1) over() from sales;

-- "lead"
select *,lead(amount,1) over() from sales;
select *,lead(amount,1) over(order by amount ) from sales;
select *,lead(amount,1) over(order by amount desc) from sales;

-- "row between"
-- is a clouse in windows function which is used to spicefie the range of rows
-- syntex     --->rows between <starting_boundray> and <end_boundry>

-- 'unbounded preceding' first row  and "unboundad following" last row
select *,sum(amount) over(rows between unbounded preceding and current row) from sales;
-- (rows between 1 preceding  ----> one row + previce row  
select *,sum(amount) over(rows between 1 preceding  and current row) from sales;

select *,sum(amount) over(rows between unbounded preceding  and 1 following) from sales;

