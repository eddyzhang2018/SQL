# Problem Statement: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
# Difficulty: Medium
# Max Score: 40

- MySQL query (with assign new variables)

SET @rowindex := -1;

SELECT ROUND(AVG(LAT_N),4)
FROM (
      SELECT @rowindex:=@rowindex+1 AS rowindex, 
             STATION.LAT_N AS LAT_N
      FROM STATION
      ORDER BY STATION.LAT_N
        ) AS temp
WHERE
temp.rowindex IN (FLOOR(@rowindex /2), CEIL(@rowindex/2))
