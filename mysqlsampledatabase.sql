SELECT customerName AS "Customer Name", addressLine1 AS "Address" FROM customers WHERE country != 'USA';
-- Show name and Address of all customers living outside of the USA

SELECT city AS "Office", phone AS "Phone Number" from offices;
-- Get phone numbers of all offices

SELECT * FROM products WHERE productName LIKE "19%";
-- Select all 1900s cars, or at least cars that start with the name 19XX;
