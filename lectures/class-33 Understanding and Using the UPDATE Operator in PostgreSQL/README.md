# 📘 Class-33: Understanding and Using the `UPDATE` Operator in PostgreSQL

This guide covers how to use the `UPDATE` statement in PostgreSQL to modify
existing records in a table. It includes syntax, examples, and best practices.

---

## 🔧 What is the `UPDATE` Statement?

The `UPDATE` statement is used to **modify existing rows** in a table. It allows
you to change one or more columns for all or selected rows using conditions.

---

## 🧠 Basic Syntax

```sql
UPDATE table_name
SET column1 = value1,
    column2 = value2,
WHERE condition;
```

- `table_name`: The table you want to update.

- `SET`: Defines which columns to modify and their new values.

- `WHERE`: Specifies which rows to update. Important: Without a `WHERE` clause,
  all rows will be updated.

## 📌 Examples

✅ Update a Single Column

```sql
UPDATE students
SET grade = 'A'
WHERE student_id = 101;
```

## ✅ Update Multiple Columns

```sql
UPDATE employees
SET salary = 60000,
    department = 'HR'
WHERE id = 5;
```

##⚠️ Update All Rows (Use Carefully)

```sql

UPDATE products
SET status = 'inactive';
```

## 🔍 Best Practices

Always use a `WHERE` clause to avoid unintended bulk updates.

Test your `UPDATE` statement with a `SELECT` query first.

Use transactions (`BEGIN`, `COMMIT`, `ROLLBACK`) for critical updates.

## 📚 Summary

- `UPDATE` is a powerful statement used to modify existing records.

- Always double-check your conditions.

- Use transactions to avoid accidental data loss.
