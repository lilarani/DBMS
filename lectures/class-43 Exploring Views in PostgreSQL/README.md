## 📘 Understanding and Using SQL VIEW

This document provides a detailed explanation of SQL VIEWs — what they are, why
we use them, and how they can help in your project.

---

## 🔍 What is a VIEW?

A **VIEW** is a virtual table based on a SQL `SELECT` query. It doesn't store
data itself but shows data derived from one or more tables through a query.

---

## ✅ Why Use a VIEW?

### 1️⃣ Reusability of Queries

Once a VIEW is created using a complex query, it can be reused multiple times
with a simple `SELECT`.

```sql
CREATE VIEW dept_avg_salary AS
SELECT department_name, AVG(salary)
FROM employees
GROUP BY department_name;

-- Now you can simply use:
SELECT * FROM dept_avg_salary;
```

## 2️⃣ Simplifying Complex Queries

Nested or long queries can be shortened and made more readable using a VIEW.

```sql
CREATE VIEW test_view AS
SELECT employee_name, salary, department_name
FROM employees
WHERE department_name IN (
    SELECT department_name FROM employees WHERE department_name LIKE '%M%'
);

-- Then you can just:
SELECT * FROM test_view;
```

## 3️⃣ Data Security and Privacy

With VIEWs, you can restrict access to specific columns or rows, hiding
sensitive data from certain users.

## 4️⃣ Clean Interface for Frontend

VIEWs can simplify the data structure exposed to frontend applications (e.g.,
React/Next.js), making development cleaner and less error-prone.

## 📌 Where Can VIEWs Be Used?

| Use Case              | Description                                  |
| --------------------- | -------------------------------------------- |
| Reporting             | Example: average salary per department       |
| Role-based access     | Show filtered data based on user permissions |
| Hiding sensitive data | Only expose selected columns in the VIEW     |
| Dashboard displays    | Show summarized reports or charts easily     |

## 🛠️ Example Queries

```sql
-- View all employees
SELECT * FROM employees;

-- Create a VIEW for average salary by department
CREATE VIEW dept_avg_salary AS
SELECT department_name, AVG(salary)
FROM employees
GROUP BY department_name;

-- Create a VIEW for employees in departments containing 'M' in their name
CREATE VIEW test_view AS
SELECT employee_name, salary, department_name
FROM employees
WHERE department_name IN (
    SELECT department_name FROM employees WHERE department_name LIKE '%M%'
);
```

## 📚 Summary

Using SQL VIEWs helps in:

- Making queries reusable and readable

- Reducing complexity

- Controlling data access

- Customizing output for different users or applications
