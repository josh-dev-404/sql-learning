CREATE DATABASE dbSchool;
USE dbSchool;

CREATE TABLE tblStudents (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE
);

INSERT INTO tblStudents (first_name,last_name,age,date_of_birth,email) values
("Josh","devx",21, "2005-01-29", "josh@gmail.com"),
("J","404",12, "2005-01-21", "james@gmail.com"),
("Apple","App", 29, "2005-01-23", "apple@gmail.com");

-- Sort data in ascending order by age using "ORDER BY" clause
select * from tblStudents ORDER BY age;
-- output:
-- student_id | first_name | last_name | age | date_of_birth | email
-- 2          | J          | 404       | 12  | 2005-01-21    | james@gmail.com
-- 1          | Josh       | devx      | 21  | 2005-01-29    | josh@gmail.com
-- 3          | Apple      | App       | 29  | 2005-01-23    | apple@gmail.com

-- Sort data in descending order by age using "DESC" keyword
SELECT * FROM tblStudents ORDER BY age DESC;
-- output:
-- student_id | first_name | last_name | age | date_of_birth | email
-- 3          | Apple      | App       | 29  | 2005-01-23    | apple@gmail.com
-- 1          | Josh       | devx      | 21  | 2005-01-29    | josh@gmail.com
-- 2          | J          | 404       | 12  | 2005-01-21    | james@gmail.com

-- Sort data in ascending order by last_name using "ASC" keyword
SELECT last_name, age FROM tblStudents ORDER BY last_name ASC;
-- output:
-- last_name | age
-- 404       | 12
-- App       | 29
-- devx      | 21