-- HackerRank: Weather Observation Station 6
-- Difficulty: Easy
-- Category: Basic Select

SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY, 1) IN ('A', 'E', 'I', 'O', 'U');
