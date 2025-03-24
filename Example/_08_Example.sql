# 1. customer, address, city, country를 조인하고, country가 ‘South Korea’인 고객 
# first_name, last_name, city, district, country 조회

SELECT first_name, last_name, 
       city, district, country
FROM customer cu JOIN address a
     ON cu.address_id = a.address_id
     JOIN city c
     ON a.city_id = c.city_id
     JOIN country co
     ON c.country_id = co.country_id
WHERE country = 'South Korea';

# 2. film, film_category, category를 조인하고, name이 ‘Action’이고, rating이 ‘PG’인 name, 
# rating, title, rental_rate, length를 조회 (length 기준 내림차순 정렬)

SELECT c.name, f.rating, f.title,
       f.rental_rate, f.length 
FROM film f JOIN film_category fc
     ON f.film_id = fc.film_id 
     JOIN category c
     ON fc.category_id = c.category_id
WHERE name = 'Action' AND rating = 'PG'
ORDER BY f.length DESC;