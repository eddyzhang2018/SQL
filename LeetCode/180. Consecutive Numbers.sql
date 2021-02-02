# Problem Statement: https://leetcode.com/problems/consecutive-numbers/
# Taks: Write an SQL query to find all numbers that appear at least three times consecutively.
# Difficulty: Medium

- # MySQL:

SELECT a.Num AS ConsecutiveNums
FROM Logs AS a, Logs AS b, Logs AS c
WHERE a.Num = b.Num AND b.Num = c.Num AND a.Id = b.Id - 1 AND b.ID = c.Id - 1
GROUP BY a.Num

- # MySQL v2
# In case there are missing values in the Id column, I added a new row column over it.

WITH v2Logs AS (
SELECT ROW_NUMBER() OVER() AS NumRow, Id, Num
FROM Logs)

SELECT a.Num AS ConsecutiveNums
FROM v2Logs AS a, v2Logs AS b, v2Logs AS c
WHERE a.Num = b.Num AND b.Num = c.Num AND a.NumRow = b.NumRow - 1 AND b.NumRow = c.NumRow - 1
GROUP BY a.Num

- # MySQL (alternative using arithmetic operations)
# Reference: luokiss39, https://leetcode.com/problems/consecutive-numbers/discuss/321205/Runtime%3A-299-ms-faster-than-94.39

select distinct Num as ConsecutiveNums
from Logs
where (Id + 1, Num) in (select * from Logs) and (Id + 2, Num) in (select * from Logs)
