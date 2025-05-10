CREATE DATABASE company1;
USE company1;

CREATE TABLE employee(
id INT PRIMARY KEY,
em_name VARCHAR(20),
sal INT NOT NULL
);

SELECT * FROM employee; 

INSERT INTO employee (id , em_name , sal)
VALUES
(101 , "ABHA" , 50000),
(102 , "BHUMI" , 45800),
(103 , "CHARU" , 65000);

INSERT INTO employee VALUES(104 , "DISHA" , 52000);
