# Problem Statement: https://leetcode.com/problems/top-travellers/
# Task: Write an SQL query to report the distance travelled by each user.
# Difficulty: Easy

- MySQL query (CASE Statement):

SELECT a.name, CASE WHEN SUM(b.distance) IS NULL THEN 0 ELSE SUM(b.distance) END AS travelled_distance
FROM Users as a
LEFT JOIN Rides as b
ON a.id = b.user_id
GROUP BY name
ORDER BY travelled_distance DESC, name ASC

- MySQL query (If Statement):

SELECT a.name, IF(SUM(b.distance) IS NULL,0,SUM(b.distance))AS travelled_distance
FROM Users as a
LEFT JOIN Rides as b
ON a.id = b.user_id
GROUP BY name
ORDER BY travelled_distance DESC, name ASC
