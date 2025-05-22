CREATE TABLE employees(
  employee_id SERIAL PRIMARY KEY,
  employee_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50),
  salary DECIMAL(10, 2),
  hire_date DATE
)


INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES
('Alice Johnson', 'HR', 55000, '2020-03-15'),
('Bob Smith', 'Engineering', 85000, '2019-07-01'),
('Carol Lee', 'Finance', 72000, '2021-01-20'),
('David Kim', 'Engineering', 95000, '2018-11-10'),
('Eva Brown', 'Marketing', 63000, '2022-06-25'),
('Frank Wilson', 'Sales', 58000, '2020-10-05'),
('Grace Lin', 'HR', 57000, '2021-12-18'),
('Hank Adams', 'Engineering', 99000, '2017-05-30'),
('Ivy Patel', 'Finance', 69000, '2023-02-14'),
('Jack White', 'Marketing', 64000, '2020-04-12'),
('Karen Davis', 'Sales', 60000, '2019-09-09'),
('Leo Thomas', 'HR', 56000, '2023-03-22'),
('Mia Anderson', 'Engineering', 91000, '2021-08-30'),
('Noah Scott', 'Finance', 70000, '2019-11-16'),
('Olivia Turner', 'Marketing', 65000, '2020-02-28'),
('Paul Harris', 'Sales', 59000, '2022-07-08'),
('Quinn Baker', 'Engineering', 88000, '2018-10-23'),
('Rachel Young', 'HR', 54000, '2021-05-03'),
('Steve Hall', 'Finance', 73000, '2020-06-14'),
('Tina Green', 'Marketing', 61000, '2019-12-01'),
('Uma Carter', 'Sales', 57000, '2023-01-09'),
('Victor Reed', 'Engineering', 94000, '2022-03-19'),
('Wendy Murphy', 'HR', 55000, '2020-08-27'),
('Xander Brooks', 'Finance', 68000, '2018-02-17'),
('Yara Bell', 'Marketing', 62000, '2021-11-11'),
('Zane Perry', 'Sales', 60000, '2017-04-04'),
('Amy Richards', 'Engineering', 93000, '2020-09-15'),
('Brian Lopez', 'HR', 57000, '2022-05-26'),
('Chloe Edwards', 'Finance', 71000, '2023-04-03'),
('Dylan Hughes', 'Marketing', 66000, '2021-07-07');


-- Retrive all employees whose salary is greather than the highest salray of the HR department
SELECT max(salary)  FROM employees WHERE department_name = 'Finance'


SELECT * FROM employees WHERE salary > (SELECT max(salary)  FROM employees WHERE department_name = 'Finance');

SELECT *, (SELECT sum(salary) FROM employees) FROM employees;


SELECT * FROM employees ;

SELECT department_name, sum(salary) FROM employees GROUP BY department_name;

SELECT * FROM --outer query/main query
(SELECT department_name, sum(salary) FROM employees GROUP BY department_name) as sum_dept_salary; --subquery


SELECT employee_name, salary, department_name 
FROM employees
WHERE department_name in (SELECT department_name FROM employees WHERE department_name LIKE '%M%')
