# 1. customer 테이블에서 first_name만 중복을 제외하고, 별칭으로 ‘고객이름’을 사용하여 조회

SELECT DISTINCT first_name AS 고객이름
FROM customer;

# 2. customer_list에서 중복을 제외하고 count는 별칭으로 ‘국가’, city는 별칭으로 ‘도시’로 사용하여 조회

SELECT DISTINCT country AS 국가,
                city AS 도시
FROM customer_list; 

# 3. film_list에서 title은 별칭 ‘제목’, category는 별칭 ‘분류’, 
# price는 별칭 ‘가격’, rating은 별칭 ‘등급’으로 사용하여 조회

SELECT title AS 제목, category AS 분류,
       price AS 가격, rating AS 등급
FROM film_list;
