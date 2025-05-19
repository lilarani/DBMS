## Expanding on the ALTER Keyword for Table Modification

## 🔧 Create Table

```sql
CREATE TABLE person2 (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  age INTEGER
);
```

```sql
SELECT * FROM person2;

```

## ➕ Add Column

```sql
ALTER TABLE person2
ADD COLUMN address VARCHAR(50);
```

## 📝 Insert Data

```sql
INSERT INTO person2 VALUES (2, 'Rima', 'rima@gmail.com', 23, 'Dinajpur');
INSERT INTO person2 VALUES (4, 'Ababil', 'ababil@gmail.com', 22, 'Vhaduria');
```

## ❌ Delete Column

```sql
ALTER TABLE person2
DROP COLUMN address;
```

## ✏️ Rename Column

```sql
ALTER TABLE person2
RENAME COLUMN age TO user_age;
```

## 🔄 Change Column Type

```sql
ALTER TABLE person2
ALTER COLUMN name TYPE VARCHAR(60);
```

## 🔐 Add Constraint

```sql
ALTER TABLE person2
ALTER COLUMN user_age SET NOT NULL;
```

## 🔓 Remove Constraint

```sql
ALTER TABLE person2
ALTER COLUMN user_age DROP NOT NULL;
```

## 📌 Notes

-Make sure to run the `CREATE TABLE` statement before any other commands.

-Always use `ALTER TABLE` to modify table structure safely.

-For any `NOT NULL` constraint on existing columns, make sure all rows contain
non-null values first.
