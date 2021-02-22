use classicmodels;
-- SELECT * FROM customers;
-- SELECT * FROM orderdetails;
-- SELECT * FROM orders;

-- Display all customers who are in the US with a credit limit over 100,000
-- SELECT * FROM customers WHERE country = "USA" AND creditLimit > 100000;

-- Display all orders where there where no comments left and the quanity ordered was more than 40.
-- SELECT * FROM orderdetails INNER JOIN orders ON orderdetails.orderNumber=orders.orderNumber WHERE comments IS NULL AND quantityOrdered > 40;

-- Display all records that do not have a sales rep employee number and the customer number is 125. Update the sales rep employee number to 9876.
-- SELECT * FROM customers WHERE salesRepEmployeeNumber IS NULL AND customerNumber = 125;
-- UPDATE customers SET salesRepEmployeeNumber = 9876 WHERE customerNumber = 125;

-- Delete the sales rep employee number 9876
-- DELETE FROM customers WHERE salesRepEmployeeNumber = 9876;

-- Creat a new customer record with a first name of Rob, last name of Woodruff and customerNumber of 497
-- INSERT INTO customers (customerNumber, contactFirstName, contactLastName) VALUES (497, "Woodruff", "Rob");