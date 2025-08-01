-- Day 2: Students table with filtering and sorting

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

-- Show only students from CSE
SELECT * FROM Students WHERE branch = 'CSE';

-- Show students scoring above 75, sorted by marks descending
SELECT name, marks FROM Students
WHERE marks > 75
ORDER BY marks DESC;
