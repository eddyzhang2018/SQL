# Problem Statement: https://leetcode.com/problems/warehouse-manager/
# Task: Write an SQL query to report, How much cubic feet of volume does the inventory occupy in each warehouse.
# Difficulty: Easy

- MySQL query:

SELECT a.name AS warehouse_name, SUM(a.units*b.Width*b.Length*b.Height) AS volume
FROM Warehouse AS a
JOIN Products AS b
ON a.product_id = b.product_id
GROUP BY a.name
