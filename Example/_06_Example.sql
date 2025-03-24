# 1. payment 테이블에서 payment_date과 payment_date의 5일 뒤 날짜, 1달 뒤의 날짜를 조회

SELECT payment_date,
       DATE_ADD(payment_date, INTERVAL 5 DAY),
       DATE_ADD(payment_date, INTERVAL 1 MONTH)
FROM payment;

# 2. rental 테이블에서 rental_date, return_date, 그리고 두 날짜의 차이를 DATEDIFF() 함수로 조회

SELECT rental_date, return_date,
       DATEDIFF(return_date, rental_date)
FROM rental;

# 3. customer 테이블에서 create_date을 숫자로 표시되는 일, 짧은 월 이름, 4자리 년도 순서로 
# 날짜 형식을 변환하여 조회

SELECT DATE_FORMAT(create_date, '%d %b %Y')
FROM customer;
