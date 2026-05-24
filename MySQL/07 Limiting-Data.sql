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

    -- Limit the number of records returned to 2 using "LIMIT" clause
    SELECT * FROM tblStudents LIMIT 2;
    -- output:
    -- student_id | first_name | last_name | age | date_of_birth | email
    -- 1          | Josh       | devx      | 21  | 2005-01-29    | josh@gmail.com
    -- 2          | J          | 404       | 12  | 2005-01-21    | james@gmail.com

    -- Get the record with the highest age using DESC and "LIMIT" clause
    SELECT * FROM tblStudents ORDER BY age DESC LIMIT 1;
    -- output:
    -- student_id | first_name | last_name | age | date_of_birth | email
    -- 3          | Apple      | App       | 29  | 2005-01-23    | apple@gmail.com

    -- Skip the first record and return the next 2 records using "OFFSET" keyword
    SELECT * FROM tblStudents ORDER BY age DESC LIMIT 2 OFFSET 1;
    -- output:
    -- student_id | first_name | last_name | age | date_of_birth | email
    -- 1          | Josh       | devx      | 21  | 2005-01-29    | josh@gmail.com
    -- 2          | J          | 404       | 12  | 2005-01-21    | james@gmail.com