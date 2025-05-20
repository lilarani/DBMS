-- Foreign Key 

CREATE Table "user" (
  id SERIAL PRIMARY KEY,
  username VARCHAR(25) NOT NULL
)

-- cascade
create Table post(
  id SERIAL PRIMARY KEY,
 title text not NULL,
 user_id INTEGER REFERENCES "user"(id) on delete CASCADE   -- Foreign Key 
)

-- set null
create Table post(
  id SERIAL PRIMARY KEY,
 title text not NULL,
 user_id INTEGER REFERENCES "user"(id) on delete set NULL   -- Foreign Key 
)

-- set default value
create Table post(
  id SERIAL PRIMARY KEY,
 title text not NULL,
 user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT  DEFAULT 2 -- Foreign Key 
)



ALTER Table post
   alter COLUMN user_id set NOT NULL;


-- insert data
INSERT INTO "user" (username) VALUES
( 'Neela'),
('Ababil'),
('Tulshi'),
('Hayat'),
('Tupma');

-- insert post
INSERT INTO post(title, user_id) VALUES 
('Enjoing a sunny day with Neela', 2),
('Morning walk with Ababil', 4),
('Book reading time with Tulshi', 1),
('Chatting under the stars with Hayat', 5),
('Evening tea with Tupma', 4)


SELECT * FROM "user";
SELECT * FROM post;


DROP TABLE post

DROP TABLE "user"

-- Deletion constraint on delete user
-- Cascading Deletion --> ON DELETE CASCADE
-- Setting NULL --> ON DELETE SET NULL
-- Restrict Deletion --> ON DELETE RESTRICT/ ON DELETE  NO ACTION (default)
-- Set Default value --> ON DELETE SET DEFAULT

-- ON DELETE CASCADE
DELETE FROM "user" id
WHERE id = 4


-- ON DELETE SET NULL
DELETE FROM "user"
WHERE id = 4