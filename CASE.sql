SELECT customer_id,
-- remember "," after column 
CASE 
WHEN(customer_id > 400) THEN 'Premium'
WHEN(customer_id BETWEEN 300 AND 400) THEN 'Plus'
ELSE 'Normal'
END AS customer_class
FROM customer
ORDER BY customer_id ASC;

SELECT customer_id,
CASE customer_id
WHEN 2 THEN 'Runner'
WHEN 3 THEN 'Winner'
ELSE 'rest'
END AS score
FROM customer
ORDER BY customer_id ASC;

SELECT 
CASE rental_rate
WHEN 0.99 THEN 1
ELSE 0
END 
FROM film;

-- the below can be done using SUM and WHERE but for mutiple condition
-- this is effective
SELECT 
SUM(CASE rental_rate
WHEN 0.99 THEN 1
ELSE 0
END) AS bargains,
SUM(CASE rental_rate
WHEN 2.99 THEN 1
ELSE 0
END) AS regular,
SUM(CASE rental_rate
WHEN 4.99 THEN 1
ELSE 0
END) AS premium
FROM film;



