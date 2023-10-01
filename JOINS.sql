SELECT customer_id, SUM(amount) AS total_amt
FROM payment
GROUP BY customer_id
HAVING SUM(amount)>100;
--HAVING total_amt>100;
-- Error thrown as alias (AS) cannot be used in HAVING or WHERE query

SELECT * FROM payment;
SELECT * FROM customer;

SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id=customer.customer_id;

SELECT payment.customer_id, payment_id, first_name 
FROM payment
INNER JOIN customer
ON payment.customer_id=customer.customer_id;
--Inner join wil result with the set of records that match in both tables.

--There are few different types of OUTER JOINs 
--They will allow us to specify how to deal with values only present in 
--one of the tables being joined

--FULL OUTER JOIN
SELECT payment.customer_id, first_name FROM payment
FULL OUTER JOIN customer
ON payment.customer_id=customer.customer_id;

--FULL OUTER JOIN WITH WHERE(get rows unique to either table)
SELECT payment.customer_id, first_name FROM payment
FULL OUTER JOIN customer
ON payment.customer_id=customer.customer_id
WHERE payment.customer_id IS null OR customer.customer_id IS null;

--LEFT JOIN/ LEFT OUTER JOIN
SELECT store_id, film.film_id, inventory_id, title FROM film
LEFT JOIN inventory
ON film.film_id=inventory.film_id
WHERE inventory.film_id IS null;

--RIGHT JOIN/ RIGHT OUTER JOIN
SELECT store_id, inventory.film_id, inventory_id, title FROM inventory
RIGHT OUTER JOIN film
ON film.film_id=inventory.film_id
WHERE inventory.film_id IS null;

--UNION operator combines the result-set of two or more SELECT statements
--should have same number of coloumns


   