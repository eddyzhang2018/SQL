# Task: Write a SQL query to get the second highest salary from the Employee table.
# Problem Statement: https://leetcode.com/problems/second-highest-salary/
# Difficulty: Easy

- MySQL query:

SELECT MAX(Salary) as SecondHighestSalary FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);

- MySQL query - leetcode solution:
# reference: https://leetcode.com/problems/second-highest-salary/discuss/52952/A-Simple-Answer

select (
  select distinct Salary from Employee order by Salary Desc limit 1 offset 1
)as SecondHighestSalary
