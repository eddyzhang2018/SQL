# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
# Difficulty: Easy
# Socre: 10

- MySQL query:
SELECT DISTINCT CITY FROM STATION
WHERE RIGHT(CITY,1) NOT IN ('a','e','i','o','u')
