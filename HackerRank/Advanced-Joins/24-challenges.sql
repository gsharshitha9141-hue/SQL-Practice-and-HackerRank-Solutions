-- HackerRank: Challenges
-- Difficulty: Medium
-- Category: Advanced Joins

WITH challenge_counts AS (
    SELECT
        H.HACKER_ID,
        H.NAME,
        COUNT(C.CHALLENGE_ID) AS NUM_CHALLENGES
    FROM HACKERS H
    JOIN CHALLENGES C
        ON H.HACKER_ID = C.HACKER_ID
    GROUP BY H.HACKER_ID, H.NAME
),
count_frequency AS (
    SELECT
        NUM_CHALLENGES,
        COUNT(*) AS FREQUENCY
    FROM challenge_counts
    GROUP BY NUM_CHALLENGES
)
SELECT
    CC.HACKER_ID,
    CC.NAME,
    CC.NUM_CHALLENGES
FROM challenge_counts CC
JOIN count_frequency CF
    ON CC.NUM_CHALLENGES = CF.NUM_CHALLENGES
WHERE CF.FREQUENCY = 1
   OR CC.NUM_CHALLENGES = (
       SELECT MAX(NUM_CHALLENGES)
       FROM challenge_counts
   )
ORDER BY
    CC.NUM_CHALLENGES DESC,
    CC.HACKER_ID;
