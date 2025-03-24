# 비교 연산자
 
SHOW TABLES;
 
SELECT *
FROM customer
WHERE store_id = 1;
 
SELECT *
FROM film
WHERE rating = 'G';
 
SELECT *
FROM film
WHERE length > 100;
 
SELECT *
FROM film
WHERE rental_duration <= 5;
 
SELECT *
FROM rental
WHERE rental_date < '2005_05_25';
 
# 논리 연산자

SELECT *
FROM customer
WHERE customer_id >= 10 
  AND customer_id <= 20;
   
SELECT *
FROM film
WHERE length > 100 
  AND length < 110;
   
SELECT *
FROM film
WHERE rental_duration >= 5 
  AND rental_duration <= 7;
   
SELECT *
FROM rental
WHERE rental_date > '2005-05-25' 
  AND rental_date < '2005-05-26';   
   
SELECT *
FROM customer
WHERE last_name = 'DAVIS'
   OR last_name = 'KING';
  
SELECT *
FROM film
WHERE rating = 'G'
   OR rating = 'PG';
    
SELECT *
FROM address
WHERE district = 'California'
   OR district = 'Texas';
   
SELECT *
FROM payment
WHERE amount < 1
   OR amount > 10;
      
SELECT *
FROM payment
WHERE NOT rating = 'G';

SELECT *
FROM payment
WHERE NOT rating = 'G'
  AND NOT rating = 'PG';
   
SELECT *
FROM address
WHERE NOT district = 'Alberta'
  AND NOT district = 'QLD';
  
SELECT *
FROM customer
WHERE NOT create_date > '2006-02-15';