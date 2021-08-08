# Problem Statement: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
# Difficulty: Easy
# Socre: 10

# MySQL:

SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION))
FROM CITY
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT
