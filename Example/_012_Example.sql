# 1. customer_list에서 country가 ‘South Korea’인 것만 south_korea_customer_view 이름의 뷰로 생성

CREATE VIEW south_korea_customer_view AS
SELECT * FROM customer_list
WHERE country = 'South Korea';

# 2. customer_list에서 SID가 1인 것만 store1_customer_view 이름의 뷰로 생성

CREATE VIEW store1_customer_view AS
SELECT * FROM customer_list
WHERE SID = 1;

# 3. staff 테이블에서 store_id, first_name, last_name, username, email, address_id,
# active에 대해 store_id가 1인 것만 store1_staff_view 이름의 뷰로 생성

CREATE VIEW store1_staff_view AS
SELECT store_id, first_name, last_name,
       username, email, address_id, active
FROM staff
WHERE store_id = 1;

# 4. store1_customer_view 뷰에서 notes가 active 것만 조회가 능하도록 수정

ALTER VIEW store1_customer_view AS
SELECT * FROM customer_list
WHERE SID = 1 AND notes = 'active';

# 5. store1_staff_view  뷰에서 조건에 맞는 데이터만 입력 가능하도록 수정

ALTER VIEW store1_staff_view AS
SELECT store_id, first_name, last_name,
       username, email, address_id, active
FROM staff
WHERE store_id = 1
WITH CHECK OPTION;

# 6. store1_staff_view 뷰에 임의의 staff 삽입

INSERT store1_staff_view 
VALUES (1, 'Suan', 'Lee', 'suan', 
'suan.lee@sakilastaff.com', 5, 1);

# 7. south_korea_customer_view 뷰 삭제

DROP VIEW south_korea_customer_view;

# 8. store1_customer_view 뷰 삭제

DROP VIEW store1_customer_view;

# 9. store1_staff_view 뷰 삭제

DROP VIEW store1_staff_view;
