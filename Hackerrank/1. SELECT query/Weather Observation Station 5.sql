Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
Difficulty: Easy
Score: 30

- query 1
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY), CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 1;

