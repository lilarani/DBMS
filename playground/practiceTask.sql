CREATE Table employees(
  employee_id SERIAL PRIMARY KEY,
  employee_name VARCHAR(50),
  department_id INT REFERENCES departments(department_id),
  salary DECIMAL(10, 2),
  hire_date DATE
)



create TABLE departments(
  department_id SERIAL PRIMARY KEY,
  department_name VARCHAR(50)
);

INSERT INTO employees ( employee_name, department_id, salary, hire_date) VALUES
('Neela', 1, 55000.00, '2023-06-15'),
('Ababil', 2, 47000.50, '2022-11-03'),
('Tulshi', 3, 68000.75, '2021-09-20'),
('Hayat', 4, 72000.00, '2020-01-10'),
('Tupma', 2, 49000.25, '2024-02-28'),
('Rafiq', 5, 52000.00, '2023-04-01'),
('Mitali', 6, 46000.75, '2022-07-15'),
('Tanvir', 7, 61000.20, '2021-12-30'),
('Shama', 8, 53000.00, '2020-10-12'),
('Nabil', 9, 70000.40, '2024-03-19'),
('Jui', 10, 69000.90, '2023-08-25'),
('Sajib', 11, 48000.60, '2022-05-17'),
('Lubna', 12, 51000.35, '2023-01-10'),
('Farhan', 13, 75000.00, '2021-06-01'),
('Sumaiya', 14, 54000.80, '2024-04-05');

INSERT INTO departments ( department_name) VALUES 
( 'Human Resources'),
( 'Marketing'),
( 'Engineering'),
( 'Finance'),
( 'Sales'),
( 'Customer Support'),
( 'IT Services'),
( 'Logistics'),
( 'Legal'),
( 'Research and Development'),
( 'Procurement'),
( 'Public Relations'),
( 'Business Strategy'),
( 'Training and Development');


SELECT * FROM departments;
SELECT * FROM employees;


-- inner join to retrieve employee and department information.
SELECT * FROM employees
JOIN  departments ON employees.department_id = departments.department_id;

SELECT * FROM employees 
JOIN departments USING(department_id);

-- show department name with average salary.
SELECT department_name, round(avg(salary)) FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;


-- count employees in each department
SELECT department_name, count(*) FROM employees
JOIN departments USING(department_id)
GROUP BY department_name

-- find the department name with the highest average salary.
SELECT department_name, round(avg(salary)) as avg_salary FROM employees
JOIN departments USING(department_id)
GROUP BY department_name
ORDER BY  avg_salary DESC
LIMIT 1


-- count employees hired each year

SELECT extract(year FROM hire_date) as hire_year, count(*) FROM employees
GROUP BY hire_year


-- queary practice part 3

CREATE Table orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10, 2)
)


INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2022-08-01', 150.75),
(3, '2025-03-02', 89.99),
(2, '2022-02-03', 220.50),
(1, '2025-05-04', 45.00),
(5, '2022-03-05', 310.00),
(1, '2025-05-06', 125.25),
(3, '2020-05-07', 60.00),
(4, '2021-06-08', 199.99),
(2, '2025-05-09', 75.45),
(4, '2023-09-10', 430.10);




-- Find customers who have placed more than 2 orders and calculate the total amount spent by each of these customers.
SELECT customer_id, count(order_id) FROM orders
GROUP BY customer_id
HAVING count(order_id) > 2

-- Find the total amount of orders placed each month in the year 2022.
SELECT extract(month FROM order_date) as month , sum(total_amount) FROM orders WHERE extract(year from order_date ) = 2022
GROUP BY month;

SELECT * FROM orders;


