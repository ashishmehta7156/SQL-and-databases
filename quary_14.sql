-- windows function
-- windows function is a  type of function which will give you calculation of rows for each row a
-- a window function performe the calculation across a set of rows related to current row without collapsing rows into a single result

use shadidb;
select * from employees;
select avg(salary) from employees;

-- over is a function
select emp_id,name,salary,avg(salary) over() as avg_salary from employees;
select emp_id,name,salary,avg(salary) over() as avg_salary,salary-avg(salary) over() from employees;

select emp_id,name,avg(salary) over(),max(salary) over(),min(salary) over() from employees;

select emp_id,name,salary,sum(salary) over(),
concat(round((salary/sum(salary) over() )*100),'%')
from employees;

select emp_id,name,salary,sum(salary) over(order by salary) from employees;

select emp_id,name,department,salary,sum(salary) over(order by emp_id desc) from employees;

select emp_id,name,department,salary,sum(salary) over(order by department ) from employees;