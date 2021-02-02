# Problem Statement: https://leetcode.com/problems/consecutive-numbers/
# Taks: Write an SQL query to find all numbers that appear at least three times consecutively.
# Difficulty: Medium

- # MySQL:

SELECT a.Num AS ConsecutiveNums
FROM Logs AS a, Logs AS b, Logs AS c
WHERE a.Num = b.Num AND b.Num = c.Num AND a.Id = b.Id - 1 AND b.ID = c.Id - 1
GROUP BY a.Num
