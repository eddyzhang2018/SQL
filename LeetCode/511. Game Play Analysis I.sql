# Problem Statement: https://leetcode.com/problems/game-play-analysis-i/
# Task: Write an SQL query that reports the first login date for each player.
# Difficulty: Easy

- MySQL query:

SELECT player_id, MIN(event_date) as first_login
FROM Activity
GROUP BY player_id
