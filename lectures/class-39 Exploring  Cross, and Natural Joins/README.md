# 📘 Exploring SQL Joins: CROSS, and NATURAL Joins

This project demonstrates different types of SQL joins (`CROSS JOIN`,
`NATURAL JOIN`) using two tables: `employees` and `departments`.

---

## 📑 Table Structure

### 👩‍💼 Table: `employees`

| Column   | Type        | Description                          |
| -------- | ----------- | ------------------------------------ |
| emp_id   | INT         | Employee ID                          |
| emp_name | VARCHAR(50) | Employee Name                        |
| dept_id  | INT         | Foreign key to `departments.dept_id` |

### 🏢 Table: `departments`

| Column    | Type        | Description     |
| --------- | ----------- | --------------- |
| dept_id   | INT         | Department ID   |
| dept_name | VARCHAR(50) | Department Name |

---

## 🔄 JOIN Types and Their Use Cases

1. 🔁 CROSS JOIN

```sql
SELECT * FROM employees
CROSS JOIN departments;
```

Purpose: Returns the Cartesian product of both tables — every row in `employees`
is combined with every row in `departments`.

Use Case: Useful when:

- You want all possible combinations of two datasets.

- For example: generating reports like “every employee with every department”.

## 2. 🌿 NATURAL JOIN

```sql
SELECT * FROM employees
NATURAL JOIN departments;
```

Purpose:

Automatically joins tables on columns with the same name and compatible types
(e.g., `dept_id` in both tables).

Use Case:

- When you want to simplify the JOIN without specifying the ON condition.

- ⚠️ Both tables must contain at least one column with the same name.

In This Case:

No output will appear unless there is a matching `dept_id` (e.g., both have
`dept_id = 1`).

## ✅ Summary of Join Types

| Join Type    | Description                                                 | When to Use                               |
| ------------ | ----------------------------------------------------------- | ----------------------------------------- |
| CROSS JOIN   | All possible combinations of rows                           | When comparing every row from both tables |
| NATURAL JOIN | Joins using common column names automatically               | When columns are named the same & matched |
| FULL JOIN    | All data from both tables; unmatched rows shown with `NULL` | When you want to retain all data          |

## 💡 Notes

- Always check that column names match when using `NATURAL JOIN`.

- Prefer `INNER JOIN` or `FULL JOIN` if you want more control.

- Be careful with `CROSS JOIN` as it can produce a huge result set if tables are
  large.
