# Problem Statement: https://leetcode.com/problems/department-highest-salary/
# Task: Write a SQL query to find employees who have the highest salary in each of the departments.
# Difficulty: Medium

- MySQL query (use of Dense Rank):

WITH qry_ranked AS (SELECT *, DENSE_RANK() OVER(PARTITION BY DepartmentId ORDER BY Salary DESC) AS rnk
FROM Employee)

SELECT d.Name AS Department, q.Name AS Employee, q.Salary AS Salary
FROM Department AS d
JOIN qry_ranked AS q
ON d.Id = q.DepartmentId
WHERE q.rnk = 1
