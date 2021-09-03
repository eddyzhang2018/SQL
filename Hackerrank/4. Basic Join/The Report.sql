# Problem Statement: https://www.hackerrank.com/challenges/the-report/problem
# Difficulty: Medium
# Max Score: 20

# MySQL

SELECT IF(Grade < 8 , NULL, Students.Name), Grades.Grade, Students.Marks FROM Students
JOIN Grades On Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY Grades.Grade DESC, Students.Name ASC
