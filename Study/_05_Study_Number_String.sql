# CEIL(), FLOOR() 함수 / 올림, 내림

SELECT CEIL(1.0), CEIL(1.4),
	   CEIL(1.8), CEIL(2.0);
       
SELECT FLOOR(1.0), FLOOR(1.4),
	   FLOOR(1.8), FLOOR(2.0);

# ROUND(), TRUNCATE() 함수 / 반올림, 버림

SELECT ROUND(1.0), ROUND(1.4),
	   ROUND(1.8), ROUND(2.0);
SELECT ROUND(1.23456789, 1), 
	   ROUND(1.23456789, 4), 
       ROUND(1.23456789, 7);
       
SELECT TRUNCATE(1.23456789, 1),
	   TRUNCATE(1.23456789, 4), 
       TRUNCATE(1.23456789, 7);
       
# ABS(), POW(), MOD() 함수 / 절대값, 제곱, 제곱근, 나머지

SELECT ABS(123), ABS(-123);

SELECT POW(10, 3), POW(2, 3), SQRT(4);

SELECT MOD(10, 3), MOD(20, 7);

# GREATEST(), LEAST() 함수 / 가장 큰 값, 가장 작은 값

SELECT GREATEST(12, 4, 18, 2, 8);

SELECT LEAST(12, 4, 18, 2, 8);

# Example

SELECT CEIL(AMOUNT * 1.2),
	   FLOOR(AMOUNT * 1.2),
       ROUND(AMOUNT * 1.2, 2),
       TRUNCATE(AMOUNT * 1.2, 1)
FROM payment;

SELECT CEIL(replacement_cost * 1.1), 
	   FLOOR(replacement_cost * 1.1),
       ROUND(replacement_cost * 1.1, 2),
       TRUNCATE(replacement_cost * 1.1, 1)
FROM film;

# LOWER(), UPPER(), LENGTH() / 소문자, 대문자, 길이

SELECT first_name,
       LOWER(first_name),
       LCASE(first_name)
FROM customer;

SELECT city,
       UPPER(city),
       UCASE(city)
FROM customer;

SELECT first_name, last_name,
       LENGTH(first_name),
       LENGTH(last_name)
FROM actor;

# LEFT(), RIGHT(), MID() / 지정한 문자열 길이만큼 가져오기

SELECT first_name, 
       LEFT(first_name, 4),
       RIGHT(first_name, 4),
       MID(first_name, 2, 6)
FROM customer;

SELECT city,
       LEFT(city, 3),
       RIGHT(city, 3), 
       MID(CITY, 3, 6)
FROM city;

# LPAD(), RPAD(), REPEAT() / 지정한 문자열 길이만큼 채우기

SELECT first_name,
       LPAD(first_name, 10, '*'),
       RPAD(first_name, 10, '*')
FROM customer;

SELECT city,
	   LPAD(city, 10, '*'),
       RPAD(city, 10, '*')
FROM city;

SELECT first_name, last_name,
	   REPEAT(first_name, 3),
       REPEAT(last_name, 2)
FROM city;

# LTRIM(), RTRIM(), TRIM() / 공백 제거

SELECT '   MYSQL   ',
	   LTRIM('   MYSQL   '),
       RTRIM('   MYSQL   '),
       TRIM('   MYSQL   ')
FROM customer

# CONCAT(), INSERT() / 합치기

SELECT CONCAT(first_name, ' ', last_name)
FROM customer;

SELECT CONCAT(address, ' ', district)
FROM address;

SELECT INSERT(first_name, 3, 5, '*')
FROM customer;

SELECT INSERT(title, 4, 7, '  ')
FROM film;

# REPLACE(), INSTR() / 다른 문자열로 대체, 특정 위치 반환

SELECT REPLACE(first_name, 'CHRI', 'SQL')
FROM actor
WHERE first_name LIKE 'CHRI%';

SELECT REPLACE(rating, 
			   'NC-17', '17세 이상 관람가')
FROM film;

SELECT INSTR(first_name, 'LY')
FROM actor
WHERE first_name LIKE '%LY%';

SELECT INSTR(address, 'SA')
FROM address
WHERE address LIKE '%SA%';

# SUBSTRING(), REVERSE() / 시작위치에서 개수만금 가져옴, 반대로

SELECT SUBSTRING(first_name, 1, 5)
FROM customer;

SELECT SUBSTRING(title, 1, 8)
FROM film;

SELECT REVERSE(last_name)
FROM actor;

SELECT REVERSE(name)
FROM category;