-- Pagination with Limit Offset and Data Deletion in PostgreSQL

SELECT * FROM student2

SELECT * FROM student2 LIMIT(5)

SELECT * FROM student2 
  WHERE country in('Bangladesh', 'Pakistan') LIMIT 4;


-- offset --> first theke koto ta bad dibe
SELECT * FROM student2 LIMIT 5 OFFSET 2;

-- pagination
SELECT * FROM student2 LIMIT 5 OFFSET 5 * 0

SELECT * FROM student2 LIMIT 5 OFFSET 5 * 1

SELECT * FROM student2 LIMIT 5 OFFSET 5 * 2


-- dalete data
DELETE FROM student2
WHERE grade = 'B+';

SELECT * FROM student2;

-- update 
update student2
  set email = 'default@gmail.com', age  = 20
  WHERE student_id = 11;



SELECT * FROM student2;