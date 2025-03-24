SHOW TABLES;

# 한 줄 주석

-- 한 줄 주속

/* 두 줄 이상
	주석 처리 */

# SELECT

SELECT * FROM actor;

SELECT * FROM actor_info;

SELECT * FROM address;

SELECT * FROM category;

SELECT * FROM city;

SELECT * FROM country;

# 특정 컬럼만 조회

SELECT first_name, last_name
FROM actor;

SELECT first_name, last_name
FROM customer;

SELECT title, rating
FROM film;

SELECT payment_date, amount
FROM payment;

SELECT rental_date, return_date
FROM rental;

# 별칭 사용하기

SELECT last_name AS 성, first_name AS 이름
FROM actor; 

SELECT title AS 제목, rating AS 등급
FROM film; 

SELECT rental_date AS 대여일,
	   return_date AS 반납일
FROM actor; 

# 중복 제외

SELECT DISTINCT last_name
FROM actor;

SELECT DISTINCT category FROM file_list;

SELECT DISTINCT rating FROM film;
