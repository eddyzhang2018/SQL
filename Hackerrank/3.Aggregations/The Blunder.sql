# Problem Statement: https://www.hackerrank.com/challenges/the-blunder/problem
# Difficulty: Easy
# Score: 15


- # MySQL:

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary,0,"")))
FROM EMPLOYEES
