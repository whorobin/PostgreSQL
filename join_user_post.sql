-- Active: 1747565100035@@127.0.0.1@5432@first_table

-- **** 9-6 Joining Tables with Inner Join


-- table create 
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

-- post create
CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

-- data uplode in (users)
INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');


-- data uplode in (post)
INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);


-- output table (users) dekhar jonno 
SELECT * FROM "user";

-- output (post) dekhar jonno 
SELECT * FROM post;

-- user and post jodi ekta table a add korte cahi
SELECT title , username FROM post JOIN "user" on post.user_id = "user".id;

-- 2 ta tabole er join korar pore ekta id_colum thakbe
SELECT * FROM post as p
JOIN "user" u on p.user_id = u.id;

-- one data insert in this table
INSERT INTO post (id, title, user_id) VALUES
(5,'this is a test post title', NULL);

-- Left join er khetre - Left sider er table field gula k must rakhbe then right side theke field e content khujbe
SELECT * FROM post as p
LEFt OUTER JOIN "user" u on p.user_id = u.id;


-- Right join er khetre - right sider er table field gula k must rakhbe then left side theke field e content khujbe
SELECT * FROM post as p
RIGHT OUTER JOIN "user" u on p.user_id = u.id;


-- 2 ta table er kono codition manuk r na manuk sob gula data ee table rakhbe
SELECT * FROM post as p
FULL OUTER JOIN "user" u on p.user_id = u.id;