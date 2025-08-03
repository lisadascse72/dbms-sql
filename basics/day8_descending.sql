
-- You are managing a table named Students with the following columns:

-- student_id (INT, primary key)

-- name (VARCHAR)

-- marks (INT)

-- grade (CHAR)

-- Perform the following tasks:

-- Create the Students table.

-- Insert at least 5 students with varying marks and grades.

-- Display all students sorted by marks in descending order.

-- Display the top 3 scoring students.

-- Show the average marks of all students.

-- Count how many students got grade 'A'.

-- Day 4: ORDER BY, LIMIT, and Aggregates

-- 1. Create the table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade CHAR(1)
);

-- 2. Insert sample data
INSERT INTO Students VALUES
(1, 'Lisa Das', 88, 'A'),
(2, 'Ravi Kumar', 76, 'B'),
(3, 'Sneha Roy', 91, 'A'),
(4, 'Arjun Verma', 63, 'C'),
(5, 'Riya Mehta', 85, 'B');

-- 3. Display all students sorted by marks (highest first)
SELECT * FROM Students
ORDER BY marks DESC;

-- 4. Display top 3 students based on marks
SELECT * FROM Students
ORDER BY marks DESC
LIMIT 3;

-- 5. Find the average marks
SELECT AVG(marks) AS average_marks FROM Students;

-- 6. Count number of students with grade 'A'
SELECT COUNT(*) AS count_A_grade FROM Students
WHERE grade = 'A';
