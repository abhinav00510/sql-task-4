create database employee;
use employee;

create table employees(
	id int primary key,
    name varchar(50),
    department varchar(50),
    salary int,
    sales int
);

insert into employees(id ,name, department, salary, sales) Values
(1, 'Amit','HR', 50000, 5),
(2, 'Priya','HR', 30000, 7),
(3, 'Ramesh','IT', 40000, 9),
(4, 'Sartaj','Finance', 63000, 11),
(5, 'Bhatiya','HR', 80000, 8),
(6, 'Jaswinder','Marketing', 45000, 12),
(7, 'Abhinav','Marketing', 55000, 14),
(8, 'Rupesh','IT', 67000, 7);

select department, SUM(salary) as total_salary
from employees
group by department;

select department , avg(salary) as avg_salary
from employees
group by department;

select department, count(*) as total_employee
from employees
group by department;

select department, min(salary) as lowest_salary, max(salary) as highest_salary
from employees
group by department ;

select department , sum(salary) as total_salary
from employees
group by department
having sum(salary) > 150000;

select count(*) as all_rows from employees;
select count(sales) as rows_sales from employees;

select department , sales, sum(salary) as total_salary
from employees
group by department , sales;

select department , round(avg(salary), 2) as rounded_avg_salary
from employees
group by department