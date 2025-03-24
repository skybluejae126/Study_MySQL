# 1. 변수 country를 선언하여 ‘South Korea’ 값을 대입

SET @country = 'South Korea';

# 2. 변수 city를 선언하여 ‘Naju’ 값을 대입

SET @city = 'Naju';

# 3. customer_list에서 country와 city의 값을 parameter(‘?’)로 하는 
# SQL customer_query 를 PREPARE로 선언

PREPARE customer_query
FROM 'SELECT *
      FROM customer_list
      WHERE country = ?
        AND city = ?';

# 4. EXECUTE로 customer_query를 변수 country와 city를 이용해 실행

EXECUTE customer_query 
USING @country, @city;
