-- Day 2: Students table with basic filters and sorting

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    branch VARCHAR(30),
    marks INT
);

INSERT INTO Students VALUES
(201, 'Ananya Singh', 'CSE', 85),
(202, 'Rohit Das', 'ECE', 76),
(203, 'Sneha Patra', 'CSE', 91),
(204, 'Abhi Rao', 'ME', 67);

-- Select all CSE students
SELECT * FROM Students WHERE branch = 'CSE';

-- Show students scoring above 75, sorted by marks descending
SELECT name, marks FROM Students
WHERE marks > 75
ORDER BY marks DESC;


SELECT DISTINCT grade FROM Students;

SELECT * FROM Students
WHERE name LIKE 'S%';

SELECT * FROM Students
WHERE score IS NULL;

-- Create Departments table
CREATE TABLE Departments (
    grade CHAR(1),
    dept_name VARCHAR(30)
);

INSERT INTO Departments VALUES
('A', 'Engineering'),
('B', 'Marketing'),
('C', 'HR');

-- Join Students with Departments
SELECT s.name, s.grade, d.dept_name
FROM Students s
JOIN Departments d
ON s.grade = d.grade;

SELECT * FROM Students
ORDER BY grade ASC, score DESC;
