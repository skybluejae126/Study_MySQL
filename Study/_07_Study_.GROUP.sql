# GROUP BY - 그룹 별로 집계된 값 보기

SELECT first_name, COUNT(*)
FROM customer
GROUP BY first_name;

SELECT district, COUNT(*)
FROM address
GROUP BY district;

SELECT rating, COUNT(*)
FROM film
GROUP BY rating;

SELECT special_features, COUNT(*)
FROM film
GROUP BY special_features;

# 다중 GROUP BY

SELECT rating, COUNT(*)
FROM film
GROUP BY rating;

SELECT rating, special_features, COUNT(*)
FROM film
GROUP BY rating, special_features;

SELECT rating, special_features, rental_duration, COUNT(*)
FROM film
GROUP BY rating, special_features, rental_duration;

# WITH ROLLUP 

SELECT rating, special_features, rental_duration, COUNT(*)
FROM film
GROUP BY rating, special_features, rental_duration with rollup;

SELECT staff_id, customer_id, COUNT(*)
FROM rental
GROUP BY staff_id, customer_id with rollup;

SELECT staff_id, customer_id,
	   MIN(amount), MAX(amount),
       SUM(amount), AVG(amount)
FROM payment
GROUP BY staff_id, customer_id with rollup;

# GROUP BY ~ WHERE 

SELECT store_id, COUNT(*)
FROM customer
WHERE active = 0
GROUP BY store_id;

SELECT rating, special_features, COUNT(*)
FROM film
WHERE length < 100
GROUP BY rating, special_features;

SELECT staff_id, customer_id, SUM(amount)
FROM payment
WHERE payment_date < '2005-06-01'
GROUP BY staff_id, customer_id;

# HAVING / HAVING 절의 기준을 따라서 필터링. 집계함수는 WHERE 절에 넣을 수 없음.

SELECT rating, special_features, SUM(replacement_cost)
FROM film
GROUP BY rating, special_features
HAVING SUM(replacement_cost) < 300;

SELECT staff_id, customer_id, COUNT(*)
FROM rental
GROUP BY staff_id, customer_id
HAVING COUNT(*) > 20;

SELECT staff_id, customer_id, SUM(amount)
FROM payment
GROUP BY staff_id, customer_id
HAVING SUM(amount) > 100;

# UNION

SELECT rating, special_features, title
FROM film
WHERE special_features = 'Trailers'
UNION
SELECT rating, special_features, title
FROM film
WHERE rating = 'G';

SELECT store_id, active, first_name
FROM customer
WHERE store_id = 2
UNION
SELECT store_id, active, first_name
FROM customer
WHERE active = 0;

# UNION ALL (중복 포함)

SELECT rating, special_features, title
FROM film
WHERE special_features = 'Trailers'
UNION ALL
SELECT rating, special_features, title
FROM film
WHERE rating = 'G';

SELECT store_id, active, first_name
FROM customer
WHERE store_id = 2
UNION ALL
SELECT store_id, active, first_name
FROM customer
WHERE active = 0;

# INTERSECT

SELECT rating, special_features, title
FROM film
WHERE special_features = 'Trailers'
INTERSECT
SELECT rating, special_features, title
FROM film
WHERE rating = 'G';

SELECT store_id, active, first_name
FROM customer
WHERE store_id = 2
INTERSECT
SELECT store_id, active, first_name
FROM customer
WHERE active = 0;

# EXCEPT (차집합)

SELECT rating, special_features, title
FROM film
WHERE special_features = 'Trailers'
EXCEPT
SELECT rating, special_features, title
FROM film
WHERE rating = 'G';

SELECT store_id, active, first_name
FROM customer
WHERE store_id = 2
EXCEPT
SELECT store_id, active, first_name
FROM customer
WHERE active = 0;
