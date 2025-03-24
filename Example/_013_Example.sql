# 1. product 테이블 생성

CREATE TABLE product
(
	product_id	INT,
    name		VARCHAR(30),
    reg_date	DATETIME,
    weight		INT,
    price		INT
);

# 2. product 테이블의 name에 대해서 idx_name 이름의 unique 인덱스 생성

CREATE UNIQUE INDEX idx_name
ON product(name);

# 3. product 테이블의 reg_date에 대해서 idx_reg_date 이름의 인덱스 생성

CREATE INDEX idx_reg_date
ON product(reg_date);

# 4. product 테이블의 product_id를 기본키로 추가

ALTER TABLE product
ADD PRIMARY KEY(product_id);

# 5. product 테이블의 idx_name 인덱스 삭제

DROP INDEX idx_name
ON product;

# 6. product 테이블의 idx_reg_date 인덱스 삭제

DROP INDEX idx_reg_date
ON product;

# 7. product 테이블의 기본키 제거

ALTER TABLE product
DROP PRIMARY KEY;
