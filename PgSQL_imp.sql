SELECT DISTINCT (rental_rate),(rating) from film;

SELECT COUNT(amount) FROM payment;

SELECT COUNT (DISTINCT(amount)) FROM payment;

SELECT * FROM customer
WHERE first_name='Jared';

SELECT * FROM film
WHERE rental_rate>4 AND replacement_cost>=19.99 AND rating='R';

SELECT title FROM film
WHERE rental_rate>4 AND replacement_cost>=19.99 AND rating='R';

SELECT COUNT(*) FROM film
WHERE rating!='R' OR rating!='PG';

SELECT email FROM customer
WHERE first_name='Nancy' AND last_name='Thomas';

SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id DESC, first_name ASC;

SELECT * FROM payment
WHERE amount!=0
ORDER BY payment_date DESC
LIMIT 5;

SELECT title, length FROM film
WHERE length<=50
ORDER BY length DESC;

SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-14' AND '2007-02-16'
ORDER BY payment_id ASC;

SELECT COUNT (*) FROM payment
WHERE payment_date NOT BETWEEN '2007-02-14' AND '2007-02-16';

SELECT COUNT(amount) FROM payment
WHERE amount IN (0.99, 1.98,1.99);
--returns values that match what is "IN"

SELECT amount FROM payment
WHERE amount NOT IN (0.99, 1.98,1.99);

SELECT * FROM customer
WHERE first_name IN ('John', 'Jake','Julie');

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';
--case sensitive
--returns words start with J and S

SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%';
--Not case senstive

SELECT * FROM customer
WHERE first_name NOT LIKE 'J%' AND last_name NOT LIKE 'S%';
--case sensitive

SELECT * FROM customer
WHERE first_name ILIKE '%her%';
--returns any word having her

SELECT * FROM customer
WHERE first_name ILIKE '_her%';
--returns words in which 2nd leters are as above.



