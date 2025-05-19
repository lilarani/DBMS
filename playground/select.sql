-- create table
create table student2(
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) ,
  last_name VARCHAR(50),
  age  INT,
  grade CHAR(2),
  course VARCHAR(50),
  email VARCHAR(100),
  dob DATE,
  blood_group VARCHAR(5),
  country VARCHAR(50)
)

-- insert data
INSERT INTO student2 (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES ('Rima', 'Akter', 22, 'A+', 'Computer Science', 'rima@gmail.com', '2003-05-12', 'A+', 'Bangladesh'),
('Shahin', 'Alam', 24, 'B+', 'Data Science', 'shahin.alam@gmail.com', '2001-03-22', 'B+', 'Bangladesh'),
('Sadia', 'Islam', 21, 'A', 'Mathematics', 'sadia21@gmail.com', '2004-01-10', 'O+', 'India'),
('Anik', 'Rahman', 23, 'B-', 'Physics', 'anik.r@gmail.com', '2002-08-05', 'AB+', 'Bangladesh'),
('Taslima', 'Begum', 25, 'A-', 'Chemistry', 'taslima@gmail.com', '2000-09-17', 'A-', 'Nepal'),
('Rashed', 'Karim', 22, 'C+', 'English', 'rashed22@gmail.com', '2003-07-01', 'B-', 'Bangladesh'),
('Fahim', 'Hasan', 20, 'B', 'Economics', 'fahim.h@gmail.com', '2005-02-15', 'O-', 'Sri Lanka'),
('Maliha', 'Noor', 23, 'A', 'Sociology', 'maliha.n@gmail.com', '2002-11-30', 'A+', 'Bangladesh'),
('Tariq', 'Zaman', 24, 'B+', 'Political Science', 'tariqz@gmail.com', '2001-06-25', 'AB-', 'Pakistan'),
('Nusrat', 'Jahan', 21, 'A+', 'Psychology', 'nusrat.j@gmail.com', '2004-04-09', 'O+', 'Bangladesh');

SELECT email, age FROM student2;

SELECT email as "student email" FROM student2

SELECT * FROM student2


-- ordered by Ascending
SELECT * FROM student2 ORDER BY first_name ASC

-- ordered by decending
SELECT * FROM student2 ORDER BY first_name DESC


-- distinct use korle unique value gulo dibe
SELECT DISTINCT country FROM student2;

SELECT DISTINCT blood_group FROM student2;



-- select students from the Bangladesh
-- select students with B- grade in physics
-- select students with a specific blood group ('A+')
-- select students form the bangladesh or from pakistan 
-- select students form the bangladesh or from pakistan and the age is 20;
-- select students with a grade of "A" or "B" in math or physics
-- select student older than 20

SELECT * FROM  student2;

-- filtering
SELECT DISTINCT country from student2;

SELECT DISTINCT blood_group FROM student2;

SELECT * FROM student2
  WHERE country = 'Bangladesh';

  SELECT * FROM student2
    WHERE grade = 'B-' AND course = 'Physics';

-- select students form the bangladesh or from pakistan and the age is 20;

SELECT * FROM student2 
  WHERE (country = 'Bangladesh' OR country = 'Pakistan') and age = 22;


SELECT * FROM student2
  WHERE age >20 AND course = 'Chemistry'


 /* 
 @scalar functions
UPPER() converts a string in uppercase,
LOWER() converts a string in lowercase,
CONCAT() concatenations two or more strings.
LENGTH() Returns the number of characters in a string.
SUBSTRING() extracts a portion of a string,
TRIM() removes leading and trailing spaces from a string,
REPLACE() replaces all occurrences of a substring with another.

 */
-- upper
SELECT upper (first_name), * FROM student2;

-- lower

SELECT lower (first_name) FROM student2;

-- concat
SELECT concat(first_name,' ', last_name) FROM student2;

-- length
SELECT length(last_name) FROM student2;


/*
@Aggregate functions
COUNT() Returns the number of rows
SUM() Calculates the sum of values in a set.
AVG() Calculates the average of a set of values.
MIN() Returns the minimum value in a set.
MAX() Returns the largest value in a column
GROUP_CONCAT() Combines multiple row values into a single string (MySQL specific)

*/

-- avg
SELECT avg(age) FROM student2;

-- max
SELECT max(age) FROM student2;

SELECT max(length(first_name)) FROM student2;

-- min
SELECT min(age) FROM student2;

-- count
SELECT count(*) FROM student2;

--  Logical Negation NOT, understanding NULL and the Null-Coalescing Operator in PostgreSQL

-- not
SELECT * FROM student2  
  WHERE not country = 'Bangladesh';

-- same as not
  SELECT * FROM student2
    WHERE country  <>  'Nepal'


-- null
-- amra null er sathe ja kichu add kori na kno null return korbe.

SELECT * FROM student2
  WHERE email is  NULL;


SELECT * FROM student2
  WHERE email is not NULL;



  -- coalescing
  SELECT COALESCE(NULL, NULL, 10);

  SELECT  COALESCE(email, 'Email not provided')  FROM student2;
    

SELECT * FROM student2




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