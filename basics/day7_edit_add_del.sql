-- You are given a Products table with the following columns:

-- product_id (INT, primary key)

-- name (VARCHAR)

-- price (INT)

-- quantity (INT)

-- 🔸 Tasks:

-- Increase price of “Pen” by 2

-- Delete products with quantity < 100

-- Show all products after update/delete


-- Day 3: Practice UPDATE and DELETE on Products table

-- 1. Create table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(50),
    price INT,
    quantity INT
);

-- 2. Insert sample data
INSERT INTO Products VALUES
(1, 'Pen', 10, 100),
(2, 'Notebook', 50, 200),
(3, 'Eraser', 5, 80),
(4, 'Pencil', 7, 50);

-- 3. Increase price of Pen by 2
UPDATE Products
SET price = price + 2
WHERE name = 'Pen';

-- 4. Delete products with quantity less than 100
DELETE FROM Products
WHERE quantity < 100;

-- 5. Show final records
SELECT * FROM Products;
