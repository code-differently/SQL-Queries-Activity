/* Select all customers */

SELECT *
FROM customers;

/* Select all customers where the state is filled in */

SELECT *
FROM customers
WHERE state IS NOT NULL;

/* Select the customer names that begin with "Co." */

SELECT customerName
FROM customers
WHERE customerName LIKE "%Co.";

/* Select all customers that have "44" in the postal code*/

SELECT *
FROM customers
WHERE postalCode LIKE "%44%";

/* Select all customers with a credit score between 100 and 15000 */

SELECT *
FROM customers
WHERE creditLimit BETWEEN 100 AND 15000;


SELECT *,
CHAR_LENGTH(postalCode)
FROM customers
WHERE CHAR_LENGTH(postalCode)=5 AND state IS NOT NULL;