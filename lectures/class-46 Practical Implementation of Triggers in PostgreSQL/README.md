## 🧠 What is a Trigger?

A trigger is a database object in PostgreSQL (and other database systems) that
automatically executes a specified function in response to table-level or
database-level events such as `INSERT`, `UPDATE`, `DELETE`, or `TRUNCATE`.

## 1. Create main user table

```sql
CREATE TABLE my_users(
  user_name VARCHAR(50),
  email VARCHAR(100)
);
```

2. Insert sample data

```sql
INSERT INTO my_users VALUES
('Neela', 'neela@gmail.com'),
('Ababil', 'ababil@gmail.com');
```

## 3. Create audit table

```sql
CREATE TABLE deleted_users_audit (
  deleted_user_name VARCHAR(50),
  deletedAt TIMESTAMP
);
```

## 4. Create trigger function

```sql
CREATE OR REPLACE FUNCTION save_delete_user()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
  INSERT INTO deleted_users_audit VALUES (OLD.user_name, now());
  RAISE NOTICE 'Deleted user audit log created';
  RETURN OLD;
END;
$$;
```

## 5. Create trigger

```sql
CREATE TRIGGER save_deleted_user_trigger
BEFORE DELETE
ON my_users
FOR EACH ROW
EXECUTE FUNCTION save_delete_user();
```

6. Delete a user to trigger the action

```sql
DELETE FROM my_users WHERE user_name = 'Neela';
```

## 💡 Notes

- This example uses BEFORE DELETE to make sure the audit log is captured before
  the row is permanently removed.

- The function uses OLD to access the row being deleted.
