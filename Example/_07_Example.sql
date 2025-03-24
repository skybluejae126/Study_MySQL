# 1. film_list에서 category와 rating 기준으로 그룹화하여 length와 price 평균을 조회

SELECT category, rating,
       AVG(length), AVG(price)
FROM film_list
GROUP BY category, rating;

# 2. customer_list에서 country와 city 기준으로 그룹화하여 그룹별 개수가 1 초과인 것 조회

SELECT country, city, COUNT(*)
FROM customer_list
GROUP BY country, city
HAVING COUNT(*) > 1;

# 3. city 테이블에서 도시명이 ‘C’로 시작하는 것과 ‘T’로 시작하는 것을  합집합

SELECT * FROM city
WHERE city LIKE 'C%'
UNION
SELECT * FROM city
WHERE city LIKE 'T%';
