
1 Ques  select city column from the cutomer table
      1 Ans     SELECT * FROM Customers;


2 Ques  select all records from customers where the postalcode columns is emply.
     2 Ans       Select * FROM Customers WHERE postalCode IS NULL;


3 Ques  select customer names from CA
      3 Ans - SELECT customerName FROM customers WHERE state IN ("CA");


4 Ques  select all customer names that start with the letter Q
     4 Ans   SELECT * FROM customers WHERE customerName LIKE "q%";


5 Ques    select all customers that have a credit limit between 0 and $500
        5 Ans   SELECT * FROM customers WHERE creditLimit BETWEEN 0 AND 500.00;  