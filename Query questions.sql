-- list customers how contactlastName if it starts with "m"
SELECT * FROM customers WHERE contactLastName = ("%M");

SELECT * FROM employees;

--  list first and last name of sales reps that work in japan
SELECT  lastName, firstName FROM employees, offices  WHERE  country = "Japan" AND jobTitle LIKE "sales rep";

SELECT* FROM customers; 
SELECT* FROM payments;
SELECT*FROM orders;
SELECT*FROM orderdetails;

 -- show customers name and state, city and who has a credit limit of 50k and made a payment with in 30 days of last order
SELECT customerName, state, city, creditLimit   FROM  payments, customers, orders  WHERE creditLimit >= 50000;

-- list customers names who have a credit limit of 100k that made a payment 60K or larger 

SELECT customerName, country, creditLimit, amount FROM customers, payments WHERE creditLimit BETWEEN 85000 AND 100000 AND amount >= 60000;

-- show a list a customers who order items between 2003-01-30 and 2003-2-15  using customers and orders table display the custername and cumber in columns

SELECT customerName  customerNumber  FROM  customers, orders WHERE orderDate BETWEEN "2003-01-30" AND "2003-01-15";

--  List order numbers 
SELECT orderNumber, customerName  FROM orderdetails, customers WHERE quanityOrdered  30 AND priceEach >= 200;






