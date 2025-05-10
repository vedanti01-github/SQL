CREATE DATABASE SQLVIEWS;
USE SQLVIEWS;

CREATE TABLE STUDS (
rollno INT PRIMARY KEY,
name VARCHAR(20),
marks int,
city VARCHAR(20)
);

INSERT INTO STUDS (rollno , name , marks , city)
VALUES
(101 , "anil" , 78 , "pune"),
(102 , "bhumi" , 93 , "mumbai"),
(103 , "chetan" , 85, "mumbai"),
(104 , "dev" , 96, "delhi"),
(105 , "ekta" , 92 , "delhi"),
(106 , "falguni" , 82, "delhi");

SELECT * FROM STUDS;

CREATE VIEW studView AS
SELECT rollno , name , marks FROM STUDS;

SELECT * FROM studView;

DROP VIEW studView;