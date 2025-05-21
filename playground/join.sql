-- Joining Tables with Inner Join

CREATE Table "user"(
  id SERIAL PRIMARY KEY,
  username VARCHAR(25)
)

create Table post(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  user_id INTEGER REFERENCES "user"(id)
)

-- insert data on user table
INSERT INTO "user"(username) VALUES
 ('Neela'),
 ('Ababil'),
 ('Hayat'),
 ('Tulshi')

--  insert data on post table
INSERT INTO post (title, user_id) VALUES
('Enjoing a sunny day with Neela', 2),
('Morning walk with Ababil', 4),
('Book reading time with Tulshi', 1),
('Chatting under the stars with Hayat', 5),
('Evening tea with Tupma', 4)


--Inner Join --> join user & post table 
SELECT title, username from post
join "user" on post.user_id = "user".id; -- “post এবং user টেবিলকে মিলাও যেখানে post টেবিলের user_id এর মান user টেবিলের id এর মানের সমান।”



SELECT * FROM "user"
JOIN post on post.user_id = "user".id;


INSERT INTO post (id, title, user_id) VALUES
(6, 'This is a post title', NULL);



-- Left Join
SELECT * FROM post 
LEFT JOIN "user" on post.user_id = "user".id;

-- Right Join
SELECT * FROM post 
RIGHT JOIN "user" on post.user_id = "user".id;


-- full join
SELECT * FROM post 
FULL JOIN "user" on post.user_id = "user".id;


SELECT * FROM "user";

SELECT * FROM post;
