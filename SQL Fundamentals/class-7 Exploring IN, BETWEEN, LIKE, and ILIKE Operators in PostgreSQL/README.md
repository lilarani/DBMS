# 🔎 IN, BETWEEN, LIKE, and ILIKE Operators in PostgreSQL

This document explains four powerful filtering tools in PostgreSQL:

- `IN`
- `BETWEEN`
- `LIKE` (Case-Sensitive)
- `ILIKE` (Case-Insensitive)

---

## 📌 1. `IN` Operator

The `IN` operator checks whether a value exists in a specified list.

```sql
SELECT * FROM student2
WHERE country NOT IN ('Bangladesh', 'Pakistan');
```

📌 This query fetches students whose country is **not Bangladesh or Pakistan**.

---

## 📌 2. `BETWEEN` Operator

The `BETWEEN` operator is used to filter values within a given range
(inclusive).

### Example: Filter by age range

```sql
SELECT * FROM student2
WHERE age BETWEEN 20 AND 22;
```

📌 Returns students whose age is between **20 and 22** (inclusive).

### Example: Filter by date of birth

```sql
SELECT * FROM student2
WHERE dob BETWEEN '2004-04-01' AND '2005-07-04';
```

📌 Returns students born between **April 1, 2004** and **July 4, 2005**.

---

## 📌 3. `LIKE` Operator (Case-Sensitive)

`LIKE` is used to match text patterns using wildcards.

- `%` → Zero or more characters
- `_` → Exactly one character

```sql
-- Names ending with 'a'
SELECT * FROM student2
WHERE first_name LIKE '%a';

-- Names where the second letter is 'i'
SELECT * FROM student2
WHERE first_name LIKE '_i%';
```

📌 `LIKE` is **case-sensitive** in PostgreSQL.

---

## 📌 4. `ILIKE` Operator (Case-Insensitive)

`ILIKE` is the case-insensitive version of `LIKE`.

```sql
SELECT * FROM student2
WHERE first_name ILIKE 'r%';
```

📌 Returns students whose first name starts with **'r' or 'R'**.

---

## 🧾 Summary Table

| Operator          | Description                           |
| ----------------- | ------------------------------------- |
| `IN (...)`        | Checks if a value is in a given list  |
| `BETWEEN x AND y` | Checks if a value is within a range   |
| `LIKE`            | Case-sensitive pattern matching       |
| `ILIKE`           | Case-insensitive pattern matching     |
| `%`               | Wildcard for any number of characters |
| `_`               | Wildcard for a single character       |
