# Problem Statement: https://leetcode.com/problems/rank-scores/
# Task: Write a SQL query to rank scores. If there is a tie between two scores, both should have the same ranking. 
#       Note that after a tie, the next ranking number should be the next consecutive integer value.
# Difficulty: Medium

- # MySQL (using Dense_Rank())

SELECT Score as score, DENSE_RANK() OVER(ORDER BY Score DESC) AS `Rank`
FROM Scores
