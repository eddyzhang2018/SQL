# Problem Statement: https://www.hackerrank.com/challenges/occupations/problem
# Difficulty: Medium
# Score: 30

- MS SQL Server Query (for use of Pivot):

SELECT
    Doctor,
    Professor,
    Singer,
    Actor
FROM 
(SELECT ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY NAME) AS RowNumber, * FROM OCCUPATIONS) AS tbl_1
PIVOT
(MIN(Name) FOR Occupation in (Doctor, Professor, Singer, Actor)) AS PVT;
