# Problem Statement: https://www.hackerrank.com/challenges/asian-population/problem
# Difficulty: Easy
# Score: 10

- MySQL

SELECT SUM(CITY.POPULATION) FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = "Asia"
