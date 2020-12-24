# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-12/problem
# Difficulty: Easy
# Score: Easy

- MySQL using REGULAR EXPRESSION v1:

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou].*[^aeiou]$'


- MySQL using REGULAR EXPRESSION v2:

SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT REGEXP '^[aeiou]' AND CITY NOT REGEXP '[aeiou]$'

