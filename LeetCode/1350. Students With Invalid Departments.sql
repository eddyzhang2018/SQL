# Task: Write an SQL query to find the id and the name of all students who are enrolled in departments that no longer exists.
# Problem Statements: https://leetcode.com/problems/students-with-invalid-departments/

- MySQL query:
SELECT id, name from (SELECT * from Students WHERE department_id NOT IN (SELECT id from Departments)) as id_table

