use classicmodels;

SELECT * FROM customers WHERE country = "USA";
SELECT * FROM customers WHERE customerName LIKE "A%";
SELECT customerName FROM customers WHERE postalCode IN ("10100", "44000", "75016"); 
SELECT customerName AS "Name" FROM customers;
SELECT customerName, phone FROM customers WHERE creditLimit >= 650 AND salesRepEmployeeNumber = 1165;