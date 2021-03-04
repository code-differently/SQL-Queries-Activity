-- 1 -- Search all office located in the United States.
SELECT * FROM offices WHERE country = "USA";

--  2 -- Combine the data from both table the offices and the employees.
SELECT * FROM offices INNER JOIN employees; 

-- 3 -- What is the highest amount from the payment
SELECT * FROM payments WHERE amount = (select max(amount) from payments);

-- 4 --Count the total of Products by line and group them from the products table
SELECT productLine, COUNT(*) FROM products GROUP BY productLine;

-- 5 -- Search by customer cumbers and count the number with the order shipped status and group them by when their ship date.
SELECT customerNumber,COUNT(*) orderCount FROM orders WHERE status = 'Shipped' GROUP BY shippedDate;
