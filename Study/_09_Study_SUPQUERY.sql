# 단일 행 서브 쿼리

SELECT first_name, last_name
FROM customer
WHERE email = (SELECT email
			   FROM customer
               WHERE customer_id = 1 );

SELECT rating, title, description
FROM film
WHERE title = ( SELECT title
                FROM film
                WHERE film_id = 1 );
                
# 다중 행 서브 쿼리

SELECT first_name, last_name, email
FROM customer
WHERE customer_id IN ( SELECT customer_id
						 FROM customer
					     WHERE active = 0 );

SELECT first_name, last_name, email
FROM customer
WHERE email NOT IN (
				SELECT email
                FROM customer
                WHERE address_id < 600 );
                
# EXISTS / 존재 하면 실행

SELECT first_name, last_name, email
FROM customer
WHERE EXISTS ( SELECT customer_id
               FROM customer
               WHERE active = 0 );
               
SELECT rating, title, description
FROM film
WHERE EXISTS ( SELECT title 
               FROM film
               WHERE film_id = 1 );
               
# ANY / 조건 하나라도 만족하면

SELECT customer_id, first_name, last_name
FROM customer
WHERE email = ANY (
				SELECT email
                FROM customer
                WHERE customer_id < 10 );
                
SELECT customer_id, first_name, last_name
FROM customer
WHERE email < ANY (
                SELECT email
                FROM customer
                WHERE customer_id = 10 );
                
# ALL / 모든 조건 만족

SELECT film_id, title, description, length
FROM film
WHERE film_id < ALL ( SELECT film_id
                      FROM film
                      WHERE length < 180 );
                      
SELECT film_id, title, description, length
FROM film
WHERE film_id > ALL ( SELECT film_id
					  FROM film
                      WHERE length < 180 );

# INLINE VIEW



SELECT first_name, last_name, address
FROM customer c, ( SELECT address_id, address
				   FROM address
				   WHERE district = 'Texas' ) a
WHERE c.address_id = a.address_id;

SELECT c.name, f.title
FROM film f, film_category fc,
     ( SELECT category_id, name
       FROM category
       WHERE name = 'Action' ) c
WHERE f.film_id = fc.film_id
  AND fc.category_id = c.category_id;
  
# SCALAR SUBQUERY

SELECT first_name, last_name,
	   ( SELECT COUNT(*) FROM actor )
FROM customer;

SELECT first_name, last_name,
	   ( SELECT COUNT(*) FROM store )
FROM staff;

SELECT title, description,
       ( SELECT CONCAT(first_name, 
                       ' ', last_name)
		 FROM customer LIMIT 1 )
FROM film;
  
