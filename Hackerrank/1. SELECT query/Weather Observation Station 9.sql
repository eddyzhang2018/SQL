# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
# Difficulty: Easy
# Score: 10

- MySQL query:

SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY, 1) NOT IN ('a','e','i','o','u')

- MySQL query with REGULAR EXPRESSION:
# Reference: Rodney Shaghoulian, https://www.hackerrank.com/challenges/weather-observation-station-9/forum

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou]';
