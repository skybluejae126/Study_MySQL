# 1. product 테이블 생성

CREATE TABLE product
(
	product_id		INT NOT NULL AUTO_INCREMENT,
    product_name	VARCHAR(10) NOT NULL,
    reg_date		DATETIME DEFAULT NOW(),
    PRIMARY KEY (product_id)
);

# 2. product 테이블에 데이터 삽입

INSERT INTO product(product_name)
VALUES ('Computer');

INSERT INTO product(product_name)
VALUES ('Smartphone');

INSERT INTO product(product_name, reg_date)
VALUES ('Television', '2000-03-01');

# 3. product 테이블 수정

ALTER TABLE product
CHANGE COLUMN product_name NAME VARCHAR(30)
UNIQUE;

ALTER TABLE product
ADD COLUMN ( weight INT NOT NULL );

ALTER TABLE product
ADD COLUMN ( price INT NOT NULL );

# 4. product 테이블의 데이터 수정

UPDATE product
SET weight = 10, price = 1600000
WHERE product_id = 1;

UPDATE product
SET weight = 0.2, price = 1000000
WHERE product_id = 2;

UPDATE product
SET weight = 20, price = 2000000
WHERE product_id = 3;

# 5. product 테이블의 열 제거

ALTER TABLE product
DROP COLUMN reg_date;

ALTER TABLE product
DROP COLUMN weight;

# 6. product 테이블의 모든 데이터 삭제

TRUNCATE TABLE product;

# 7. product 테이블 삭제

DROP TABLE product;
