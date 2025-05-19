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


