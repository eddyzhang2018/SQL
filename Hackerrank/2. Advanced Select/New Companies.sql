# Problem Statement: https://www.hackerrank.com/challenges/the-company/problem
# Difficulty: Medium
# Score: 30

- # MySQL query (without using JOINS):

SELECT  c.company_code, 
        c.founder, 
        COUNT(DISTINCT lm.lead_manager_code), 
        COUNT(DISTINCT sm.senior_manager_code), 
        COUNT(DISTINCT m.manager_code), 
        COUNT(DISTINCT e.employee_code)
FROM Company AS c, 
     Lead_Manager AS lm, 
     Senior_Manager AS sm, 
     Manager AS m, 
     Employee AS e
WHERE c.company_code = lm.company_code AND 
      lm.company_code = sm.company_code AND 
      sm.company_code = m.company_code AND 
      m.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;

- # MySQL query (using sub-query and makes count in subqueries)
