use shadidb;
show tables ;
select * from departments;
select * from employees;
select *,row_number() over(order by salary ),
rank() over(order by salary) from employees;

select *,row_number() over(order by salary ),
rank() over(order by salary),
dense_rank() over(order by salary) from employees;

select *, rank() over(partition by department order by salary) from employees;
select *, dense_rank() over(partition by department order by salary) from employees; 

select * from employees as e
where salary=(select max(salary) from employees where e.department=department); 

select * from 
(select *,max(salary) over(partition by department) as deptsalary from employees) as trh
where salary =deptsalary;

select * from 
(select *,rank() over(partition by department order by salary desc) as `rank` from employees) as temp
where `rank`=1;

-- corelated quary
-- it is also called as depandent sub quary
-- gernaly the outer quary refers nested quary ke andar

-- find who is the person who has the second heighst salary in the table
select * from
(select *, dense_rank() over(order by salary desc) as drank from employees) as xyz
where drank=2;		

-- kabi be interview me second heighst salary nikal ne ha to kabi be 'order by' or 'limit' use nahi karna hai
select name,salary from
(select *, dense_rank() over(order by salary desc) as drank from employees) as xyz
where drank=4;	

select * from employees where salary=
(select max(salary) from employees where salary<(select max(salary) from employees ));

select name,salary from
(select *, dense_rank() over(order by salary desc) as drank from employees) as xyz
where drank=4;	


-- assigment
-- "rows bitween"
-- SQL mein ROWS BETWEEN ka use Window Functions ke andar ek specific "window frame" 
-- (rows ka chhota sa group) decide karne ke liye hota hai.
-- Isse aap database ko batate ho ki current row ke upar ya neeche ki kitni rows ko milakar calculation (jaise running total ya moving average) karni hai.

