# 🧠 Logical Negation, NULL Handling & COALESCE in PostgreSQL

এই গাইডে আমরা শিখবো:

- `NOT` কিভাবে কাজ করে
- `NULL` কীভাবে চেক করতে হয়
- এবং `COALESCE` দিয়ে NULL এর fallback মান কীভাবে দেওয়া যায়

---

## ❗ Logical Negation: `NOT` এবং `<>`

### ✅ `NOT` ব্যবহার:

```sql
SELECT * FROM student2
WHERE NOT country = 'Bangladesh';
```

🔍 মানে: **বাংলাদেশ নয়** এমন country এর students দেখাবে।

### ✅ সমতুল্য কোয়েরি:

```sql
SELECT * FROM student2
WHERE country <> 'Nepal';
```

🔁 `<>` হচ্ছে "not equal" বোঝানোর আরেকটি উপায়।

---

## 🌫️ Understanding `NULL`

SQL-এ `NULL` মানে হলো "কোনো মান নেই" বা "অজানা মান"।

### 🧪 Example:

```sql
-- যেসব স্টুডেন্টের ইমেইল নেই
SELECT * FROM student2
WHERE email IS NULL;

-- যাদের ইমেইল দেওয়া আছে
SELECT * FROM student2
WHERE email IS NOT NULL;
```

### ❗ মনে রাখো:

`NULL` এর সাথে `=` বা `!=` ব্যবহার করা যাবে না।  
✅ বরং `IS NULL` বা `IS NOT NULL` ব্যবহার করতে হয়।

---

## 🔄 Null-Coalescing Operator: `COALESCE()`

`COALESCE()` একাধিক মানের মধ্য থেকে **প্রথম যেটা NULL না**, সেটি রিটার্ন করে।

### 🧪 Example 1:

```sql
SELECT COALESCE(NULL, NULL, 10);
-- রিটার্ন করবে: 10
```

### 🧪 Example 2:

```sql
SELECT COALESCE(email, 'Email not provided') FROM student2;
-- যাদের ইমেইল NULL, সেখানে 'Email not provided' দেখাবে।
```

---

## 📋 Full Table View:

```sql
SELECT * FROM student2;
```

---

## 🧾 Summary

| ফিচার         | কাজ                      |
| ------------- | ------------------------ |
| `NOT`         | শর্তের উল্টো মান বের করে |
| `<>`          | Not equal বোঝায়          |
| `IS NULL`     | NULL চেক করে             |
| `IS NOT NULL` | Not NULL চেক করে         |
| `COALESCE()`  | NULL হলে বিকল্প মান দেয়  |
