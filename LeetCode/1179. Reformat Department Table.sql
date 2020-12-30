# Task: Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.
# Problem Statement: https://leetcode.com/problems/reformat-department-table/
# Difficulty: Easy

- MS SQL Server (as use of PIVOT):

SELECT id,
    Jan AS Jan_Revenue,
    Feb AS Feb_Revenue, 
    Mar AS Mar_Revenue, 
    Apr AS Apr_Revenue,
    May AS May_Revenue,
    Jun AS Jun_Revenue,
    Jul AS Jul_Revenue,
    Aug AS Aug_Revenue,
    Sep AS Sep_Revenue,
    Oct AS Oct_Revenue,
    Nov AS Nov_Revenue,
    Dec AS Dec_Revenue
FROM Department
PIVOT
(SUM(revenue)
 FOR month in ("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
 ) AS PVT
Order by id ASC;

