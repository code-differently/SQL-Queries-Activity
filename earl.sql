-- List all of the available product lines available
--SELECT productline FROM productLines; 

-- find the full name and email addresses of all VPs.
--SELECT firstName, lastName, email, jobTitle FROM employees WHERE jobTitle LIKE "VP%";

-- Find all of the cancelled orders between  November 11, 2003 to June 01, 2004
-- SELECT * FROM orders WHERE orderDate BETWEEN '2003-11-11' AND '2004-06-01' AND status = "cancelled";

-- Find all of office with no state
-- SELECT * FROM offices WHERE state IS NOT NULL;