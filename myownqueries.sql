USE classicmodels;
-- SELECT * FROM customers;
-- Provide a list of customers with the last name initial A
-- SELECT * FROM customers WHERE contactLastName LIKE "A%";

-- Provide a list of customers whose phone number begins with the number 7
-- SELECT *, phone AS "Phone Number" FROM customers WHERE phone LIKE "7%";

-- Provide a list of customers who have data for address line 2
-- SELECT * FROM customers WHERE addressLine2 IS NOT NULL;

-- Provide a list of customers in Switzerland whose credit limit is six figures
-- SELECT * FROM customers WHERE COUNTRY="Switzerland" AND creditLimit > 100000;

-- SELECT * FROM employees;

-- Provide a list of employees who are not in sales
-- SELECT * FROM employees WHERE jobTitle NOT LIKE "%Sale%";

-- SELECT * FROM orders;

-- Provide a list of cancelled orders
-- SELECT * FROM orders WHERE status = "cancelled";

SELECT * FROM payments;
-- Provide a list of orders over $100K
-- SELECT * FROM payments WHERE amount > 100000;

SELECT * FROM products;
 









