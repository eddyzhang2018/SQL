# Task: Write an SQL query to report the Capital gain/loss for each stock.
# Problem Statement: https://leetcode.com/problems/capital-gainloss/
# Difficulty: Medium

- MySQL query:

select stock_name, sum(case
                            when operation = 'buy' then -price
                            else price
                       end) as capital_gain_loss from Stocks
group by stock_name;
