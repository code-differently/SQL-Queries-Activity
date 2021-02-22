
1) Findout the anme of customer whose address line 1 contains 5677.

 SELECT customerName FROM customers WHERE addressLine1 LIKE ("%5677%”);

2) Findout the customer name, number, city and state for the postal code greater than 70000

 SELECT customerNumber, customerName, city, state FROM customers WHERE postalCode > 70000;

 3) Find out customer name from city Melbourne and rename table name as CN

SELECT customerName AS CN from customers WHERE city = "Melbourne";

4) Findout first name who live in Victoria, CA or NY and also rename it

SELECT contactFirstName AS FName FROM customers WHERE state IN ("Victoria", "CA", "NY");

 5) Findout the payment date after Aug 1, 2004 and amount should be more than 25000

SELECT * FROM payments WHERE paymentDate > 2004-01-01 AND amount > 25000;

 6) Findout orders table detail with order status being cancelled

SELECT * FROM orders WHERE status = "Cancelled";

7) Findout how many employee numbers are in range of 1000 to 2000

SELECT * FROM employees WHERE employeeNumber BETWEEN 1000 AND 2000;