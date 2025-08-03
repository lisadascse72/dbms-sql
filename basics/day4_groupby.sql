-- Grouping students by grade and showing average marks per grade
SELECT grade, AVG(marks) AS avg_marks
FROM Students
GROUP BY grade;

-- Showing grades where average marks are more than 80
SELECT grade, AVG(marks) AS avg_marks
FROM Students
GROUP BY grade
HAVING AVG(marks) > 80;
