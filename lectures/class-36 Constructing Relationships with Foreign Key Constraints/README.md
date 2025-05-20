## Constructing Relationships with Foreign Key Constraints

## ## ✅ Table Creation SQL with foreign key

```sql
create table post(
  id serial primary key,
  title text,
  user_id interger references user(id)
)
```

🧾 Explanation of Each Line

| Line | Code                                  | Explanation                                                                                                            |
| ---- | ------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| 1    | `id SERIAL PRIMARY KEY`               | - Creates an `id` column that auto-increments (`SERIAL`). <br> - `PRIMARY KEY` ensures each post has a unique ID.      |
| 2    | `title TEXT`                          | - Stores the title of the post. <br> - `TEXT` allows long or short strings without length limits.                      |
| 3    | `user_id INTEGER REFERENCES user(id)` | - A foreign key that links to the `id` column in the `user` table. <br> - Ensures each post is linked to a valid user. |
