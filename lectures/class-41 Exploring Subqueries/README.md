# 📊 Employee Database with Subquery

This project demonstrates how to use **SQL subqueries** to analyze employee
salary data across departments. It includes:

- Table creation
- Sample employee data
- A practical subquery use-case

---

## 🧱 Table: `employees`

The `employees` table contains basic information about employees in different
departments.

### Schema:

```sql
CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  employee_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50),
  salary DECIMAL(10, 2),
  hire_date DATE
);
```

## 📥 Sample Data Insert

Sample data includes 30 employees from different departments like HR,
Engineering, Finance, Marketing, and Sales.

```sql
INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES
('Alice Johnson', 'HR', 55000, '2020-03-15'),
('Bob Smith', 'Engineering', 85000, '2019-07-01'),
('Dylan Hughes', 'Marketing', 66000, '2021-07-07');
```

## ❓ Query: Employees Earning More than Finance's Highest Salary

We want to retrieve all employees whose salary is greater than the highest
salary in the Finance department.

Step 1: Find the highest salary in Finance

```sql
SELECT MAX(salary) FROM employees WHERE department_name = 'Finance';
```

## Step 2: Use it as a subquery

```sql
SELECT *
FROM employees
WHERE salary > (
  SELECT MAX(salary)
  FROM employees
  WHERE department_name = 'Finance'
);
```

🔍 This is an example of a scalar subquery — the subquery returns a single value
which is used in the outer `WHERE` condition.
