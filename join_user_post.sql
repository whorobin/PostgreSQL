-- Active: 1747565100035@@127.0.0.1@5432@first_table

-- **** 9-6 Joining Tables with Inner Join


-- table create 
CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

-- post create
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)

-- data uplode in (users)
INSERT INTO "users" (username) VALUES
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
SELECT * FROM "users";

-- output (post) dekhar jonno 
SELECT * FROM post;

-- user and post jodi ekta table a add korte cahi
SELECT title , username FROM post JOIN "user" on post.user_id = "user".id;
