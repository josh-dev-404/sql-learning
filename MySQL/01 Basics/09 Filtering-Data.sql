CREATE DATABASE dbProduct;
USE dbProduct;

    CREATE TABLE tblProduct (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL
    );
    
    INSERT INTO tblProduct (product_name, quantity, price) VALUES
    ("Ballpen", 20, 10),
    ("Notebook", 30, 20),
    ("Tape", 24, 17);

/*
Filter data is a way to retrieve specific records 
from a table based on certain conditions.
*/
-- The "WHERE" clause is used to specify the conditions for filtering data.
SELECT * FROM tblProduct WHERE product_name = "Ballpen";
-- output:
-- product_id | product_name | quantity | price
-- 1          | Ballpen      | 20       | 10.00
SELECT product_name, price FROM tblProduct WHERE price > 15;
-- output:
-- product_id | product_name | quantity | price