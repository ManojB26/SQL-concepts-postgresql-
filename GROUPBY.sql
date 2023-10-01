SELECT MAX(replacement_cost), MIN(replacement_cost) FROM film;

SELECT AVG(replacement_cost) FROM film;

SELECT ROUND(AVG(replacement_cost), 2) FROM film;

SELECT SUM(replacement_cost) FROM film;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;

SELECT customer_id,staff_id, SUM(amount) FROM payment
GROUP BY customer_id, staff_id
ORDER BY staff_id DESC;

SELECT DATE(payment_date), COUNT(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY DATE(payment_date);

SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id
ORDER BY staff_id DESC;

SELECT rating, ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating;

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount)>=40;
--having can be used after group by 
--where should be used before group by

SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id=2
GROUP BY customer_id
HAVING SUM(amount)>100;
