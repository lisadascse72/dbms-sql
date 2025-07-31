-- Day 3: Products table with update/delete operations

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(50),
    price INT,
    quantity INT
);

INSERT INTO Products VALUES
(301, 'Notebook', 50, 100),
(302, 'Pen', 10, 300),
(303, 'Pencil', 5, 500),
(304, 'Eraser', 8, 200);

-- Update price of 'Pen'
UPDATE Products SET price = 12 WHERE name = 'Pen';

-- Delete product with quantity < 100
DELETE FROM Products WHERE quantity < 100;

-- Show remaining products
SELECT * FROM Products;
