# CARTESIAN PRODUCT / 모든 데이터 조회

SELECT address, city
FROM address, city;

SELECT address, city
FROM address CROSS JOIN city;

SELECT first_name, last_name, address
FROM customer, address;

SELECT first_name, last_name, address
FROM customer CROSS JOIN address;

# EQUI JOIN / 조건이 일치하는 것만 조회

SELECT address, district, city
FROM address, city
WHERE address.city_id = city.city_id;	# 두 개의 table 에서 city_id 가 같은 값만 출력

SELECT address, district, city
FROM address a JOIN city c
  ON a.city_id = c.city_id;
  
SELECT address, district, city
FROM address AS a INNER JOIN city AS c
  ON a.city_id = c.city_id
WHERE district = 'Texas';

SELECT first_name, last_name,
       address, district, city, country
FROM customer cu JOIN address a
  ON cu.address_id = a.address_id
  JOIN city c
  ON a.city_id = c.city_id
  JOIN country co
  ON c.country_id = co.country_id;
  
SELECT c.name, f.rating, f.title
FROM film f JOIN film_category fc
     ON f.film_id = fc.film_id
     JOIN category c
     ON fc.category_id = c.category_id;
     
SELECT f.rating, f.title, 
       a.first_name, a.last_name
FROM film f JOIN film_actor fa
  ON f.film_id = fa.film_id
  JOIN actor a
  ON fa.actor_id = a.actor_id;
  
SELECT *
FROM film f JOIN film_actor fa
     ON f.film_id = fa.film_id
     JOIN actor a
     ON fa.actor_id = a.actor_id
     JOIN film_category fc
     ON f.film_id = fc.film_id
     JOIN category c
     ON fc.category_id = c.category_id;
     
# NON EQUL JOIN / 동등한 조인 조건이 없을 때

SELECT address, district, city
FROM address a JOIN city c
  ON a.city_id > c.country_id;
  
SELECT title, rental_date
FROM film f JOIN rental r
  ON f.length > r.customer_id;
  
SELECT rental_id, first_name, last_name
FROM customer JOIN rental
  ON return_date BETWEEN rental_date
					 AND create_date;
                     
# OUTER JOIN / 해당 안하면 null 로 출력

SELECT first_name, last_name, address
FROM customer c JOIN address a
  ON c.address_id = a.address_id;
  
SELECT address, first_name, last_name
FROM address a LEFT OUTER JOIN customer c
  ON c.address_id = a.address_id;
  
SELECT first_name, last_name, address
FROM customer c RIGHT OUTER JOIN address a
  ON c.address_id = a.address_id;
  
# SELF JOIN

SELECT c1.first_name, c2.last_name
FROM customer c1 JOIN customer c2
  ON c1.first_name = c2.last_name;

SELECT a1.address, 
       a1.address_id, a2.city_id
FROM address a1 JOIN address a2
  ON a1.address_id = a2.city_id;
  
SELECT f1.title, f1.film_id, f2.length
FROM film f1 JOIN film f2
  ON f1.film_id = f2.length;