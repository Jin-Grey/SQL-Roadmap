CREATE DATABASE practice_db;

USE practice_db;

CREATE TABLE students (
id INT,
name VARCHAR(50),
age INT
);

INSERT INTO students VALUES (1,'Rahul',20);
INSERT INTO students VALUES (2,'Aman',21);

SELECT * FROM students;
