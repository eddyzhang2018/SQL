# Problem Statement: https://www.hackerrank.com/challenges/african-cities/problem
# Difficulty: Easy
# Score: 10

- MySQL:

SELECT a.NAME FROM CITY AS a
JOIN COUNTRY AS b 
ON a.COUNTRYCODE = b.CODE
WHERE b.CONTINENT = 'Africa'
