-- HackerRank: Weather Observation Station 10
-- Difficulty: Easy
-- Category: Basic Select

SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY, 1) NOT IN ('A', 'E', 'I', 'O', 'U');
