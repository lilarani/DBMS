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

