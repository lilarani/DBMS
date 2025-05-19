
-- IN, BETWEEN, LIKE, and ILIKE Operators in PostgreSQL

-- IN
SELECT * FROM student2
  WHERE country not in('Bangladesh', 'Pakistan')

-- between
SELECT * FROM student2
  WHERE age BETWEEN 20 and 22

SELECT * FROM student2
  WHERE dob BETWEEN '2004-04-1' and '2005-07-4'

-- Like (case sensative)
-- `%` মানে কোনো কিছু বা একাধিক অক্ষর থাকতে পারে
SELECT * FROM student2
 WHERE first_name LIKE '%a';


 SELECT * FROM student2
 WHERE first_name LIKE '_i%'


-- ILike (case insensative)
SELECT * FROM student2
  WHERE first_name ILIKE 'r%';


SELECT * FROM student2