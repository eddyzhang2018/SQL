# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
# Score: Score30
# Difficulty: Medium

- # MySQL query

SELECT FORMAT(SQRT(POWER((MAX(LAT_N) - MIN(LAT_N)),2) + POWER((MAX(LONG_W) - MIN(LONG_W)), 2)),4)
FROM STATION
