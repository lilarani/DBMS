# 📘 Understanding SQL Subqueries & Clauses

This guide explains what **SQL Subqueries** and **Clauses** are, when to use
them, and how they work with real examples.

---

## 🔍 What is a Clause?

In SQL, a **clause** is a part of a query that performs a specific task — like
selecting data, filtering rows, or grouping results.

### ✨ Common SQL Clauses:

| Clause     | Purpose                           | Example                      |
| ---------- | --------------------------------- | ---------------------------- |
| `SELECT`   | Which columns to return           | `SELECT name, salary`        |
| `FROM`     | Which table to query from         | `FROM employees`             |
| `WHERE`    | Filter rows based on conditions   | `WHERE salary > 50000`       |
| `GROUP BY` | Group rows based on column values | `GROUP BY department_name`   |
| `HAVING`   | Filter groups after grouping      | `HAVING AVG(salary) > 60000` |
| `ORDER BY` | Sort the result set               | `ORDER BY hire_date DESC`    |
| `LIMIT`    | Limit number of returned rows     | `LIMIT 5`                    |

---

## 🧠 What is a Subquery?

A **subquery** is a query inside another query. It helps in solving complex SQL
problems by breaking them into smaller pieces.

```sql
SELECT *
FROM employees
WHERE salary > (
  SELECT AVG(salary) FROM employees
);
```

Here, the inner query is a subquery that finds the average salary. The outer
query uses that to find employees earning more than average.

## 🧩 Using Subqueries in Different Clauses

1. 🔹 In SELECT Clause Add an extra calculated column.

```sql
SELECT employee_name, salary,
       (SELECT SUM(salary) FROM employees) AS total_company_salary
FROM employees;
```

## 2. 🔹 In FROM Clause

Create a virtual table to work with.

```sql
SELECT department_name, avg_salary
FROM (
  SELECT department_name, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_name
) AS dept_avg;
```

## 3. 🔹 In WHERE Clause

Use a subquery to filter data dynamically.

```sql
SELECT *
FROM employees
WHERE salary > (
  SELECT MAX(salary)
  FROM employees
  WHERE department_name = 'HR'
);
```

## 4. 🔹 In HAVING Clause

Use subquery with grouped data.

```sql
SELECT department_name, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_name
HAVING AVG(salary) > (
  SELECT AVG(salary) FROM employees
);
```

## 5. 🔹 In INSERT, UPDATE, DELETE

INSERT with subquery

```sql
INSERT INTO high_paid_employees (employee_name, salary)
SELECT employee_name, salary
FROM employees
WHERE salary > (
  SELECT AVG(salary) FROM employees
);
```

## 🧠 When to Use Subqueries?

Use subqueries when:

- You need results from one query to use inside another

- You want to compare against aggregate values (like AVG, MAX, etc.)

- You want to simplify complex logic step by step

## ✅ Summary

- Clauses build the structure of SQL queries.

- Subqueries help answer complex questions inside different parts of your main
  query.

- You can use subqueries inside SELECT, FROM, WHERE, HAVING, and even in
  INSERT/UPDATE/DELETE.
