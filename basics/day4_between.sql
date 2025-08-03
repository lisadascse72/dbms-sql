-- Students with marks between 70 and 90
SELECT * FROM Students
WHERE marks BETWEEN 70 AND 90;

-- Students with name in a given list
SELECT * FROM Students
WHERE name IN ('Lisa Das', 'Riya Mehta');
