# Problem Statement: https://www.hackerrank.com/challenges/the-pads/problem
# Difficult: Medium
# Score: 30

- MySQL query:

SELECT CONCAT(Name,"(", LEFT(Occupation,1), ")") as Opt1 FROM OCCUPATIONS
ORDER BY Name;
SELECT CONCAT("There are a total of", " ", imm1, " ", LCASE(imm2), "s.") FROM 
(SELECT COUNT(Occupation) as imm1, Occupation as imm2 FROM OCCUPATIONS
 GROUP By Occupation
 Order By imm1, imm2) as intermediate_table;
