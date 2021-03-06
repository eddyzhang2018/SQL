# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
# Difficulty: Easy
# Score: 30

- MySQL query 1: USE TWO QUERIES
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY), CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1;

- MySQL query 2: USE UNION FUNCTION
(SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY), CITY LIMIT 1)
UNION
(SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1)
