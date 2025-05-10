CREATE DATABASE PQ3;
USE PQ3;
CREATE TABLE payment (
cust_id INT ,
cust_name VARCHAR(20),
mode VARCHAR(20),
city VARCHAR(20)
);

INSERT INTO payment (cust_id , cust_name , mode , city)
VALUES
(101 , "abha" , "Netbanking" , "wani" ),
(102 , "bhusra" , "Credit Card" , "akola"),
(103 , "chirta" , "Credit Card" , "wardha"),
(104 , "disha" , "Netbanking" , "nagpur" ),
(105 , "falguni" , "Credit Card" , "mule"),
(106 , "ekta" , "Debit Card" , "akole"),
(107 , "gargi" , "Debit Card" , "pune"),
(108 , "harshi" , "Netbanking" , "nagar" ),
(109 , "kiki" , "Netbanking" , "mumbai" ),
(110 , "muni" , "Credit Card" , "nagri");

SELECT * FROM payment;

SELECT mode , COUNT(cust_id) FROM payment 
GROUP BY mode;







