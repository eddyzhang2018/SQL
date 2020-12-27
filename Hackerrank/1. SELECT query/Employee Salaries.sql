# Problem Statement: https://www.hackerrank.com/challenges/salary-of-employees/problem
# Difficulty: Easy
# Score: 10

- MySQL query:

SELECT name FROM employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC
