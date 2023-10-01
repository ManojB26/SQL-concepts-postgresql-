SELECT district, email FROM address
INNER JOIN customer
ON address.address_id= customer.address_id
WHERE district = 'California';

--vvimp ***
SELECT title, first_name, last_name FROM film_actor
INNER JOIN actor 
ON film_actor.actor_id=actor.actor_id
INNER JOIN film
ON film.film_id=film_actor.film_id
WHERE first_name='Nick' AND last_name='Wahlberg';

