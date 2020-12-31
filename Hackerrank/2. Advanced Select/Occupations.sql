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


- MySQL Query using DENSE_RANK():
# To work out this solution, I have a reference from Nobuhiro Hatano (@nobuh) 
# Link: https://www.hackerrank.com/challenges/occupations/forum/comments/285802.
# In his solution, he wrote a function to assign dense rank to each Name by Occupation
# However, with DENSE_RANK() in MySQL. We can assign the number directly.
                              
SELECT
MAX(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END) AS Doctor,
MAX(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END) AS Professor,
MAX(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END) AS Singer,
MAX(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END) AS Actor
FROM
(SELECT Name, Occupation, 
        DENSE_RANK() OVER(
        PARTITION BY Occupation
        ORDER BY NAME) as rnk
FROM OCCUPATIONS as o1) as o2
GROUP BY o2.rnk
