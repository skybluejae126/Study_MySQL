# 1. country 테이블에서 country가 ‘Brazil’과 ‘Austria’ 인 것을 조회

SELECT *
FROM country 
WHERE country = 'Brazil' 
   OR country = 'Austria';

# 2. film_list에서 category가 ‘Horror’가 아닌 것의 title, description, category, price를 조회

SELECT title, description, 
       category, price
FROM film_list
WHERE NOT category = 'Horror';  

# 3. customer_list에서 country가 ‘South Korea’이고 SID가 1인 것을 조회

SELECT *
FROM customer_list
WHERE country = 'South Korea' 
  AND SID = 1;