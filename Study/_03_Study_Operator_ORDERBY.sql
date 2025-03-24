# BETWEEN

SELECT * 
FROM customer
WHERE customer_id BETWEEN 10 AND 20;

SELECT * 
FROM film
WHERE length BETWEEN 100 AND 110;

SELECT * 
FROM film
WHERE rental_duration BETWEEN 5 AND 7;

SELECT * 
FROM payment
WHERE amount BETWEEN 1 AND 3;

SELECT * 
FROM rental
WHERE rental_date
BETWEEN '2005-05-25' AND '2005-05-26';

# IN

SELECT *
FROM film 
WHERE rating IN ('R', 'G', 'PG');

SELECT *
FROM film 
WHERE rating NOT IN ('R', 'G', 'PG');

SELECT *
FROM address 
WHERE district IN ('California', 'Texas');

SELECT *
FROM address
WHERE district NOT IN ('Alberta', 'QLD');

SELECT *
FROM customer 
WHERE last_name
   IN ('SMITH', 'DAVIS', 'KING');

# NULL

SELECT *
FROM address
WHERE adress2 IS NULL;

SELECT *
FROM film
WHERE original_language_id IS NULL;

SELECT *
FROM staff
WHERE picture IS NULL;

SELECT *
FROM staff
WHERE picture IS NOT NULL;

# LIKE

SELECT *
FROM actor
WHERE first_name LIKE 'AL__';

SELECT *
FROM actor_info
WHERE last_name LIKE '__AN';

SELECT *
FROM address
WHERE address LIKE '%Drive';

SELECT *
FROM country
WHERE country LIKE 'S%';

SELECT *
FROM film
WHERE special_features LIKE '%Scenes%';

SELECT *
FROM actor
WHERE first_name LIKE 'AL__';

# ORDER BY

SELECT *
FROM actor
ORDER BY first_name;

SELECT *
FROM actor_info
ORDER BY first_name, last_name;

SELECT *
FROM country
ORDER BY country DESC;

SELECT *
FROM address
ORDER BY district ASC, address DESC;

SELECT *
FROM film
ORDER BY rental_rate DESC,
		 rental_duration DESC;

