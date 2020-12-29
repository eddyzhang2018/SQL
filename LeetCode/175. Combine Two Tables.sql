# Task: Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people
# Problem Statement: https://leetcode.com/problems/combine-two-tables/
# Difficulty: Easy

- MySQL query:

# can also use abbr for each table or schema. e.g. Person as p, Address as a. Then it is simple for on p.PersonID = a.PersonID.

SELECT FirstName, LastName, City, State
FROM Person
    LEFT JOIN Address
    ON Person.PersonId = Address.PersonId;
