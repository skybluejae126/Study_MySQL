# INDEX EXAMPLE

SHOW INDEX FROM actor;

SHOW INDEX FROM film;

SHOW INDEX FROM customer;

SHOW INDEX FROM payment;

SHOW INDEX FROM rental;

# 인덱스 확인

EXPLAIN 
SELECT * FROM film;

EXPLAIN
SELECT * FROM film
WHERE language_id = 1;

EXPLAIN
SELECT * FROM film
WHERE title = 'DAVIS';

# 인덱스 생성

CREATE TABLE vip
(
	vip_id			INT NOT NULL AUTO_INCREMENT,
    first_name		VARCHAR(10) NOT NULL,
    last_name		VARCHAR(10) NOT NULL,
    email			VARCHAR(10) UNIQUE,
    phone			VARCHAR(20) UNIQUE,
    regist_date		TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY (vip_id)
);

SHOW INDEX FROM vip;

DROP TABLE vip;

CREATE TABLE vip
(
	vip_id			INT NOT NULL AUTO_INCREMENT,
    first_name		VARCHAR(10) NOT NULL,
    last_name		VARCHAR(10) NOT NULL,
    email			VARCHAR(10),
    phone			VARCHAR(20),
    regist_date		TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY (vip_id),
    CONSTRAINT idx_email UNIQUE(email),
    CONSTRAINT idx_phone UNIQUE(phone),
    INDEX idx_regist_date(regist_date ASC)
);

SHOW INDEX FROM vip;

DROP TABLE vip;

# CREATE INDEX

CREATE TABLE vip
(
	vip_id			INT PRIMARY KEY,
    first_name		VARCHAR(10) NOT NULL,
    last_name		VARCHAR(10) NOT NULL,
    email			VARCHAR(10),
    phone			VARCHAR(20),
    regist_date		TIMESTAMP DEFAULT NOW()
);

SHOW INDEX FROM vip;

CREATE INDEX idx_regist_date
ON vip(regist_date);

CREATE UNIQUE INDEX idx_email
ON vip(email);

CREATE UNIQUE INDEX idx_phone
ON vip(phone);

CREATE INDEX idx_name
ON vip(first_name, last_name);

DROP TABLE vip;

# ALTER ~ ADD INDEX

CREATE TABLE vip
(
	vip_id			INT,
    first_name		VARCHAR(10) NOT NULL,
    last_name		VARCHAR(10) NOT NULL,
    email			VARCHAR(10),
    phone			VARCHAR(20),
    regist_date		TIMESTAMP DEFAULT NOW()
);

SHOW INDEX FROM vip;

ALTER TABLE vip
ADD PRIMARY KEY(vip_id);

ALTER TABLE vip
ADD UNIQUE INDEX idx_email(email);

ALTER TABLE vip
ADD UNIQUE INDEX idx_phone(phone);

ALTER TABLE vip 
ADD INDEX idx_regist_date(regist_date);

ALTER TABLE vip
ADD INDEX idx_name(first_name, last_name);

SHOW INDEX FROM vip;

# 인덱스 삭제

DROP INDEX idx_name
ON vip;

DROP INDEX idx_regist_date
ON vip;

ALTER TABLE vip
DROP INDEX idx_email,
DROP INDEX idx_phone;

ALTER TABLE vip
DROP PRIMARY KEY;

