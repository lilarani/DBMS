/*
                    @Procedural Approach:
    1. Language Support: Supports procedural languages like PL/pgSQL, PL/Perl, PL/Python, etc.
    2. Complex Logic: Allows for complex logic using control structures like loops, conditionals, and exception handling.
    3. Variable Support: Supports variable declarations and manipulation within the procedural code.
    4. Stored Procedures/Functions: Provides the ability to create stored procedures or functions, 

                    @Non-Procedural Approach:
    1. Declarative Queries: Focuses on writing declarative SQL queries to retrieve, insert, update, or delete data from the database.
    2. Simplicity: Emphasizes simplicity by expressing operations in terms of what data is needed.
    3. SQL Functions: Supports SQL functions, which are single SQL statements that return a value or set of values.
    4. Performance: Can sometimes offer better performance for simple operations due to the optimized query execution plans generated by the database engine.
*/



-- create function

CREATE Function emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT count(*) FROM employees

$$;

SELECT emp_count();

-- delete 
CREATE Function delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$

DELETE FROM employees WHERE employee_id = 30
$$;

SELECT delete_emp()


-- deletion function with parameter

CREATE or REPLACE Function emp_delete(p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE employee_id = p_emp_id
$$

SELECT emp_delete(29)

-- procedural function
CREATE or REPLACE Procedure remove_emp(emp_id int)
LANGUAGE PLPGSQL
AS
$$
DECLARE
    test_var int;  --variable
BEGIN
-- get the employee id
    SELECT employee_id INTO test_var FROM employees WHERE employee_id = emp_id;
    
    --  delete the employee
    DELETE FROM employees WHERE employee_id = test_var;

    -- show a notice
    RAISE NOTICE 'Employee remove successfully';
END

$$

CALL remove_emp(27)

SELECT * FROM employees;

