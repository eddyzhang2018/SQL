# Problem Statement: https://leetcode.com/problems/duplicate-emails/
# Task: Write a SQL query to find all duplicate emails in a table named Person.
# Difficulty: Easy

- # MySQL query:

SELECT Email
FROM (SELECT Email, COUNT(Email) As cnt_Email FROM Person GROUP BY Email) AS tmp
WHERE cnt_Email > 1
