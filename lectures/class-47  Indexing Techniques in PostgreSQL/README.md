# PostgreSQL Indexing Techniques

## What is Indexing?

Indexing is a database technique that improves the speed of data retrieval
operations on a table at the cost of additional writes and storage space.  
It helps PostgreSQL find data quickly without scanning the entire table.

---

## Common Index Types in PostgreSQL

### 1. B-tree Index(Balanced Tree) (Default)

- Most commonly used index type.
- Good for equality and range queries (`=`, `<`, `>`, `BETWEEN`).
- Balanced tree structure.

**Example:**

```sql
CREATE INDEX idx_employee_name ON employees(employee_name);
```

## 2. Hash Index

- Supports equality comparisons (=).

- Less commonly used than B-tree.

- Faster for simple equality checks but limited use cases.

Example:

```sql
CREATE INDEX idx_hash_email ON users USING hash(email);
```

## 3. GiST (Generalized Search Tree)

- Supports complex data types such as geometric data and full-text search.

- Allows custom indexing strategies.

Example:

```sql
CREATE INDEX idx_gist_location ON places USING gist(location);
```

## 4. SP-GiST (Space-partitioned GiST)

- Suitable for partitioned or non-balanced data structures.

- Useful for spatial data or hierarchical data.

## 5. GIN (Generalized Inverted Index)

- Best for indexing composite values like arrays, JSON, and full-text search.

- Supports fast searching on complex data types.

Example:

```sql
CREATE INDEX idx_gin_tags ON articles USING gin(tags);
```

## 6. BRIN (Block Range Index)

- Efficient for very large tables where data is naturally ordered.

- Stores summary info about ranges of blocks.

- Low storage cost, useful for columns with physical correlation.

Example:

```sql
CREATE INDEX idx_brin_date ON events USING brin(event_date);
```

## When to Use Which Index?

| Index Type | Use Case                       | Notes                        |
| ---------- | ------------------------------ | ---------------------------- |
| B-tree     | General purpose, range queries | Default and most widely used |
| Hash       | Equality search (`=`) only     | Limited use                  |
| GiST       | Geometric, full-text, custom   | Complex data types           |
| SP-GiST    | Partitioned/spatial data       | Specialized use              |
| GIN        | Arrays, JSON, full-text search | Complex and composite data   |
| BRIN       | Huge tables, ordered data      | Minimal storage, fast scan   |

## Summary

Indexes improve query performance but add overhead on data insertion and
updates. Choose your index type based on query patterns and data types for best
results.
