USE sql_blog;

-- Let's say a user searches for 'react redux' and we have to pull out every post about react reduc from our db

-- first approach

SELECT *
FROM posts
WHERE title LIKE '%react redux%' OR
	body LIKE '%react redux%';
    
-- 2ND APPROACH WITH FULLTEXT INDEX 

CREATE FULLTEXT INDEX idx_title_body ON posts (title, body);

SELECT *
FROM posts
WHERE MATCH (title, body) AGAINST('react redux');

-- FULLTEXT is used in NLM natural language mode
SELECT *, MATCH (title, body) AGAINST('react redux') AS relevent_score
FROM posts
WHERE MATCH (title, body) AGAINST('react redux');

SELECT *, MATCH (title, body) AGAINST('react redux') AS relevent_score
FROM posts
WHERE MATCH (title, body) AGAINST('react -redux' IN BOOLEAN MODE);

-- EVERY POST WITH THE EXACT PHRASE
SELECT *, MATCH (title, body) AGAINST('react redux') AS relevent_score
FROM posts
WHERE MATCH (title, body) AGAINST('"handling a form"' IN BOOLEAN MODE);