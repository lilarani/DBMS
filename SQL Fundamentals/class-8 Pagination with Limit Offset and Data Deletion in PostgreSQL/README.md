# PostgreSQL Pagination and Data Deletion Example

This document explains how to perform pagination using `LIMIT` and `OFFSET` in
PostgreSQL, along with an example of deleting data from a table.

## Table: `student2`

Assume we have a table named `student2` with student data.

---

## Selecting All Data

To select all rows from the table:

```sql
SELECT * FROM student2;
```

## 2. Limit Results

Retrieve a limited number of rows:

```sql
SELECT * FROM student2 LIMIT 5;
```

## 3. Filter with Limit

Get limited rows based on a condition:

```sql

SELECT * FROM student2
WHERE country IN ('Bangladesh', 'Pakistan')
LIMIT 4;
```

## 4. Pagination with LIMIT and OFFSET

Skip rows with OFFSET and limit the result with LIMIT:

```sql
SELECT * FROM student2 LIMIT 5 OFFSET 2;
```

## 5. Delete Data

Delete rows matching a condition:

```sql
DELETE FROM student2 WHERE grade = 'B+';
```

## Summary

-Use `LIMIT` to restrict the number of rows returned.

-Use `OFFSET` to skip rows, useful for pagination.

-Use `DELETE` with a `WHERE` clause to remove specific rows.
