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
