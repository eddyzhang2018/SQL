# Task: Write a query to print the sum of all total investment values in 2016 (TIV_2016), 
#       to a scale of 2 decimal places, for all policy holders who meet the following criteria: 
            # Have the same TIV_2015 value as one or more other policyholders.
            # Are not located in the same city as any other policyholder (i.e.: the (latitude, longitude) attribute pairs must be unique)
# Problem Statement: https://leetcode.com/problems/investments-in-2016/
# Difficulty: Medium

SELECT ROUND(SUM(insurance.TIV_2016),2) AS TIV_2016 FROM insurance
WHERE PID IN 
(SELECT PID FROM insurance GROUP BY LAT, LON HAVING COUNT(*) = 1 )
AND PID NOT IN 
(SELECT PID FROM insurance GROUP BY TIV_2015 HAVING COUNT(*) = 1 ) 
