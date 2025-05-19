# 🎓 SQL Student Query Collection

This project contains a collection of useful SQL queries to filter student data
from a table named `student2`.

## 📋 Table: `student2`

> Assumed columns:

- `id`
- `name`
- `age`
- `country`
- `grade`
- `course`
- `blood_group`

---

## 🔍 Data Filtering Queries

### 1. 📌 Select All Students

```sql
SELECT * FROM student2;
```

---

### 2. 🌍 Select students from Bangladesh

```sql
SELECT * FROM student2
WHERE country = 'Bangladesh';
```

---

### 3. 🧪 Select students with **B- grade in Physics**

```sql
SELECT * FROM student2
WHERE grade = 'B-' AND course = 'Physics';
```

---

### 4. 🩸 Select students with blood group **A+**

```sql
SELECT * FROM student2
WHERE blood_group = 'A+';
```

---

### 5. 🌏 Select students from **Bangladesh** or **Pakistan**

```sql
SELECT * FROM student2
WHERE country = 'Bangladesh' OR country = 'Pakistan';
```

---

### 6. 🌐 Select students from **Bangladesh or Pakistan** AND `age = 22`

```sql
SELECT * FROM student2
WHERE (country = 'Bangladesh' OR country = 'Pakistan') AND age = 22;
```

---

### 7. 🧠 Select students with grade **A or B** in **Math or Physics**

```sql
SELECT * FROM student2
WHERE (grade = 'A' OR grade = 'B')
  AND (course = 'Math' OR course = 'Physics');
```

---

### 8. 🎂 Select students **older than 20**

```sql
SELECT * FROM student2
WHERE age > 20;
```

---

## 📊 Extra Queries

### 🔁 Distinct countries

```sql
SELECT DISTINCT country FROM student2;
```

### 🩸 Distinct blood groups

```sql
SELECT DISTINCT blood_group FROM student2;
```

---

## ✅ Notes

- Ensure column names and values (like `Physics`, `Bangladesh`) match the actual
  data.
- String values should always be wrapped in single quotes `'like this'`.
