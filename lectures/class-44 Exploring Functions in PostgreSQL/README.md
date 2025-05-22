## 🧠 Exploring Functions in PostgreSQL

This project demonstrates the use of **procedural** and **non-procedural**
approaches in PostgreSQL for managing employee data using user-defined
functions.

---

## 📌 Approaches

### 🟢 Procedural Approach (`PL/pgSQL`, `PL/Python`, etc.)

- **Language Support:** Procedural languages like `PL/pgSQL`, `PL/Perl`,
  `PL/Python` are supported.
- **Complex Logic:** Allows for use of `IF`, `LOOP`, `EXCEPTION`, etc., enabling
  complex logic.
- **Variable Support:** Variables can be declared and used.
- **Stored Procedures/Functions:** Supports advanced stored procedures and
  reusable logic blocks.

### 🔵 Non-Procedural Approach (`SQL`)

- **Declarative Queries:** Focuses on **what** data is needed, not **how** to
  get it.
- **Simplicity:** Straightforward and easy to read/write.
- **SQL Functions:** Consist of a single SQL statement.
- **Performance:** Optimized for simple operations with efficient query
  planning.

---

## ⚙️ SQL Functions

## 📋 Employee Data Table

| ID  | Name          | Department  | Salary   | Hire Date  |
| --- | ------------- | ----------- | -------- | ---------- |
| 1   | Alice Johnson | HR          | 55000.00 | 2020-03-15 |
| 2   | Bob Smith     | Engineering | 85000.00 | 2019-07-01 |
| 3   | Carol Lee     | Finance     | 72000.00 | 2021-01-20 |
| 4   | David Kim     | Engineering | 95000.00 | 2018-11-10 |
| 5   | Eva Brown     | Marketing   | 63000.00 | 2022-06-25 |
| 6   | Frank Wilson  | Sales       | 58000.00 | 2020-10-05 |
| 7   | Grace Lin     | HR          | 57000.00 | 2021-12-18 |
| 8   | Hank Adams    | Engineering | 99000.00 | 2017-05-30 |
| 9   | Ivy Patel     | Finance     | 69000.00 | 2023-02-14 |
| 10  | Jack White    | Marketing   | 64000.00 | 2020-04-12 |
| 11  | Karen Davis   | Sales       | 60000.00 | 2019-09-09 |
| 12  | Leo Thomas    | HR          | 56000.00 | 2023-03-22 |
| 13  | Mia Anderson  | Engineering | 91000.00 | 2021-08-30 |
| 14  | Noah Scott    | Finance     | 70000.00 | 2019-11-16 |
| 15  | Olivia Turner | Marketing   | 65000.00 | 2020-02-28 |
| 16  | Paul Harris   | Sales       | 59000.00 | 2022-07-08 |
| 17  | Quinn Baker   | Engineering | 88000.00 | 2018-10-23 |
| 18  | Rachel Young  | HR          | 54000.00 | 2021-05-03 |
| 19  | Steve Hall    | Finance     | 73000.00 | 2020-06-14 |
| 20  | Tina Green    | Marketing   | 61000.00 | 2019-12-01 |

### 1️⃣ Count Employees

```sql
CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT COUNT(*) FROM employees
$$;


SELECT emp_count();
```

## 2️⃣ Delete Specific Employee (Hardcoded)

```sql
CREATE FUNCTION delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE employee_id = 10
$$;

-- call
SELECT delete_emp();

```

## 3️⃣ Delete Employee by Parameter

```sql
CREATE OR REPLACE FUNCTION emp_delete(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE employee_id = p_emp_id
$$;

-- call
SELECT emp_delete(19);

```

## 📚 Notes

- The above examples use non-procedural SQL functions, best suited for simple
  operations.

- For advanced error handling, conditional logic, and logging, consider using
  LANGUAGE plpgsql.
