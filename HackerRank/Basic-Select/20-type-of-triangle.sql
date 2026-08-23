-- HackerRank: Type of Triangle
-- Difficulty: Easy
-- Category: Basic Select

SELECT
    CASE
        WHEN A + B <= C
          OR A + C <= B
          OR B + C <= A
            THEN 'Not A Triangle'

        WHEN A = B AND B = C
            THEN 'Equilateral'

        WHEN A = B
          OR B = C
          OR A = C
            THEN 'Isosceles'

        ELSE 'Scalene'
    END
FROM TRIANGLES;
