# Problem Statement: https://leetcode.com/problems/rising-temperature/
# Task: Write an SQL query to find all dates' id with higher temperature compared to its previous dates (yesterday).
# Difficulty: Easy

- MySQL query:

SELECT a.id
FROM Weather as a, Weather as b
WHERE DATEDIFF(a.recordDate, b.recordDate) = 1 AND a.Temperature > b.Temperature
