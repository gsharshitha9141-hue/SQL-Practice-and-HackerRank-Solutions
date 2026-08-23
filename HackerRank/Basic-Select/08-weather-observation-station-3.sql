-- HackerRank: Weather Observation Station 3
-- Difficulty: Easy
-- Category: Basic Select

SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;
