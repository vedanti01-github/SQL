CREATE DATABASE clgs;

USE clgs;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(rollno , name, marks, grade , city)
VALUES
(1,"abha",59,"C","wani"),
(2,"bhumi",96,"A","mumbai"),
(3,"chitra",76,"B","neri"),
(4,"disha",88,"A","warora"),
(5,"ekta",53,"C","pune"),
(6,"falguni",92,"A","pune"),
(7,"gayu",65,"B","mumbai");

SELECT * FROM student;
SELECT rollno , name , city FROM student;
SELECT DISTINCT city FROM student;
-- where clause--  
SELECT * FROM student where marks > 80;
SELECT * FROM student where city = "mumbai";
SELECT * FROM student where marks > 80 AND city = "mumbai";
SELECT * FROM student where marks > 70 OR city = "mumbai";
SELECT * FROM student where marks BETWEEN 70 AND 90;
SELECT * FROM student where city IN ("neri" , "mumbai" , "delhi" );
SELECT * FROM student where city NOT IN ("neri" , "mumbai" , "delhi");
-- limit clause --  
SELECT * FROM student where marks > 70 LIMIT 2;
-- order by clause --
SELECT * FROM student
ORDER BY marks DESC 
LIMIT 3;
-- aggregate function --  
SELECT COUNT(rollno) FROM student;
SELECT MIN(marks) FROM student;
SELECT MAX(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT SUM(marks) FROM student;
-- group by clause --
SELECT city , COUNT(rollno) FROM student 
GROUP BY city ORDER BY city;
-- having clause --
SELECT city , COUNT(rollno)
FROM student 
GROUP BY city
HAVING MAX(marks) > 90; 

-- command order --  
SELECT city , COUNT(name)
FROM student
WHERE marks > 80
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city;

-- UPDATE Command --
SET SQL_SAFE_UPDATES = 0;
UPDATE student
SET grade = "O"
WHERE grade = "A";
SELECT * FROM student;

UPDATE student
SET marks = marks + 1;

DROP DATABASE clgs;

-- ALTER Command --
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;  

ALTER TABLE student
MODIFY age VARCHAR(2);

INSERT INTO student(rollno , name , marks , age)
VALUES
(8 , "rocky" , 87 , 100);

ALTER TABLE student
CHANGE age stud_age INT;

INSERT INTO student(rollno , name , marks , stud_age)
VALUES
(8 , "rocky" , 87 , 100);

ALTER TABLE student
DROP COLUMN stud_age;

ALTER TABLE student
RENAME TO stud;

SELECT * FROM stud;

ALTER TABLE stud
RENAME TO student;

-- TRUNCATE Command-- 
TRUNCATE TABLE student; 


    






