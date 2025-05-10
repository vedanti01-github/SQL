CREATE DATABASE xyz;
USE xyz;
CREATE TABLE details(
id INT PRIMARY KEY,
name VARCHAR(20),
salary INT
);
INSERT INTO details(id , name , salary)
VALUES
(1 , "adam", 25000),
(2 , "bob" , 30000),
(3 , "chasey" , 40000);
SELECT * FROM details;