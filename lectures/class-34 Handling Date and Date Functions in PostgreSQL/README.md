## PostgreSQL Date, Time, and Boolean Usage Guide

This document provides examples and explanations for working with timestamps,
dates, time zones, and boolean values in PostgreSQL. Useful for beginners and
students learning SQL basics.

## 1. Current Date and Time Functions

- `SELECT now();` -- Current date and time (with time zone)
- `SHOW timezone;` -- Check current session time zone
- `SELECT CURRENT_DATE;` -- Returns current date only
- `SELECT now()::date;` -- Extract only the date
- `SELECT now()::time;` -- Extract only the time

## 2. Working with Timestamps and Time Zones

Create a Table:

```sql
CREATE TABLE timeZ (
  ts TIMESTAMP WITHOUT TIME ZONE,
  tsz TIMESTAMP WITH TIME ZONE
);
```

```sql
INSERT INTO timeZ VALUES ('2025-03-05 10:30:00', '2025-03-05 10:30:00');
```

## 3. Date Formatting with to_char

-- Format current date as MM/DD/YYYY

```sql
SELECT to_char(now(), 'MM/DD/YYYY');
```

-- Get full month name with padding (e.g., "January ")

```sql
SELECT to_char(now(),'Month');
```

-- Get lowercase month name with padding (e.g., "january ")

```sql
SELECT to_char(now(), 'month');
```

-- Get the day number of the year (001 to 365/366)

```sql
SELECT to_char(now(), 'DDD');

```

## 📌 Explanation

| SQL Pattern    | Description                                 | Example Output |
| -------------- | ------------------------------------------- | -------------- |
| `'MM/DD/YYYY'` | Formats date as month/day/year              | `05/20/2025`   |
| `'Month'`      | Full month name, capitalized & space-padded | `May `         |
| `'month'`      | Lowercase month name, space-padded          | `may `         |
| `'DDD'`        | Day of the year                             | `141`          |

## 📉 Working with Intervals

-- Get the date exactly 1 year ago

```sql
SELECT CURRENT_DATE - INTERVAL '1 year';
```

-- Calculate age based on a fixed date

```sql
SELECT age(CURRENT_DATE, '2003-04-16');
```

## 🔍 Extracting Date Parts

-- Extract year from a given date

```sql
SELECT extract(year FROM '2024-01-25'::date);
```

-- Extract month from a given date

```sql
SELECT extract(month FROM '2003-09-13'::date);
```

## ✅ Boolean Example

-- Cast a character to boolean

```sql
SELECT 't'::BOOLEAN;
```

## 📌 Notes

- Use `TIMESTAMP WITH TIME ZONE` when time zone context is important (e.g.,
  global apps).
- `to_char()` is extremely useful for formatting dates in reports or UI.
- `age()` returns the **interval** (difference) between two dates in years,
  months, and days.
- `extract()` pulls specific parts of a date like year, month, or day.
