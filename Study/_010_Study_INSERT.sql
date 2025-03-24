# INSERT

INSERT INTO actor
VALUES (201, 'SUAN', 'LEE', NOW());

INSERT INTO actor(actor_id, first_name, 
				  last_name, last_update)
VALUES (202, 'SUAN', 'LEE', NOW());

INSERT INTO actor(first_name, 
				  last_name, last_update)
VALUES ('SUAN', 'LEE', NOW());

INSERT INTO actor(first_name, last_name,)
VALUES ('SUAN', 'LEE');

INSERT INTO language(name)
VALUES ('Korean');

INSERT INTO city(city, country_id)
VALUES ('seoul', 110);

INSERT INTO address(address, district,
                    city_id, postal_code, 
                    phone, location)
VALUES ('110 Sejong-daero', 'Seoul', 
        601, 04524, 0212345678,
        ST_GeomFromText('Point(1 1)'));

INSERT INTO film(title, description, 
                 rental_duration, rental_rate,
                 length, replacement_cost, 
                 rating, special_features)
VALUES ('Parasite', 'Parasite is a dark
comedy/drama with some horror elements
sprinkled in that revolves around the Kim
family', 2019, 7, 5, 4.99, 131, 28.99,
'PG-13', 'Deleted Scenes');

INSERT INTO film(title, description, 
                 rental_duration, rental_rate,
                 length, replacement_cost, 
                 rating, special_features)
VALUES ('Train to Busan', 'As a mysterious
virus spreads across the country and a
state of emergency is declared in South
Korea, the people on the train are forced
to fight to make it to the only safe city, 
Busan.', 2016, 7, 5, 4.99, 118, 28.99,
'PG-13', 'Deleted Scene');

INSERT INTO inventory(film_id, store_id)
VALUES (1001, 1);

INSERT INTO inventory(film_id, store_id)
VALUES (1002, 1);

SELECT * FROM inventory
WHERE film_id IN (1001, 1002);

INSERT INTO customer(store_id, 
					 first_name, last_name,
                     email, address_id, 
                     active)
VALUES (1, 'SUAN', 'LEE',
        'SUAN.LEE@sakilacustomer.org',
        606, 1);
        
SELECT * FROM customer
WHERE first_name = 'SUAN';

INSERT INTO rental(rental_date, 
				   inventory_id, 
                   customer_id, staff_id)
VALUES (NOW(), 4582, 600, 1);

SELECT * FROM rental
ORDER BY rental_date DESC;

INSERT INTO payment(customer_id, staff_id, 
                    rental_id, amount)
VALUES (600, 1, 16050, 4.99);

SELECT * FROM payment
WHERE customer_id = 600;

# UPDATE

UPDATE actor
SET first_name = 'SUYUN'
WHERE actor_id = 202;

UPDATE actor
SET first_name = 'SUHO'
WHERE actor_id = 203;

UPDATE actor
SET last_name = 'GO'
WHERE actor_id = 'LEE';

SELECT * FROM actor;

UPDATE address
SET address = '392 Hangang-daero', 
    postal_code = 04323,
    phone = 11122223333,
    location =
             ST_GeomFromTexst('POINT(0 0)')
WHERE address_id = 606;

UPDATE film
SET rental_duration = 6,
	rental_rate = 6.99
WHERE title = 'Parasite';

UPDATE film
SET rental_duration = 4,
    rental_rate = 5.99,
    replacement_cost = 26.99
WHERE title = 'Train to Busan';

# DELETE
DELETE FROM payment
WHERE customer_id = 600;

DELETE FROM rental
WHERE customer_id = 600;

DELETE FROM customer
WHERE customer_id = 600;

DELETE FROM inventory
WHERE film_id = 1001 OR film_id = 1002;

DELETE FROM film
WHERE film_id IN (1001, 1002);

DELETE FROM actor
WHERE actor_id BETWEEN 201 AND 204;

DELETE FROM language
WHERE language_id = 7;

DELETE FROM address
WHERE address_id = 606;

DELETE FROM city
WHERE city = 'Seoul';

DELETE FROM country
WHERE country_id = 110;