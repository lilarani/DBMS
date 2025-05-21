# PostgreSQL: User and Post Relationship

This project demonstrates a simple **relational database schema** using
PostgreSQL that enforces **referential integrity** between two tables: `user`
and `post`.

## 📋 Table Structure

### 🧑 Table: `user`

Stores user information.

| Column   | Type        | Constraints |
| -------- | ----------- | ----------- |
| id       | SERIAL      | Primary Key |
| username | VARCHAR(25) | Not Null    |

### 📝 Table: `post`

Stores posts created by users. Each post references a user via a **foreign
key**.

| Column  | Type    | Constraints                        |
| ------- | ------- | ---------------------------------- |
| id      | SERIAL  | Primary Key                        |
| title   | TEXT    | Not Null                           |
| user_id | INTEGER | Not Null, Foreign Key → `user(id)` |

> Referential Integrity is enforced by ensuring every `post.user_id` exists in
> the `user` table.

## ⚙️ SQL Setup

```sql
-- Create "user" table
CREATE TABLE "user" (
  id SERIAL PRIMARY KEY,
  username VARCHAR(25) NOT NULL
);

-- Create "post" table with foreign key reference to user
CREATE TABLE post (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  user_id INTEGER REFERENCES "user"(id)
);

-- Enforce NOT NULL on user_id after table creation
ALTER TABLE post
  ALTER COLUMN user_id SET NOT NULL;
```

## 📥 Insert Sample Data

Insert user:

```sql
INSERT INTO "user" (username) VALUES
('Neela'),
('Ababil'),
('Tulshi'),
('Hayat'),
('Tupma');
```

Insert Posts

```sql
INSERT INTO post(title, user_id) VALUES
('Enjoing a sunny day with Neela', 2),
('Morning walk with Ababil', 4),
('Book reading time with Tulshi', 1),
('Chatting under the stars with Hayat', 5),
('Evening tea with Tupma', 4);
```

## ✅ Referential Integrity in Action

If you try to insert a post with a `user_id` that doesn’t exist in the
`user `table, PostgreSQL will reject the insertion due to the foreign key
constraint.

-- ❌ This will fail if there's no user with id = 99

```sql
 INSERT INTO post(title,
user_id) VALUES ('Invalid post', 99);
```

## Behaviors During Data Deletion

Deletion constraint on delete user

- Cascading Deletion -->` ON DELETE CASCADE`
- Setting NULL --> `ON DELETE SET NULL`
- Restrict Deletion --> `ON DELETE RESTRICT/ ON DELETE NO ACTION (default)`
- Set Default value --> `ON DELETE SET DEFAULT`

## 🔢 ON DELETE Constraints Examples

✅ 1. ON DELETE CASCADE

```sql
CREATE TABLE post (
 id SERIAL PRIMARY KEY,
 title TEXT NOT NULL,
 user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);
```

-- Test

```sql
DELETE FROM "user" WHERE id = 4;
```

-- ✉️ Posts with user_id 4 are automatically deleted

## 🔹2. ON DELETE SET NULL

Sets user_id in post table to NULL when user is deleted.

```sql
CREATE TABLE post (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  user_id INTEGER REFERENCES "user"(id) ON DELETE SET NULL
);
```

## 🔧 3. ON DELETE SET DEFAULT

Sets user_id to a default value when user is deleted.

```sql
CREATE TABLE post (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  user_id INTEGER DEFAULT 2 REFERENCES "user"(id) ON DELETE SET DEFAULT
);
```

-- Test

```sql
DELETE FROM "user" WHERE id = 4;
```

-- ✉️ Posts with user_id 4 will now have user_id = 2 (default)

## ❌ 4. ON DELETE RESTRICT / NO ACTION (Default)

Prevents deletion if related posts exist.

```sql
CREATE TABLE post (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  user_id INTEGER REFERENCES "user"(id) ON DELETE RESTRICT
);
```

-- Test

```sql
DELETE FROM "user" WHERE id = 4;
```

-- ❌ Error: Cannot delete user with existing posts

## 📌 Summary: PostgreSQL – User and Post Relationship

This project demonstrates how to establish and enforce a relationship between
two tables—`user` and `post`—using PostgreSQL's **foreign key constraints** to
ensure **referential integrity**.

### 🔨 Table Structure:

- **`user` table:** Stores user information.
- **`post` table:** Stores posts created by users, with a `user_id` that
  references `user.id`.

### 🔄 Data Integrity in Action:

- If you try to insert a `post` with a `user_id` that does not exist in the
  `user` table, PostgreSQL will reject the operation.
- This enforces that all posts must belong to valid users.

---

### 🧾 Explanation of `ON DELETE` Constraints:

| Constraint                 | Behavior Description                                                                   |
| -------------------------- | -------------------------------------------------------------------------------------- |
| ✅ `ON DELETE CASCADE`     | Deleting a user automatically deletes all their associated posts.                      |
| 🔹 `ON DELETE SET NULL`    | Deleting a user sets the `user_id` in related posts to `NULL`.                         |
| 🔧 `ON DELETE SET DEFAULT` | Deleting a user sets the `user_id` in related posts to a predefined default value.     |
| ❌ `ON DELETE RESTRICT`    | Prevents deletion of a user if they have related posts. (This is the default behavior) |

---
