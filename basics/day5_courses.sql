-- Day 5: Courses table with constraints

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    credits INT CHECK (credits BETWEEN 1 AND 5)
);

INSERT INTO Courses VALUES
(501, 'Database Systems', 4),
(502, 'Operating Systems', 3),
(503, 'Data Structures', 4),
(504, 'Machine Learning', 5);

-- Select all courses
SELECT * FROM Courses;

-- Show courses with 4 or more credits
SELECT name FROM Courses WHERE credits >= 4;
