# 🧮 SQL Scalar & Aggregate Functions

This section explains two important categories of SQL functions used for data
processing:

---

## ✳️ What are Scalar Functions?

> **Scalar functions** operate on a **single value** and return a **single
> value** as output. These are useful in formatting or transforming individual
> column values.

---

### 📌 Common Scalar Functions

| Function      | Description                                  |
| ------------- | -------------------------------------------- |
| `UPPER()`     | Converts a string to **uppercase**           |
| `LOWER()`     | Converts a string to **lowercase**           |
| `CONCAT()`    | Concatenates two or more strings             |
| `LENGTH()`    | Returns the number of characters in a string |
| `SUBSTRING()` | Extracts a portion of a string               |
| `TRIM()`      | Removes leading and trailing spaces          |
| `REPLACE()`   | Replaces part of a string with another       |

---

### 🧪 Scalar Function Examples

```sql
-- Convert first name to uppercase
SELECT UPPER(first_name), * FROM student2;

-- Convert first name to lowercase
SELECT LOWER(first_name) FROM student2;

-- Concatenate first and last name
SELECT CONCAT(first_name, ' ', last_name) FROM student2;

-- Get the length of the last name
SELECT LENGTH(last_name) FROM student2;
```

---

## 🧱 What are Aggregate Functions?

> **Aggregate functions** work on a **set of rows** and return a **single
> summary value**, such as total, average, minimum, or maximum.

---

### 📌 Common Aggregate Functions

| Function         | Description                                               |
| ---------------- | --------------------------------------------------------- |
| `COUNT()`        | Returns the number of rows                                |
| `SUM()`          | Calculates the sum of values                              |
| `AVG()`          | Calculates the average value                              |
| `MIN()`          | Returns the minimum value                                 |
| `MAX()`          | Returns the maximum value                                 |
| `GROUP_CONCAT()` | Combines multiple row values into one string (MySQL only) |

---

### 🧪 Aggregate Function Examples

```sql
-- Average age of all students
SELECT AVG(age) FROM student2;

-- Maximum age in the table
SELECT MAX(age) FROM student2;

-- Minimum age in the table
SELECT MIN(age) FROM student2;

-- Count total number of students
SELECT COUNT(*) FROM student2;
```
