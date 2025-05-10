CREATE DATABASE FK;
USE FK;
CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(20)
);
INSERT INTO dept(id , name)
VALUES
(101 , "Science"),
(102 , "Arts"),
(103 , "Commerce");
SELECT * FROM dept;
UPDATE dept
SET id = 104
WHERE id = 103;
CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(20),
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
INSERT INTO teacher(id , name , dept_id)
VALUES
(1 , "adam" , 103),
(2 , "bob" , 101),
(3 , "casey" , 102),
(4 , "donald" , 101);
SELECT * FROM teacher;
DROP DATABASE FK;
