-- Day 4: Attendance table using date filter and alias

CREATE TABLE Attendance (
    emp_id INT,
    name VARCHAR(50),
    date DATE,
    status VARCHAR(10)
);

INSERT INTO Attendance VALUES
(101, 'Lisa Das', '2025-07-28', 'Present'),
(102, 'Ravi Kumar', '2025-07-28', 'Absent'),
(101, 'Lisa Das', '2025-07-29', 'Present'),
(102, 'Ravi Kumar', '2025-07-29', 'Present');

-- Select records from July 28 to July 29
SELECT * FROM Attendance
WHERE date BETWEEN '2025-07-28' AND '2025-07-29';

-- Count number of present days per employee
SELECT name, COUNT(*) AS present_days
FROM Attendance
WHERE status = 'Present'
GROUP BY name;
