# SQL
SQL query code

My practice SQL code from LeetCode and Hackerrank


## Function

COUNT() - for unique count - it can use COUNT(DISTINCT expression).


## Statistic Functions

How to get mode in MySQL?

In Excel, the formulat =MODE() to return the most frequent values in a range of numeric values. However, there is no equivalent functions in MySQL.

However, we can always use some methods to get Mode in MySQL.

```
SELECT COUNT(numeric_values) AS Mode 
FROM table1
GROUP BY numeric_values
ORDER BY Mode DESC LIMIT 1;
```
So, we use COUNT in conjunction with GROUP BY to get counts for each numerci values in a column. and then use ORDER BY DESC LIMIT 1 to show the top count only.
