CREATE DATABASE dbSchool;
USE dbSchool;

Create table tblStudents (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);

INSERT INTO tblStudents (student_id,first_name,last_name,date_of_birth,email) values
(1,"Josh","devx", "2005-01-29", "josh@gmail.com"),
(2,"J","404", "2005-01-21", "james@gmail.com");


-- Select all data from the table "tblStudents"
SELECT * FROM tblStudents;

-- Select specific columns from the table "tblStudents"
SELECT first_name, last_name FROM tblStudents;