+ -- select all customers
+ -- SELECT * FROM customers;
+ -- select customers in France
+ -- SELECT * FROM customers WHERE country = "France";
+ -- select all customers in CA or NY
+ -- SELECT * FROM customers WHERE state = "CA" OR state = "NY";
+ -- select all customers from Melbourne, Australia
+ -- SELECT * FROM customers WHERE city = "MelBourne" AND country = "Australia";
+ -- select all customers with credit limit over $21,000.00
+ -- SELECT * FROM customers WHERE creditLimit > 21000.00;
+ -- select all customers who sales rep number 1401 served their account
+ -- SELECT * FROM customers WHERE salesRepEmployeeNumber = 1401;
+ -- select all customers who do not live in USA
+ -- SELECT * FROM customers WHERE country != "USA";
+ -- select all customers with credit limit is less than or equal to $100,000
+ -- SELECT * FROM customers WHERE creditLimit <= 100000;
+ -- select all customers that have a credit limit between 0 and $60,000
+ -- SELECT * FROM customers WHERE creditLimit BETWEEN 0 AND 60000.00;
+ -- select all customers served by sales rep 1323, 1370 and 1504
+ -- SELECT * FROM customers WHERE salesRepEmployeeNumber IN (1323, 1370, 1504);
+ -- select all customers not in Spain
+ -- SELECT * FROM customers WHERE country NOT IN ("Spain");
+ -- select customer names from PA
+ -- SELECT customerName FROM customers WHERE state IN ("PA");
+ -- select customer names that have a sales rep that is null
+ -- SELECT customerName FROM customers WHERE salesRepEmployeeNumber IS NULL;
+ -- select all customers who have a sales rep that is not null
+ -- SELECT * FROM customers WHERE salesRepEmployeeNumber IS NOT NULL;
+ -- select customer name that has a contact name is Keith Franco
+ -- SELECT customerName FROM customers WHERE contactFirstName = "Keith" AND contactLastName = "Franco";
+ -- select all customer names and alias it as "Customer Name" and phone and alias it as "Phone"
+ -- SELECT customerName AS "Customer Name", phone AS "Phone" FROM customers;
+ -- select all customer numbers and customer names and alias them as "Customer Number" and "Customer Name"
+ -- SELECT customerNumber AS "Customer Number", customerName AS "Customer Name" FROM customers;
+ -- select all customer names that start with the letter D
+ -- SELECT * FROM customers WHERE customerName LIKE "d%";
+ -- select all customer names that end in the letter o
+ -- SELECT * FROM customers WHERE customerName LIKE "%o";
+ -- select all customers with a phone number with the numbers 555 within the phone number
+ -- SELECT * FROM customers WHERE phone LIKE "%555%";