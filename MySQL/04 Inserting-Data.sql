CREATE DATABASE dbSchool;
Use dbSchool;

Create table tblStudents (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);

--Inserting Data from the table "tblStudents"
-- syntax: INSERT INTO table_name (column1, column2, ...) VALUES (value1, value2, ...);

INSERT INTO tblStudents
(first_name, last_name, date_of_birth, email) values
("Josh","devx", "2005-01-29", "josh@gmail.com"),
("J","404", "2005-01-21", "james@gmail.com");