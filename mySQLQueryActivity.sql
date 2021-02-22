-- show me all the customers who's last names start with "m" | Returns Null / 0 records
-- SELECT * FROM customers WHERE contactLastName = ("%M");

-- show me the NUMBER of RECORDS in the employees table | Returns 1 record
-- SELECT COUNT(*) FROM employees;

-- show me all employees in EMPLOYEES table | Returns 23 records
-- SELECT * FROM employees;

-- show me the last names and first names of sales reps who work in Japan | Returns 17 records
-- SELECT  lastName, firstName FROM employees, offices  WHERE  country = "Japan" AND jobTitle LIKE "sales rep";

-- show me all records in CUSTOMERS table | Returns 122 records
-- SELECT* FROM customers;

-- show me all records in PAYMENTS table | Returns 273 records
-- SELECT* FROM payments;

-- show me all records in ORDERS table | Returns 326 records
-- SELECT * FROM ORDERS;

-- show me all records from ORDERDETAILS table | Returns 1,000 records
-- SELECT * FROM orderdetails;

-- show customers (name, city, state & credit limit) with a credit limit of 50k AND who have payments within 30 days of their last order | Returns 1,000 records
-- SELECT customerName, state, city, creditLimit FROM payments, customers, orders WHERE creditLimit >= 50000;

-- show names of customers (name, country & credit limit) with a credit limit betw $85-100k who have made a payment 60K or larger | Returns 340 records 
-- SELECT customerName, country, creditLimit, amount FROM customers, payments WHERE creditLimit BETWEEN 85000 AND 100000 AND amount >= 60000;

-- show customers (name & customer number) who ordered items between Jan 30, 2003 and Feb 15, 2003 using customers and orders table display the custername and number in columns | Returned Null/0 records
-- SELECT customerName customerNumber FROM customers, orders WHERE orderDate BETWEEN "2003-01-30" AND "2003-01-15";

-- show me all the customers with their order number who ordered more than 30 items at $200 or more per item | Returns 1,000 records
-- SELECT orderNumber, customerName FROM orderdetails, customers WHERE quantityOrdered > 30 AND priceEach >= 200;



