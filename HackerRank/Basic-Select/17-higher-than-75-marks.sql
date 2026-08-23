-- HackerRank: Higher Than 75 Marks
-- Difficulty: Easy
-- Category: Basic Select

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY RIGHT(NAME, 3), ID;
