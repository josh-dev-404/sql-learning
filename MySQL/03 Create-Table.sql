CREATE DATABASE dbSchool;
Use dbSchool; -- Select the database to use for creating tables

-- Create a table named tblStudents
-- syntax: CREATE TABLE table_name (column1 datatype, column2 datatype, ...);
Create table tblStudents (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);