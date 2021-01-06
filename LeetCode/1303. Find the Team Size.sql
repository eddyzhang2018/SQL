# Task: Write an SQL query to find the team size of each of the employees.
# Problem Statement: https://leetcode.com/problems/find-the-team-size/
# Difficulty: Easy

- MySQL query:

SELECT c.employee_id, c.num_size as team_size from
(SELECT * from Employee as a
Join (SELECT team_id as b_id, COUNT(team_id) as num_size FROM Employee
GROUP BY team_id) as b
on a.team_id = b.b_id) as c
