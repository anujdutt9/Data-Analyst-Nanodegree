 /* ---------- Select Statement --------------- */
 /* This statement is used to select/read in the rows or columns from a SQL database consisting
 of one or more tables. */

/* Select all columns from Table */
 SELECT * FROM table

 /* Select particular columns from Table */
 SELECT id, name FROM table

 /* MULTILINE: Write in Multiline */
 SELECT id, name
 FROM table

/* LIMIT: Used to set a limit on how much data we want to load and dispaly from the table in database. */
SELECT *
FROM table
LIMIT 10
/* Using a LIMIT of 10 displays only first 10 rows of data from the table in database. */

/* ORDER BY: Used to read the data in Ascending or Descending Order. By default it reads in Ascending Order. */
SELECT *
FROM table
LIMIT 15
ORDER BY id


/* Example: Write a query to return the 10 earliest orders in the orders table. Include the id, occurred_at, and total_amt_usd.*/
SELECT id, occurred_at, total_amt_usd
FROM orders
ORDER BY occurred_at
LIMIT 10;


/* Example: Write a query to return the top 5 orders in terms of largest total_amt_usd. Include the id, account_id, and total_amt_usd. */
SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 5;


/* Example: Write a query to return the bottom 20 orders in terms of least total. Include the id, account_id, and total. */
SELECT id, account_id, total
FROM orders
ORDER BY total
LIMIT 20;
