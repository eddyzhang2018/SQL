# Problem Statement: https://www.hackerrank.com/challenges/full-score/problem
# Difficulty: Medium
# Max Score: 30

# MySQL

SELECT sub.hacker_id, hac.name
FROM Submissions AS sub
JOIN Challenges as cha
ON sub.challenge_id = cha.challenge_id
JOIN Difficulty as dif
ON cha.difficulty_level = dif. difficulty_level
JOIN Hackers as hac
ON sub.hacker_id = hac.hacker_id
WHERE sub.score = dif.score AND cha.difficulty_level = dif. difficulty_level
GROUP BY sub.hacker_id, hac.name
HAVING count(sub.hacker_id) > 1
ORDER BY count(sub.hacker_id) DESC, sub.hacker_id ASC
