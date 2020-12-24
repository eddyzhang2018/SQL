# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
# Difficulty: Easy
# Score: 15

- MySQL using REGULAR EXPRESSION v1:

SELECT DISTINCT CITY FROM STATION
WHERE (CITY REGEXP '^[^aeiou]') OR (CITY REGEXP '[^aeiou]$')

- MySQL using REGULAR EXPRESSION v2:

SELECT DISTINCT CITY FROM STATION
WHERE (CITY NOT REGEXP '^[aeiou]') OR (CITY NOT REGEXP '[aeiou]$')

- MySQL using FUNCTION:

SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u') OR
      RIGHT(CITY, 1) NOT IN ('a','e','i','o','u')
    
- MySQL 
