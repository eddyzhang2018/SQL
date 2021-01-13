# Problem Statement: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
# Difficulty: Medium
# Score: 30

- MySQL query (use of CASE):

SELECT N,
    CASE 
    WHEN P IS NULL THEN 'Root'
    WHEN N IN (SELECT DISTINCT a.P FROM BST AS a) THEN 'Inner'
    ELSE 'Leaf' END as OPT
FROM BST
ORDER BY N
