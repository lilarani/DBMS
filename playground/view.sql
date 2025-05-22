SELECT * FROM employees;

CREATE View dept_avg_salary
AS
SELECT department_name, avg(salary) FROM employees GROUP BY department_name;

SELECT * FROM dept_avg_salary;

CREATE View test_view
AS
SELECT employee_name, salary, department_name 
FROM employees
WHERE department_name in (SELECT department_name FROM employees WHERE department_name LIKE '%M%')

SELECT * FROM test_view;