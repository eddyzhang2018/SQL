# Task: Write an SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
# Problem Statement: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
# Difficulty: Easy


- MySQL query:

SELECT customer_id, COUNT(visit_id) as count_no_trans FROM Visits
WHERE visit_id NOT IN (SELECT DISTINCT visit_id as visit_id_unique from Transactions)
GROUP BY customer_id;

- MySQL query using JOIN:
#Reference: verisimilitude, https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/discuss/865760/Simplest-Just-a-LEFT-JOIN-No-SUB-Query.

SELECT
	customer_id,
	COUNT(Visits.visit_id) AS count_no_trans
FROM
	visits
LEFT JOIN Transactions
	ON Visits.visit_id = Transactions.visit_id
WHERE 
	Transactions.visit_id IS NULL
GROUP BY customer_id
