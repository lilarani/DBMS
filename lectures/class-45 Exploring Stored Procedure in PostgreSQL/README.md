# 🚀 Exploring Stored Procedure in PostgreSQL

This project demonstrates how to use **Stored Procedures** in PostgreSQL to
perform common database operations like DELETE, along with key differences from
functions.

---

## 📚 What is a Stored Procedure?

A **Stored Procedure** is a precompiled set of SQL statements stored in the
database, which can be executed (called) to perform a task such as inserting,
updating, deleting, or validating data.

> **Bangla:** Stored Procedure হলো ডেটাবেজের মধ্যে সংরক্ষিত এমন একটি কোড ব্লক
> যেটা একবার তৈরি করে বারবার ব্যবহার করা যায়।

---

## 🔧 Benefits of Stored Procedures

| 🔹 Feature      | ✅ Benefit                              |
| --------------- | --------------------------------------- |
| Reusability     | Write once, use many times              |
| Performance     | Runs directly in DB server              |
| Security        | Controls access through procedure logic |
| Maintainability | Makes code cleaner and modular          |

---

## 🛠️ Creating a Stored Procedure in PostgreSQL

### ✅ Syntax:

```sql
CREATE PROCEDURE procedure_name(parameters)
LANGUAGE plpgsql
AS $$
BEGIN
    -- SQL statements
END;
$$;
```

## 🧪 Procedure Code

Creating a stored procedure to remove employee by ID

```sql
CREATE OR REPLACE PROCEDURE remove_emp(emp_id INT)
LANGUAGE plpgsql
AS
$$
DECLARE
    test_var INT;  -- Variable to temporarily store the employee ID
BEGIN
    -- Get the employee id and store in variable
    SELECT employee_id INTO test_var FROM employees WHERE employee_id = emp_id;

    -- Delete the employee with that ID
    DELETE FROM employees WHERE employee_id = test_var;

    -- Show a success message
    RAISE NOTICE 'Employee removed successfully';
END;
$$;
```

## ▶️ How to Use

Call the procedure using:

```sql
CALL remove_emp(27);
```

✅ If employee ID 27 exists, the employee will be removed from the employees
table.

## 🔹 Non-Procedural Example (Simple DELETE Query)

-- সরাসরি ডিলিট করা employee_id 27 যাদের

```sql
 DELETE FROM employees WHERE employee_id = 27;
```
