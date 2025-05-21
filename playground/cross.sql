-- Exploring Full, Cross, and Natural Joins

CREATE Table employees(
emp_id INT,
emp_name VARCHAR(50),
dept_id INT
)

create table departments(
  dept_id INT,
  dept_name VARCHAR(50)
)

-- insert data

INSERT INTO employees VALUES(1, 'Neela', 101);

INSERT INTO employees VALUES(2, 'Ababil', 102);


INSERT INTO departments VALUES(1, 'Human Resoures');

INSERT INTO departments VALUES(1, 'Marketing');

SELECT * FROM employees;

SELECT * FROM departments;

-- CROSS JOIN
SELECT * FROM employees 
CROSS JOIN departments;

-- NATURAL JOIN
SELECT * FROM employees
NATURAL JOIN departments;

