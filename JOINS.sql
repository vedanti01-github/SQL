CREATE DATABASE Joins;

USE Joins;

CREATE TABLE student (
id INT PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO student (id , name )
VALUES
(101 , "bob"),
(102 , "chasey"),
(103 , "alice");

SELECT * FROM student;

CREATE TABLE course (
id INT,
course_name VARCHAR(20)
);

DROP TABLE course;

INSERT INTO course(id , course_name)
VALUES
(102 , "english"),
(105 , "math"),
(101 , "hindi"),
(107 , "marathi");

SELECT * FROM course;

-- INNER JOIN --  
SELECT * 
FROM student as s
INNER JOIN course as c 
ON s.id = c.id;

-- LEFT OUTER JOIN --  
SELECT * 
FROM student as s
LEFT JOIN course as c 
ON s.id = c.id;

-- RIGHT OUTER JOIN -- 
SELECT * 
FROM student as s
RIGHT JOIN course as c 
ON s.id = c.id;

-- FULL OUTER JOIN -- 
SELECT * 
FROM student as s
LEFT JOIN course as c 
ON s.id = c.id
UNION
SELECT * 
FROM student as s
RIGHT JOIN course as c 
ON s.id = c.id;

-- LEFT EXCLUSIVE JOIN -- 
SELECT * 
FROM student as s
LEFT JOIN course as c 
ON s.id = c.id
WHERE c.id IS NULL;

-- RIGHT EXCLUSIVE JOIN -- 
SELECT * 
FROM student as s
RIGHT JOIN course as c 
ON s.id = c.id
WHERE s.id IS NULL;

-- SELF JOIN -- 
CREATE TABLE Employee (
id INT,
name VARCHAR(20),
manager_ID INT
);

INSERT INTO Employee(id , name , manager_ID)
VALUES
(101 , "alice" , 103),
(102 , "bob" , 104),
(103 , "casey" , NULL),
(104 , "donald" , 103);

SELECT * FROM Employee;

SELECT a.name as manager_name , b.name 
FROM Employee as a
JOIN Employee as b
ON a.id = b.manager_ID;

-- UNION -- 
SELECT name FROM Employee
UNION
SELECT name FROM Employee;

-- UNION ALL -- 
SELECT name FROM Employee
UNION ALL
SELECT name FROM Employee;