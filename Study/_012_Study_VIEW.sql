# VIEW EXAMPLE

SELECT * FROM actor_info;

SELECT * FROM customer_list;

SELECT * FROM film_list;

SELECT * FROM nicer_but_slower_film_list;

SELECT * FROM saels_by_film_category;

SELECT * FROM sales_by_store;

SELECT * FROM staff_list;

# 뷰 생성

CREATE VIEW film_view AS
SELECT film_id, title,
	   release_year, length, rating
FROM film;

CREATE VIEW inactive_customer_view AS
SELECT customer_id, store_id,
	   first_name, last_name,
       email, address_id, active
FROM customer
WHERE active = 0;

INSERT INTO inactive_customer_view
VALUES (606, 2, 'SUAN', 'LEE',
        'SUAN.LEE@sakilacustomer.org',
        100, 0);
        
INSERT INTO inactive_customer_view
VALUES (607, 1, 'SUSAN', 'LEE',
        'SUSAN.LEE@sakilacustomer.org',
        200, 0);
	
INSERT INTO inactive_customer_view
VALUES (608, 2, 'SUYUN', 'LEE',
        'SUYUN.LEE@sakilacustomer.org',
        300, 1);
        
# 복합뷰

CREATE VIEW customer_view AS
SELECT first_name, last_name,
	   address, district, city, country
FROM customer cu JOIN address a
	 ON cu.address_id = a.address_id
     JOIN city c
     ON a.city_id = c.city_id
     JOIN country co
     ON c.country_id = co.country_id;
     
CREATE VIEW film_actor_view AS
SELECT c.name, f.rating, f.title,
	   a.first_name, a.last_name
FROM film f JOIN film_actor fa
	 ON f.film_id = fa.film_id
     JOIN actor a
     ON fa.actor_id = a.actor_id
     JOIN film_category fc
     ON f.film_id = fc.film_id
     JOIN category c
     ON fc.category_id = c.category_id;
     
# 집계함수가 포함된 복합뷰

CREATE VIEW film_avg_view AS
SELECT rating, special_features,
	   AVG(rental_duration), AVG(length)
FROM film
GROUP BY rating, special_features
ORDER BY rating, special_features;

CREATE VIEW category_film_avg_view AS
SELECT c.name, f.rating, AVG(rental_rate),
       AVG(f.length), AVG(p.amount)
FROM payment p JOIN rental r
  ON p.rental_id = r.rental_id
  JOIN inventory i
  ON i.inventory_id = r.inventory_id
  JOIN film f
  ON f.film_id = i.film_id
  JOIN film_category fc
  ON fc.film_id = f.film_id
  JOIN category c
  ON c.category_id = fc.category_id
GROUP BY c.name, f.rating;

# 뷰 대체

CREATE VIEW district_view AS
SELECT address, district, city,
       postal_code, country
FROM address a JOIN city c
  ON a.city_id = c.city_id
  JOIN country co
  ON co.country_id = c.country_id
WHERE district = 'California';

CREATE OR REPLACE VIEW district_view AS
SELECT address, district, city,
       postal_code, country
FROM address a JOIN city c
  ON a.city_id = c.city_id
  JOIN country co
  ON co.country_id = c.country_id
WHERE district = 'Texas';

# 뷰 수정

ALTER VIEW film_view AS
SELECT film_id, title, release_year,
	   length, rating, replacement_cost
FROM film;

SELECT * FROM film_view;

ALTER VIEW inactive_customer_view AS
SELECT customer_id, store_id,
	   first_name, last_name, 
       email, address_id, active
FROM customer
WHERE active = 0
WITH CHECK OPTION;		# 조건에 맞는 것만 삽입 가능

/* 에러
INSERT INTO inactive_customer_view
VALUES (609, 1, 'SEAH', 'LEE'
		'SEAH.LEE@sakilacustomer.org',
        400, 1);
*/

# 뷰 삭제

DROP VIEW film_view;

DROP VIEW inactive_customer_view;

DROP VIEW customer_view;

DROP VIEW film_actor_view;

DROP VIEW film_avg_view;

DROP VIEW category_film_avg_view;

DROP VIEW district_view;


