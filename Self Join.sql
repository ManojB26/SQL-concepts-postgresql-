--The self join can be viewed as a join of two copies of the same table.
--The table is not actually copied, but SQL performs the command as though it were. 
--There is no special keyword for a self join, its simply standard JOIN syntax with 
--the same table in both parts.happening to happening to be in both parts.

SELECT f1.title, f2.title, f1.length FROM film as f1
INNER JOIN film as f2 ON
f1.film_id != f2.film_id
AND f1.length=f2.length;



