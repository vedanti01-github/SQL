CREATE DATABASE SSQ;
USE SSQ;

CREATE TABLE students (
rollno INT PRIMARY KEY,
name VARCHAR(20),
marks int,
city VARCHAR(20)
);

INSERT INTO students (rollno , name , marks , city)
VALUES
(101 , "anil" , 78 , "pune"),
(102 , "bhumi" , 93 , "mumbai"),
(103 , "chetan" , 85, "mumbai"),
(104 , "dev" , 96, "delhi"),
(105 , "ekta" , 92 , "delhi"),
(106 , "falguni" , 82, "delhi");

SELECT * FROM students;
DROP TABLE students;

SELECT AVG(marks)
FROM students;

SELECT name , marks
FROM students 
WHERE marks > (SELECT AVG(marks)FROM students) 
ORDER BY marks;

SELECT rollno
FROM students 
WHERE rollno % 2 = 0;

SELECT name , rollno
FROM students 
WHERE rollno IN (SELECT rollno
FROM students 
WHERE rollno % 2 = 0);

SELECT name 
FROM students 
WHERE city = "delhi";

SELECT MAX(marks) FROM
	(SELECT *
	FROM students 
	WHERE city = "delhi") as temp;
    
SELECT MAX(marks) FROM students 
WHERE city = "delhi";