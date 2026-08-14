-- 0. Fetch all data for verification
SELECT *
FROM Repositories;

-- 1. Filter repositories with more than 10,000 stars
SELECT *
FROM Repositories
WHERE stargazers > 10000;

-- 2. Find repositories whose name contains "Machine"
SELECT *
FROM Repositories
WHERE name LIKE '%machine%';

-- 3. Display the Top 10 repositories based on stars
SELECT *
FROM Repositories
ORDER BY stargazers DESC
LIMIT 10;

-- 4. Count the total number of repositories
SELECT COUNT(*) AS Rows_counts
FROM Repositories;

-- 5. Calculate the average number of stars
SELECT AVG(stargazers) AS stargazers_c
FROM Repositories;

-- 6 & 7. Group repositories by language & filter those with more than 5 repos
SELECT language, COUNT(*) AS s
FROM Repositories
GROUP BY language
HAVING COUNT(*) > 5;

-- 8. Logical Query A: Using AND with wildcard name filtering
SELECT *
FROM Repositories
WHERE stargazers > 10000
  AND name LIKE '%machine%';

-- 8. Logical Query B: Using AND and NOT IN
SELECT *
FROM Repositories
WHERE stargazers > 10000
  AND language NOT IN ('JavaScript', 'C#');

-- 8. Logical Query C: Using OR
SELECT *
FROM Repositories
WHERE language = 'Python'
   OR language = 'C++';

-- Extra Practice 1: Top 15 repositories with over 7,000 stars
SELECT *
FROM Repositories
WHERE stargazers > 7000
ORDER BY stargazers DESC
LIMIT 15;

-- Extra Practice 2: Excluding specific major organization owners
SELECT *
FROM Repositories
WHERE stargazers > 7000
  AND owner NOT IN ('microsoft', 'tensorflow', 'huggingface')
ORDER BY stargazers DESC
LIMIT 15;