# SQL

Here I save my SQL code from Hackerrack and Leetcode, I also save some people's code if they use different methods (their online user name, link are written in the reference line of the code)

I also provide some information about SQL in the following sections.

## Arithmetic Operation in SQL



## SQL Function

* AVG() is a function which returns the mean value of a column. The column must only have numerical values.

* CONCAT() is a function adding two string value together.

```
  SELECT CONTACT('Hello','World') as new

  OUTPUT: 
  new
  HelloWorld

```

* COUNT() is a function which returns number of rows for specified criterion. To do count on unique value, it can use COUNT(DISTINCT expression).

* FIND_IN_SET(string, string list). The function returns the (first) position of the string (first input in the formula) in the string list (the second input in the formula). It returns 0 when can't find or the string list is empty. It returns NULL when the string list is NULL. Here are two example to clarify what it can find and can't.

```
SELECT FIND_IN_SET("q", "s,q,l")

OUTPUT:
2

SELECT FIND_IN_SET("q", "s,q,l,s,q,l")

OUTPUT:
2

SELECT FIND_IN_SET("q", "sql")

OUTPUT:
0

```

* GROUP_CONCAT(). The function returns a string (value) with concatenated __non-NULL__ value from a group. A good example can be found here: https://www.w3resource.com/mysql/aggregate-functions-and-grouping/aggregate-functions-and-grouping-group_concat.php

* ROUND(var, decimicals). Performing rounding of numbers to digits specified in the function.

* SUBSTRING() is a function which extracts some parts from a string.

```
  SELECT SUBSTRING('SQL is awesome', 1, 3) AS newString;

  OUTPUT: 

  newString
  SQL

```

* TRUNCATE(number, decimals) truncates a number to a specified digits of decimal places.

```
  SELECT TRUNCATE(255.998877, 5)
  
  OUTPUT:
  
  255.99887

```

* For ROW_NUMBER in SQL Server, please refer to : https://www.c-sharpcorner.com/blogs/rownumber-function-with-partition-by-clause-in-sql-server1

### Date Function Group

Some functions in SQL helps to manipulate date releted data. Here is a brief list of them:

* DATE_ADD(date, INTERVAL value addunit). It allows to add a date/time interval to a date and return the date, and the three parameters are all required. The date variable can either be a single data point or a date variable column (set). Interval is a must input where value addunit tells the unit (e.g. MINUTE, HOUR, DAY ect.) to add and how much to add. 

```
  SELECT DATE_ADD("2018-09-14", INTERVAL -2 MONTH);
  
  OUTPUT:
  2018-07-14
```

* DATEDIFF(date1, date2). The function returns the number of days between the two dates.

```
 SELECT DATEDIFF("2021-01-01", "2020-12-25");
 
 OUTPUT:
 7

```

* TO_DAYS()

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

## SQL resources

The website https://sqliteonline.com/ provide an online IDE environment for SQL. You can create your schema and test if your query works when you don't want to open your desktop version SQL.
