# 1. film_list에서 category, rating, title, price, length 그리고 length를 100으로 
# 나눈 값을 price에 곱하고 소수점 둘째자리까지 반올림하여 조회

SELECT category, rating, title, price, 
       length, ROUND(price * (length / 100), 2)
FROM film_list;

# 2. customer 테이블에서 first_name의 첫문자만 대문자로 바꾸고 나머지는 소문자로 조회

SELECT CONCAT(UPPER(LEFT(first_name, 1)), LOWER(SUBSTRING(first_name, 2)))
FROM customer;

# 3. customer_list에서 address, zip code, city, country 순서대로 쉼표(,)로 문자열을 연결하여
# 조회 (띄어쓰기가 포함된 컬럼명(zip code)은 ` 기호를 이용해 묶음)

SELECT CONCAT(address, ', ', 'zip code', ', ', city, ', ', country)
FROM customer_list;