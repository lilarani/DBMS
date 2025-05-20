# 📘 SQL Queries on `student2` Table

This document contains SQL queries executed on the `student2` table, along with
explanations of what each query does. These queries demonstrate the use of
`GROUP BY`, aggregate functions, and `HAVING` clauses.

---

## Table student2

| id  | name   | age | dob        | country    |
| --- | ------ | --- | ---------- | ---------- |
| 1   | Alice  | 20  | 2004-06-15 | Bangladesh |
| 2   | Bob    | 22  | 2002-11-23 | India      |
| 3   | Clara  | 19  | 2005-01-10 | Bangladesh |
| 4   | David  | 24  | 2001-09-05 | Nepal      |
| 5   | Emma   | 21  | 2003-03-30 | India      |
| 6   | Faisal | 18  | 2006-12-01 | Bangladesh |
| 7   | Grace  | 23  | 2002-07-14 | Nepal      |
| 8   | Harry  | 20  | 2004-04-22 | Bangladesh |
| 9   | Isha   | 25  | 2000-05-08 | India      |
| 10  | John   | 17  | 2007-08-19 | Nepal      |

## 🔍 1. View All Student Records

```sql
SELECT * FROM student2;
```

## 📊 2. Count and Average Age by Country

```sql
SELECT country, count(*), avg(age)
FROM student2
GROUP BY country;
```

🔸 For each country, this query shows:

- Total number of students `(count(*))`
- Average age of students `(avg(age))`

## 🧮 3. Countries with Average Age Greater Than 12

```sql
SELECT country, count(*), avg(age)
FROM student2
GROUP BY country
HAVING avg(age) > 12;
```

🔸 Returns only those countries where the average age of students is greater
than 12.

- 📝 `HAVING `is used because `avg(age)` is an aggregate value and cannot be
  filtered with `WHERE`.

## Filter groups using HAVING to show only countries with average age above 20.

```sql
SELECT country, count(*), avg(age)
FROM student2
GROUP BY country
HAVING avg(age) > 20;
```

## 📅 5. Count Students by Birth Year

```sql
SELECT extract(year from dob) as birth_year, count(*)
FROM student2
GROUP BY birth_year;
```

🔸 Extracts the year from the `dob` (date of birth) column and counts how many
students were born in each year.

📌 Example: If 3 students were born in 2005, then the result would include
`birth_year = 2005` and `count = 3`.

## 📌 Tips:

- Use `GROUP BY` to group data based on a column for summarization.

- Use `HAVING` to filter grouped data based on aggregate values.

- Use `WHERE` to filter rows before grouping.
