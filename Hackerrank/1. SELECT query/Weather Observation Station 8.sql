# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
# Difficulty: Easy
# Score: 15

- MySQL query

SELECT DISTINCT CITY FROM STATION
WHERE 
    (CITY LIKE 'a%' OR 
     CITY LIKE 'e%' OR 
     CITY LIKE 'i%' OR 
     CITY LIKE 'o%' OR 
     CITY LIKE 'u%') 
     AND
    (CITY LIKE '%a' OR 
     CITY LIKE '%e' OR 
     CITY LIKE '%i' OR 
     CITY LIKE '%o' OR 
     CITY LIKE '%u');


- MySQL query using LIKE and IN operator AND LEFT() and RIGHT() fucntion
# reference: Rex Liu, https://www.hackerrank.com/challenges/weather-observation-station-8/forum

WHERE LEFT(CITY,1) in ('a','e','i','o','u')
    AND RIGHT(CITY,1) in ('a','e','i','o','u')

SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY,1) in ('a','e','i','o','u')
    AND RIGHT(CITY,1) in ('a','e','i','o','u')
