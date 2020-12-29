# Task: Write an SQL query to find the id and the name of all students who are enrolled in departments that no longer exists.
# Problem Statement: https://leetcode.com/problems/students-with-invalid-departments/
# Difficulty: Easy

- MySQL query:
SELECT id, name from (SELECT * from Students WHERE department_id NOT IN (SELECT id from Departments)) as id_table

- MySQL query v2:
# Reference: MrDelhi, https://leetcode.com/problems/students-with-invalid-departments/discuss/508256/Simple-SQL-beats-100

SELECT id, name FROM Students
WHERE department_id not in (SELECT id from Departments)
