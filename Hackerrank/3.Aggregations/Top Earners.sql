# Problem Statement: https://www.hackerrank.com/challenges/earnings-of-employees/problem
# Difficulty: Easy
# Score: 20

- # MySQL

SELECT a.earnings, count(*)
FROM (SELECT *, months*salary AS earnings
FROM Employee) AS a
GROUP BY a.earnings
ORDER BY a.earnings DESC LIMIT 1
