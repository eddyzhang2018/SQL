# Problem Statement: https://leetcode.com/problems/classes-more-than-5-students/
# Difficulty: Easy

# MySQL

SELECT A.class AS class
FROM (SELECT class, COUNT(DISTINCT student) as NUMB FROM courses GROUP BY class) AS A
WHERE A.NUMB >= 5;

# two problems must be noticed - use of group by and possibly duplicate entries.
