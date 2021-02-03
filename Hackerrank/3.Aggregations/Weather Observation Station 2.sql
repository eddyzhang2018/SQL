# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
# Difficulty: Easy
# Score: 15

- # MySQL

SELECT CONCAT(ROUND(SUM(LAT_N),2), ' ', ROUND(SUM(LONG_W),2))
FROM STATION
