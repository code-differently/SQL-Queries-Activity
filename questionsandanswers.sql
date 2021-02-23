USE `classicmodels`;
show tables;

#Querying a table
select * from customers;
select * from employees;
select * from offices;
select * from orders;
select * from orderdetails;
select * from payments;
select * from products;
select * from productlines;

#Aliasing columns
SELECT employeeNumber AS "Employee Number" , firstName AS "First Name", lastName AS "Last Name", email, jobTitle AS "Job Title"
FROM employees;

#* Filtering
SELECT * FROM customers WHERE city = 'NYC';
select * from products where productLine = "Classic Cars";
select * from employees where officeCode IN (4, 5);
   # * Comparisons
   select * from products where MSRP > 136;
   select * from products where quantityInStock < 1000;
   
    #* Range
    select * from products where buyPrice >= 36 and buyPrice < 80;
    select * from payments where paymentDate between '2003-01-16' and '2003-03-20';
    
    
   # * Pattern Matching
   select * from products WHERE productName like '%Ford%';
   select * from products WHERE productLine like '%Car%';
#* NULL values
select * from customers WHERE state IS NULL;