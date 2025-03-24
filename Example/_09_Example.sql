# 1. film 테이블에서 payment 테이블의 평균 amount 보다 큰 rental_rate을 가지는 영화의 title, 
# description, length, rental_rate을 조회

SELECT title, description, 
       length, rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(amount)
                     FROM payment);

# 2. customer 테이블에서 address 테이블의 district가 ‘Tel Aviv’에 해당하는 address_id에 
# 포함하는 고객의 first_name, last_name, email을 조회

SELECT first_name, last_name, email
FROM customer
WHERE address_id IN 
	(SELECT address_id
     FROM address
     WHERE district = 'Tel Aviv');

# 3. film 테이블에서 film 테이블의 rating이 ‘NC-17’인 영화의 length 보다 큰 조건을 모두 만족하는
# length를 가지는 영화의 title, description, length를 조회

SELECT title, description, length
FROM film
WHERE length > 
           ALL (SELECT length 
				FROM film
                WHERE rating = 'NC-17');