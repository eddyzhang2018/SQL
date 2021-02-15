# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
# Difficulty: Easy
# Score: 10

- # MySQL

SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7780
