# Problem Statement: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
# Difficulty: Easy
# Score: 10

- # MySQL Query:

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = "California"
GROUP BY DISTRICT
