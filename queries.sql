Write an SQL query to fetch customerName "La Rochelle Gifts" from table name customers 
SELECT * FROM classicmodels.customers where customerName = "La Rochelle Gifts";

Write an SQL query to fetch payment date from table Payments where data is greater than january 1st, 2004.
SELECT * FROM classicmodels.payments where paymentDate > 2004-01-01;

Write an SQL query from table orders where comments are not missing. 
SELECT * FROM classicmodels.orders where comments IS NOT NULL;

Write an SQL query for all the columns on tanle payments where amount range is 3000-4000
SELECT * FROM classicmodels.payments WHERE amount between 2000 and 3000;

Write an SQL query for column productline where it starts with Classic
SELECT * FROM classicmodels.products WHERE productLine LIKE "Classic%";

