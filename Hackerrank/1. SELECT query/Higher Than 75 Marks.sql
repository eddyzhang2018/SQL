# Problem Statement: https://www.hackerrank.com/challenges/more-than-75-marks/problem
# Difficulty: Easy
# Score: 15

-MySQL query:
SELECT NAME FROM 
(SELECT DISTINCT NAME, ID FROM STUDENTS WHERE MARKS > 75 ORDER BY RIGHT(NAME,3), ID) AS DATA
