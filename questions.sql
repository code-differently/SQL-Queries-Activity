-- select all customers
-- SELECT * FROM customers;
-- select all customers not in the us
-- SELECT * FROM customers WHERE country NOT IN ('USA');
-- select all customers from reims or genève
-- SELECT * FROM customers WHERE city IN ('Reims', 'Genève');
-- which customers were served by Larry Bott
-- SELECT * FROM customers WHERE salesRepEmployeeNumber = (SELECT employeeNumber FROM employees WHERE firstName = 'Larry' AND lastName = 'Bott');
-- select all customers whose orders are more than 50% of their credit limit
-- SELECT customerName, contactFirstName, contactLastName, creditLimit FROM customers WHERE customerNumber IN (SELECT customerNumber FROM payments WHERE amount > (customers.creditLimit / 2));
-- show all customers whose credit limit is between 100,000 and 200,000
-- SELECT * FROM customers WHERE creditLimit BETWEEN 100000 AND 200000 ORDER BY creditLimit;
-- how many customers have a credit limit between 100,000 and 200,000
-- SELECT COUNT(*) AS "Number of Customers with Credit Limits between 100,000 and 200,000" FROM customers WHERE creditLimit BETWEEN 100000 AND 200000 ORDER BY creditLimit;
-- show all customers whose address includes 'Airport'
-- SELECT * FROM customers WHERE addressLine1 LIKE ('%airport%');
-- show all offices without a state
-- SELECT * FROM offices WHERE state IS NULL;
-- how many customers live in philadelphia = 2
-- SELECT COUNT(*) FROM customers WHERE city = 'Philadelphia' GROUP BY customerName;
-- SELECT COUNT(*), customerName FROM customers WHERE city = 'Philadelphia' GROUP BY customerName;
-- how many customers have multiple locations
-- SELECT customerName FROM customers;
-- how many employees in the tokyo office? = 2
-- SELECT firstName, lastName FROM employees WHERE officeCode = (SELECT officeCode FROM offices WHERE city = 'Tokyo');
-- customer name and phone where credit limit is 650+ and salesrepnum is 1165
-- SELECT customerName, phone FROM customers WHERE creditLimit >= 650 AND salesRepEmployeeNumber = 1165;
-- sales by sales rep
-- SELECT employees.employeeNumber, employees.lastName, employees.firstName, 
	-- customers.customerNumber, customers.customerName, 
    -- payments.amount 
	-- FROM employees LEFT OUTER JOIN customers ON employees.employeeNumber = customers.salesRepEmployeeNumber
    -- LEFT OUTER JOIN payments ON customers.customerNumber = payments.customerNumber 
    -- ORDER BY payments.amount DESC, employees.lastName, employees.firstName;
-- total sales by sales rep
-- SELECT employees.employeeNumber, employees.lastName, employees.firstName, 
	-- customers.customerNumber, customers.customerName, 
    -- SUM(payments.amount) AS "Total Sales"
	-- FROM employees LEFT OUTER JOIN customers ON employees.employeeNumber = customers.salesRepEmployeeNumber
    -- LEFT OUTER JOIN payments ON customers.customerNumber = payments.customerNumber 
    -- GROUP BY employees.lastName
    -- ORDER BY payments.amount DESC, employees.lastName, employees.firstName;
-- total sales by sales rep in tokyo / ny offices
SELECT employees.employeeNumber, employees.lastName, employees.firstName, 
	customers.customerNumber, customers.customerName, 
    SUM(payments.amount) AS "Total Sales"
	FROM employees LEFT OUTER JOIN customers ON employees.employeeNumber = customers.salesRepEmployeeNumber
    LEFT OUTER JOIN payments ON customers.customerNumber = payments.customerNumber 
    WHERE employees.officeCode IN (SELECT officeCode FROM offices WHERE city IN ('Tokyo', 'NYC'))
    GROUP BY employees.lastName
    ORDER BY payments.amount DESC, employees.lastName, employees.firstName;