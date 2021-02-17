/*Grab only the customers with prefixed surnames*/
SELECT * FROM customers where contactLastName like"% %" and (postalCode > 47625 or postalCode < 47625);