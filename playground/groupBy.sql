SELECT * FROM student2;

-- group by
SELECT country , count(*), avg(age) FROM student2
  GROUP BY country;

-- having
SELECT country, count(*), avg(age) FROM student2
  GROUP BY country
  HAVING avg(age) > 12;

-- Filter groups using HAVING to show only countries with average age above 20.

SELECT country, count(*), avg(age) FROM student2
   GROUP BY country
   HAVING avg(age) > 20;

-- count students born in each year.

SELECT extract(year from dob) as birth_year, count(*)
FROM student2
GROUP BY birth_year; 
