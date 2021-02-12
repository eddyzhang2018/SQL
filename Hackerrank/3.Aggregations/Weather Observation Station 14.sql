# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-14/problem
# Difficulty: Easy
# Score: 10

- # MySQL:

SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345
