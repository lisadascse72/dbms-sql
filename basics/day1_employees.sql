-- Day 1: Basic SQL table and queries

-- 1. Create the Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    joining_date DATE
);

-- 2. Insert sample data
INSERT INTO Employees (emp_id, name, department, salary, joining_date) VALUES
(101, 'Lisa Das', 'HR', 45000, '2022-06-15'),
(102, 'Ravi Kumar', 'Engineering', 70000, '2021-08-01'),
(103, 'Nisha Roy', 'Marketing', 52000, '2023-01-10'),
(104, 'Aditya Singh', 'Engineering', 68000, '2020-11-20');

-- 3. Select all records
SELECT * FROM Employees;

-- 4. Filter: Show only employees from Engineering
SELECT * FROM Employees
WHERE department = 'Engineering';

-- 5. Filter: Show employees with salary > 60000
SELECT name, salary FROM Employees
WHERE salary > 60000;
