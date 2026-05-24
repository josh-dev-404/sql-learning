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
    
    -- Calculate the total price for each product and sort in descending order, then limit to top 2 products
    -- AS keyword is used to assign an alias "TOTAL" to the calculated column quantity*price
    
    SELECT product_name, quantity*price AS TOTAL 
    FROM tblProduct ORDER BY TOTAL DESC LIMIT 2;
    -- output:
    -- product_name | TOTAL
    -- Notebook     | 600.00
    -- Tape         | 408.00