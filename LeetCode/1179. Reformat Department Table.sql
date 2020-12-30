# Task: Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.
# Problem Statement: https://leetcode.com/problems/reformat-department-table/
# Difficulty: Easy

- MS SQL Server (as use of PIVOT) query:

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

- MySQL query:

SELECT id,
        SUM(CASE WHEN month = 'Jan' THEN revenue ELSE NULL END) AS Jan_Revenue,
        SUM(CASE WHEN month = 'Feb' THEN revenue ELSE NULL END) AS Feb_Revenue,
        SUM(CASE WHEN month = 'Mar' THEN revenue ELSE NULL END) AS Mar_Revenue,
        SUM(CASE WHEN month = 'Apr' THEN revenue ELSE NULL END) AS Apr_Revenue,
        SUM(CASE WHEN month = 'May' THEN revenue ELSE NULL END) AS May_Revenue,
        SUM(CASE WHEN month = 'Jun' THEN revenue ELSE NULL END) AS Jun_Revenue,
        SUM(CASE WHEN month = 'Jul' THEN revenue ELSE NULL END) AS Jul_Revenue,
        SUM(CASE WHEN month = 'Aug' THEN revenue ELSE NULL END) AS Aug_Revenue,
        SUM(CASE WHEN month = 'Sep' THEN revenue ELSE NULL END) AS Sep_Revenue,
        SUM(CASE WHEN month = 'Oct' THEN revenue ELSE NULL END) AS Oct_Revenue,
        SUM(CASE WHEN month = 'Nov' THEN revenue ELSE NULL END) AS Nov_Revenue,
        SUM(CASE WHEN month = 'Dec' THEN revenue ELSE NULL END) AS Dec_Revenue
FROM Department
GROUP BY id
ORDER BY id ASC;
