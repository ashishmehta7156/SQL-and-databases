use sakila;
select * from employees;

-- Q1: List the names of all employees along with their department names. Show only
-- employees who belong to a department.
select emp_name,dept_name from employees join departments on dept_id=dept_id;

-- Q2: List ALL employees with their department names. If an employee has no department,
-- show NULL for department name.
select emp_name,dept_name from employees left join department on emp_id=dept_id;

-- Q3: Show all departments and the number of employees in each. Include departments with
-- ZERO employees.
select dept_name,count(emp_id) from employees right join department on emp_id=dept_id group by dept_name;

-- Q4: Display each employee's name along with their manager's name. Employees with no
-- manager should show 'No Manager'. 


create database joinpractice;

use joinpractice;


CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    manager_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);



INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Sales');



INSERT INTO employees VALUES
(101, 'Alice', 70000, 1, NULL),
(102, 'Bob', 60000, 2, 101),
(103, 'Charlie', 55000, 2, 102),
(104, 'David', 50000, 3, 101),
(105, 'Eva', 45000, 4, 104),
(106, 'Frank', 75000, 1, 101),
(107, 'Grace', 80000, 2, 102),
(108, 'Helen', 62000, 3, 104),
(109, 'Ian', 47000, 4, 105),
(110, 'Jack', 53000, 2, 102),
(111, 'Kevin', 49000, 3, 104),
(112, 'Laura', 72000, 1, 101),
(113, 'Mike', 58000, 4, 105),
(114, 'Nina', 61000, 2, 107),
(115, 'Oscar', 52000, NULL, 101);


/*
Display employee names along with their department names.
| emp_name | dept_name |
| -------- | --------- |
| Alice    | HR        |
| Bob      | IT        |
| Charlie  | IT        |
| David    | Finance   |
| Eva      | Sales     |
| Frank    | HR        |
| Grace    | IT        |
| Helen    | Finance   |
| Ian      | Sales     |
| Jack     | IT        |
| Kevin    | Finance   |
| Laura    | HR        |
| Mike     | Sales     |
| Nina     | IT        |



Display all employees and their department names, including employees without departments.
| emp_name | dept_name |
| -------- | --------- |
| Alice    | HR        |
| Bob      | IT        |
| Charlie  | IT        |
| David    | Finance   |
| Eva      | Sales     |
| Frank    | HR        |
| Grace    | IT        |
| Helen    | Finance   |
| Ian      | Sales     |
| Jack     | IT        |
| Kevin    | Finance   |
| Laura    | HR        |
| Mike     | Sales     |
| Nina     | IT        |
| Oscar    | NULL      |


Find the number of employees in each department.
| dept_name | total_employees |
| --------- | --------------- |
| HR        | 3               |
| IT        | 5               |
| Finance   | 3               |
| Sales     | 3               |



Display all departments and the total salary paid in each department.
| dept_name | total_salary |
| --------- | ------------ |
| HR        | 217000       |
| IT        | 309000       |
| Finance   | 161000       |
| Sales     | 150000       |




Find how many employees report to each manager.
| manager | team_size |
| ------- | --------- |
| Alice   | 5         |
| Bob     | 4         |
| David   | 4         |
| Eva     | 2         |
| Grace   | 1         |



Display average salary department-wise where average salary is greater than 60000.
| dept_name | avg_salary |
| --------- | ---------- |
| HR        | 72333.33   |
| IT        | 61800      |





*/

select * from employees;
select * from departments;

-- Q1 Display employee names along with their department names.

select e.emp_name,d.dept_name from employees as e join departments as d on e.dept_id=d.dept_id order by e.emp_name;

-- Q2 Display all employees and their department names, including employees without departments.
select e.emp_name,d.dept_name from employees as e left join departments as d on e.dept_id=d.dept_id;

-- Q3 Find the number of employees in each department.
select d.dept_name,count(e.emp_id) from employees as e join departments as d on e.dept_id=d.dept_id group by d.dept_name;

-- Q4 Display all departments and the total salary paid in each department.
select d.dept_name,sum(e.salary) from employees as e join departments as d on e.dept_id=d.dept_id group by d.dept_name;


-- Q5 Find how many employees report to each manager.
select m.emp_name,count(e.emp_name) from employees as e join employees as m on e.manager_id=m.emp_id group by m.emp_name  ;


use sakila;

select * from actor; 		-- actor_id
select * from film_actor;		-- film_id		
select * from film;    -- film_id

-- find forign key and primery key

-- select actor_id and actor full name and film_id
-- get the film id the film title and the actor id
-- find the actor id ,and actor name , and movie he has work
-- find the actor id ,and actor name , and movie he has work only for the movie whos length is grater than '120'
-- get actor id and actor name  and total movie he has work
-- get film title and the number of actor that have work on that film 

select a.actor_id,concat(a.first_name," ",a.last_name),f.film_id from actor as a join film_actor as f on a.actor_id=f.actor_id;

-- Q2 get the film id the film title and the actor id
select f.film_id,fl.title,f.actor_id from film_actor as f join film as fl on f.film_id=fl.film_id ;

-- Q3
select a.actor_id,a.first_name,f.title from actor as a join  film as f on film_id=actor_id ;































