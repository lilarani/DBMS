
/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
    -- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
    -- Database Startup, Database Shutdown, Connection start and end etc

-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW] 
-- EXECUTE FUNCTION function_name();



/*CREATE Trigger TR
DEFAULT DELETE
on USER
for EACH row
EXECUTE FUNCTION FUNCTION_name()
*/

CREATE Table my_users(
  user_name VARCHAR(50),
  email VARCHAR(100)
);

insert INTO my_users VALUES('Neela', 'neela@gmail.com'), ('Ababil', 'ababil@gmail.com')

SELECT * FROM my_users;


CREATE Table deleted_users_audit (
  deleted_user_name VARCHAR(50),
  deletedAt TIMESTAMP
);

SELECT * FROM deleted_users_audit;

--  trigger function
CREATE or REPLACE Function save_delete_user()
RETURNS TRIGGER
LANGUAGE plpgsql
as 
$$
    BEGIN
      INSERT INTO deleted_users_audit VALUES(OLD.user_name, now());

      RAISE NOTICE 'deleted user audit log created';
      
      RETURN OLD;

    END;
$$;


-- create trigger

CREATE Trigger save_deleted_user_trigger
BEFORE DELETE 
ON my_users
for EACH ROW
EXECUTE FUNCTION save_delete_user();

DELETE FROM my_users WHERE user_name = 'Neela'