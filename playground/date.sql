SELECT now()
SHOW timezone;

CREATE Table timeZ (
  ts TIMESTAMP without TIME zone, 
  tsz TIMESTAMP with time zone
  );


INSERT INTO timeZ VALUES('2025-03-05 10:30:00', '2025-03-05 10:30:00')

SELECT CURRENT_DATE;

SELECT now():: date;
SELECT now():: time;

SELECT to_char(now(), 'mm/dd/yyyy')

SELECT to_char(now(), 'Month');

SELECT to_char (now(), 'month');

SELECT to_char(now(), 'DDD');

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE, '2003-4-16');


SELECT *, age(CURRENT_DATE, dob) FROM student2;

SELECT extract(year FROM '2024-01-25':: date)

SELECT extract (month from '2003-09-13':: date);

SELECT 't' :: BOOLEAN;

SELECT * FROM timez;

