# Date Function
#

# 현재 날짜와 시간 반환

SELECT CURDATE(), CURRENT_DATE();

SELECT CURTIME(), CURRENT_TIME();

# DATE_ADD(), DATE_SUB()

SELECT DATE_ADD(NOW(), INTERVAL 10 SECOND);
SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH);

SELECT DATE_SUB(NOW(), INTERVAL 10 MINUTE);
SELECT DATE_SUB(NOW(), INTERVAL 1 DAY);

# ADDTIME(), SUBTIME()

SELECT ADDTIME('2023-01-01 12:00:00', 
'01:30:30');
SELECT ADDTIME(CURTIME(), '02:20:30');

SELECT SUBTIME('2023-01-01 12:00:00', 
'01:30:30');
SELECT SUBTIME(CURTIME(), '02:20:30');

# YEAR(), MONTH(), DAYNAME()

SELECT YEAR(NOW(), MONTH(NOW()));
SELECT YEAR('2023/01/01'),
       MONTH('2023/09/01');
       
SELECT MONTHNAME(NOW()), DAYNAME(NOW());
SELECT MONTHNAME('2023/01/01'),
	   DAYNAME('2023/09/01');
       
# DAYOFMONTH(), DAYOFWEEK()

SELECT DAYOFMONTH(NOW()),
       DAYOFWEEK(NOW()), WEEKDAY(NOW());
SELECT DAYOFMONTH('2023/09/01'),
	   DAYOFWEEK('2023/09/01'),
       WEEKDAY('2023/09/01');
SELECT DAYOFMONTH('2023/09/05'),
	   DAYOFWEEK('2023/09/05'),
       WEEKDAY('2023/09/05');
SELECT DAYOFMONTH('2023/09/10'),
	   DAYOFWEEK('2023/09/10'),
       WEEKDAY('2023/09/10');

# DATE_FORMAT()

SELECT DATE_FORMAT(NOW(), '%Y-%m-%d');
SELECT DATE_FORMAT(NOW(), '%Y/%m/%d');
SELECT DATE_FORMAT(NOW(), '%D %M %y');
SELECT DATE_FORMAT(NOW(), '%e %b. %Y');

# DATE_FORMAT() 2

SELECT DATE_FORMAT(NOW(), '%1:%i');
SELECT DATE_FORMAT(NOW(), '%k:%i');
SELECT DATE_FORMAT(NOW(), '%h:%i:%S');
SELECT DATE_FORMAT(NOW(), '%H:%i:%s');

# DATE_FORMAT() 3

SELECT DATE_FORMAT(NOW(), '%r');
SELECT DATE_FORMAT(NOW(), '%T');
SELECT DATE_FORMAT(NOW(), '%U, %u');
SELECT DATE_FORMAT(NOW(), '%p %H:%i');

# COUNT()

SELECT COUNT(actor_id) FROM actor;
SELECT COUNT(address), COUNT(address2)
FROM address;
SELECT COUNT(*) FROM category;
SELECT COUNT(customer_id) FROM customer;
SELECT COUNT(*), COUNT(title) FROM film;
SELECT COUNT(payment_date) FROM payment;
SELECT COUNT(rental_id) FROM rental;

# SUM(), AVG()

SELECT COUNT(*), SUM(active) FROM customer;
SELECT SUM(rental_duration), SUM(length) FROM film;
SELECT SUM(amount) / COUNT(amount) FROM payment;

SELECT AVG(LENGTH(first_name)) FROM actor;
SELECT AVG(length), AVG(replacement_cost)
FROM film;
SELECT AVG(amount) FROM payment;

# MIN() / MAX()

SELECT MIN(rental_duration), MIN(length), 
	   MAX(replacement_cost),
       MAX(rental_rate)
FROM file;
SELECT MIN(amount), MAX(amount)
FROM file;
SELECT MIN(LENGTH(first_name)),
	   MAX(LENGTH(first_name))
FROM file;

# STDDEV(), VARIANCE() / 표준편차, 분산

SELECT STDDEV(rental_duration), 
	   STDDEV(length),
       STDDEV(repalcement_cost),
       STDDEV(rental_rate)
FROM film;

SELECT VARIANCE(rental_duration), 
	   VARIANCE(length),
       VARIANCE(repalcement_cost),
       VARIANCE(rental_rate)
FROM film;

SELECT STDDEV(amount), VARIANCE(amount)
FROM payment;

SELECT STDDEV(LENGTH(first_name)), 
       VARIANCE(LENGTH(first_name))
FROM customer;




