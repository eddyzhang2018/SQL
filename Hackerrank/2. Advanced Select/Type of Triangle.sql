# Problem Statement: https://www.hackerrank.com/challenges/what-type-of-triangle/problem
# Difficulty: Easy
# Score: 20

- MySQL query:

SELECT
CASE
    WHEN (A+B<=C OR A+C<=B OR B+C<=A) THEN 'Not A Triangle'
    WHEN (A=B AND B=C) THEN 'Equilateral'
    WHEN (A=B OR B=C OR A=C) THEN 'Isosceles'
    ELSE 'Scalene'
END AS opt
FROM TRIANGLES;

- MySQL query using two CASE statements:

# Reference: Nguyễn Tuấn Anh (@vitamin), https://www.hackerrank.com/challenges/what-type-of-triangle/forum

SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;

- MySQL query using FUNCTION:
# Reference: Andrew Hausch (@Unremarkable), https://www.hackerrank.com/challenges/what-type-of-triangle/forum

SELECT CASE
    WHEN 2 * GREATEST(A, B, C) >= (A + B + C) THEN "Not A Triangle"
    WHEN A = B AND A = C                      THEN "Equilateral"
    WHEN A = B OR A = C OR B = C              THEN "Isosceles"
                                              ELSE "Scalene"
    END
FROM TRIANGLES
