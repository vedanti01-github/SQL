CREATE DATABASE PQ4;

USE PQ4;

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

ALTER TABLE student
CHANGE name full_name VARCHAR(20);

SET SQL_SAFE_UPDATES = 0;
DELETE FROM student 
WHERE marks < 80;

ALTER TABLE student
DROP COLUMN grade;
