# Task: Write an SQL query to report the Capital gain/loss for each stock.
# Problem Statement: https://leetcode.com/problems/capital-gainloss/
# Difficulty: Medium

- MySQL query:

SELECT stock_name, SUM(CASE
                            WHEN operation = 'buy' THEN -price
                            ELSE price
                            END) AS capital_gain_loss FROM Stocks
GROUP BY stock_name;
