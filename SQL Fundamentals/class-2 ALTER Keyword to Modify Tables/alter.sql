-- Create a new table named 'students'
CREATE Table person2(
  id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  age INTEGER
)

SELECT * FROM person2;

-- add column
ALTER Table person2
   ADD COLUMN address VARCHAR(50);

-- insert value
INSERT INTO person2 values(2, 'Rima', 'rima@gmail.com', 23, 'Dinajpur')

INSERT INTO person2 values(4, 'Ababil', 'ababil@gmail.com', 22, 'Vhaduria')


-- delete column
ALTER Table person2
DROP COLUMN address;

SELECT * FROM person2;


-- rename column name
ALTER Table person2
RENAME COLUMN age to user_age;


-- type changes
ALTER TABLE person2
  ALTER COLUMN name TYPE VARCHAR(60);

  -- add constraint
  ALTER Table person2
    alter COLUMN user_age set NOT NULL;

-- delete constraint
ALTER Table person2
  alter COLUMN user_age DROP NOT NULL;

-- added unique key
ALTER Table person2
ADD constraint UNIQUE_person2_user_age UNIQUE (user_age)

-- make primary key
ALTER Table person2
  ADD constraint pk_person2_email PRIMARY KEY (email)

  -- delete table
  DROP Table person2;

  -- delete table data
  TRUNCATE Table person2;