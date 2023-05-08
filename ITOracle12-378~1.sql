SET ECHO ON;

-- QUESTION 2
SELECT * 
FROM BEARS;

-- QUESTION 3
SELECT Day, Location, Opponent 
FROM BEARS;

-- QUESTION 4
SELECT *
FROM BEARS
WHERE Location = 'Chicago, IL';

-- QUESTION 5
SELECT Day, Opponent 
FROM BEARS
WHERE Location = 'Chicago, IL';

-- QUESTION 6
SELECT * 
FROM BEARS
WHERE Location != 'Chicago, IL';

-- QUESTION 7
SELECT Location, Opponent 
FROM BEARS
WHERE Location != 'Chicago, IL';