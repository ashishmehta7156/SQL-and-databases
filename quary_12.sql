-- Create Table
use shadidb;
CREATE TABLE Employees (
EMP_ID INT PRIMARY KEY,
NAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY INT,
MANAGER_ID INT
);

-- Insert Data
INSERT INTO Employees (EMP_ID, NAME, DEPARTMENT, SALARY, MANAGER_ID) VALUES
(101, 'Alice', 'HR', 50000, NULL),
(102, 'Bob', 'IT', 80000, 101),
(103, 'Charlie', 'IT', 75000, 101),
(104, 'Diana', 'Finance', 90000, NULL),
(105, 'Eve', 'HR', 48000, 101),
(106, 'Frank', 'Finance', 95000, 104),
(107, 'Grace', 'IT', 82000, 101);

select * from employees;

select avg(salary) from employees;
select max(salary) from employees;

select * from employees where salary>(select salary from employees where name='alice');

select min(salary) from employees ;
select department from employees where salary<(select min(salary) from employees);

-- in multi row sub quary
-- return more than on one column

select department from employees where name='alice' or name='bob';
select * from employees where department in (select department from employees where name='alice' or name='bob');

select salary from employees where emp_id=103 or emp_id=105;
select * from employees where salary not in (select salary from employees where emp_id=103 or emp_id=105);

-- in multi row sub quary one more operater called 'any'
-- any ya to ye ya to ye ya koise bi ho calegi
select salary from employees where emp_id=103 or emp_id=105;
select * from employees where salary >any (select salary from employees where emp_id=103 or emp_id=105);

select salary from employees where emp_id=103 or emp_id=105;
select * from employees where salary >any (select salary from employees where emp_id=103 or emp_id=105);

select * from employees where salary>any(select salary from employees where department='hr');

select * from employees where salary>all(select salary from employees where department='hr');

select salary from employees where department='it';
select * from employees where salary>all(select salary from employees where department='it');

select * from employees where department='it';


-- find name of a person whos salary is grater than all the salarys of hr or it department
-- find employee id and name of the users whos salary is grater then tthe salary of any employees working under manager of 101
-- find second heighest salary fom this table

select * from employees where department='it';
select * from employees where department='it' and salary >any(select salary from employees where emp_id=101 );

select max(salary) as 'second_salary' from employees where salary<(select max(salary) from employees);
select * from employees where manager_id=101;
select emp_id,name from employees where salary>any(select salary from employees where manager_id=101);