# Problem Statement: https://leetcode.com/problems/employees-earning-more-than-their-managers/
# Task: Given the Employee table, write a SQL query that finds out employees who earn more than their managers.
# Difficulty: Easy

- # MySQL:

SELECT a.Name AS Employee
FROM Employee AS a, Employee AS b
WHERE a.ManagerId = b.Id AND a.Salary > b.Salary
