# SQL

Here I save my SQL code from Hackerrack and Leetcode, I also save some people's code if they use different methods (their online user name, link are written in the reference line of the code)

I also provide some information about SQL in the following sections.

## SQL Function

* AVG() is a function which returns the mean value of a column. The column must only have numerical values.

* COUNT() is a function which returns number of rows for specified criterion. To do count on unique value, it can use COUNT(DISTINCT expression).

* For ROW_NUMBER in SQL Server, please refer to : https://www.c-sharpcorner.com/blogs/rownumber-function-with-partition-by-clause-in-sql-server1

## Statistic Functions

### How to get mode in MySQL?

In Excel, the formula =MODE() to return the most frequent values in a range of numeric values. However, there is no equivalent functions in MySQL.

However, we can always use some methods to get Mode in MySQL.

```
SELECT COUNT(numeric_values) AS Mode 
FROM table1
GROUP BY numeric_values
ORDER BY Mode DESC LIMIT 1;
```
So, we use COUNT in conjunction with GROUP BY to get counts for each numerci values in a column. and then use ORDER BY DESC LIMIT 1 to show the top count only.

## SQL others

`:=` is used to assign a value to a variable. 
