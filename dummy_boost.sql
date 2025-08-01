-- Dummy SQL Script to help GitHub detect SQL language
-- Covers table creation, inserts, joins, subqueries, functions, constraints

-- 1. Create departments table
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE
);

-- 2. Create employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- 3. Insert into Departments
INSERT INTO Departments VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Finance');

-- 4. Insert into Employees
INSERT INTO Employees VALUES
(101, 'Lisa Das', 1, 45000.00, '2022-06-15'),
(102, 'Ravi Kumar', 2, 72000.00, '2021-09-01'),
(103, 'Nisha Roy', 3, 56000.00, '2023-01-10'),
(104, 'Aditya Singh', 2, 69000.00, '2020-11-20'),
(105, 'Meera Joshi', 4, 48000.00, '2022-04-12');

-- 5. Select all employees with department names (JOIN)
SELECT e.emp_id, e.emp_name, d.dept_name, e.salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;

-- 6. Count employees per department
SELECT d.dept_name, COUNT(e.emp_id) AS total_employees
FROM Departments d
LEFT JOIN Employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

-- 7. Show employees with salary > average
SELECT emp_name, salary FROM Employees
WHERE salary > (
    SELECT AVG(salary) FROM Employees
);

-- 8. Use CASE to assign grade
SELECT emp_name, salary,
    CASE
        WHEN salary >= 70000 THEN 'A'
        WHEN salary >= 60000 THEN 'B'
        WHEN salary >= 50000 THEN 'C'
        ELSE 'D'
    END AS grade
FROM Employees;

-- 9. Update salary of Engineering department by 10%
UPDATE Employees
SET salary = salary * 1.10
WHERE dept_id = (
    SELECT dept_id FROM Departments WHERE dept_name = 'Engineering'
);

-- 10. Delete employees hired before 2021
DELETE FROM Employees
WHERE hire_date < '2021-01-01';
