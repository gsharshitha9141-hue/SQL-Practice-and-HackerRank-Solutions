-- HackerRank: Weather Observation Station 8
-- Difficulty: Easy
-- Category: Basic Select

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U')
AND RIGHT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');
