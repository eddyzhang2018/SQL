# Task: Write a SQL query to get the nth highest salary from the Employee table.
# Problem Statement: https://leetcode.com/problems/nth-highest-salary/
# Difficulty: Medium

- MySQL query (use DENSE_RANK()):

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN ( SELECT DISTINCT temptbl1.Salary FROM
          (SELECT *, DENSE_RANK() OVER(ORDER BY Salary DESC) as rnk FROM Employee ORDER BY Salary DESC) AS temptbl1
          WHERE temptbl1.rnk = N
  );
END

- MySQL query using LIMIT and Offset:
# Reference:rekinyz, https://leetcode.com/problems/nth-highest-salary/discuss/53041/Accpted-Solution-for-the-Nth-Highest-Salary

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M=N-1;
  RETURN (
      # Write your MySQL query statement below.
      SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT M, 1
  );
END
