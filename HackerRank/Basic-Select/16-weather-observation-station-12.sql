-- HackerRank: Weather Observation Station 12
-- Difficulty: Easy
-- Category: Basic Select

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U')
AND RIGHT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U');
