--TIMESTAMPS AND EXTRACTION
--TIME: contains only time
--DATE: contains only date
--TIMESTAMP: contains date and time
--TIMESTAMPTZ: contains date, time and zone

SHOW ALL;
-- shows all values of a bunch of runtime info

SHOW 
TIMEZONE;
--Shows current zone server is using

SELECT NOW();
--SHOWs current date, time , zone

SELECT TIMEOFDAY();
--shows date in words and other time and zone

SELECT CURRENT_DATE;

SELECT CURRENT_TIME;

--EXTRAXT (used to extract 'YEAR, MONTH, DAY, WEEK, QUARTER')
--AGE() Extracts age
--TO_CHAR() convert data type to text 

SELECT EXTRACT(YEAR FROM  payment_date) AS year 
FROM payment;

SELECT EXTRACT(MONTH FROM  payment_date) AS month
FROM payment;

SELECT EXTRACT(DAY FROM  payment_date) AS day
FROM payment;

SELECT EXTRACT(QUARTER FROM  payment_date) AS quarter
FROM payment;

SELECT AGE(payment_date) AS age
FROM payment;

SELECT TO_CHAR(payment_date, 'dd-mm-yyyy')
FROM payment;

SELECT TO_CHAR(payment_date, 'dd/Month/yy')
FROM payment;

--CHALLENGE
--number of payments on monday
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date)=1;
--Here dow refers to "day of week"
--0 is sunday and monday starts with 1

SELECT SUM(amount)
FROM payment
WHERE EXTRACT(dow FROM payment_date)=1;

SELECT amount, EXTRACT(dow FROM payment_date) AS day
FROM payment
WHERE EXTRACT(dow FROM payment_date)=0;

--Mathematics
SELECT ROUND(rental_rate/replacement_cost, 4)*100 AS rate FROM film;

--strings
SELECT LENGTH(first_name) FROM customer;
SELECT first_name||' '||last_name AS full_name FROM customer;
SELECT UPPER(first_name)||' '||UPPER(last_name) FROM customer;
SELECT LOWER(LEFT(first_name, 2)||last_name||'@gmail.com') AS creat_email FROM customer;

--sub query
SELECT film_id,title,rental_rate FROM film
WHERE rental_rate> (SELECT AVG(rental_rate) FROM film);

SELECT film_id, title FROM film
WHERE film_id IN 
(SELECT inventory.inventory_id FROM rental
INNER JOIN inventory ON inventory.inventory_id=rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id ASC;
--NOTE: Never include more than one coloumn in subquery as shown below.
--SELECT inventory.inventory_id, rental_id FROM rental
--it throws ERROR:  subquery has too many columns LINE 2: WHERE film_id IN 

--EXISTS command
SELECT first_name, last_name FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment as p
WHERE p.customer_id=c.customer_id
AND amount>11);

--NOT EXISTS
SELECT first_name, last_name FROM customer AS c
WHERE NOT EXISTS
(SELECT * FROM payment as p
WHERE p.customer_id=c.customer_id
AND amount>11)

