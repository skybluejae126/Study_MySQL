# 1. sales_by_film_category에서 total_sales가 4000 부터 4500인 것을 BETWEEN 연산자를 이용해 조회

SELECT * 
FROM sales_by_film_category
WHERE total_sales BETWEEN 4000 AND 4500;

# 2. film_list에서 category가 ‘Action’과 ‘Sci-Fi’인 것을 IN 연산자를 이용해 조회

SELECT *
FROM film_list
WHERE category IN ('Action', 'Sci_Fi');

# 3. customer_list에서 country가 ‘South’로 시작하는 것을 LIKE 연산자를 이용해 조회

SELECT *
FROM customer_list
WHERE country LIKE 'South%';

# 4. film_list에서 rating 내림차순, category 오름차순, price 내림차순, 
# title 오름차순 정렬로 rating, category, price, title 조회

SELECT rating, category, price, title
FROM film_list
ORDER BY rating DESC, category,
         price DESC, title;

