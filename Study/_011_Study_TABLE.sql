# CREATE TABLE

CREATE TABLE vip
(
	vip_id			INT NOT NULL AUTO_INCREMENT,
    first_name		VARCHAR(10) NOT NULL,
    last_name		VARCHAR(10) NOT NULL,
    email			VARCHAR(10) UNIQUE,
    phone_number	VARCHAR(20) UNIQUE,
    regist_date		TIMESTAMP DEFAULT NOW(),
    PRIMARY KEY 	(vip_id)
);

DESC vip;

INSERT INTO vip(first_name, last_name, 
			    email, phone_number)
VALUES ('Suan', 'Lee',
		'suan@', '010-1234-1234');
        
INSERT INTO vip(first_name, last_name, 
			    email, phone_number)
VALUES ('Elon', 'Musk',
		'elon@', '010-1111-2222');
        
INSERT INTO vip(first_name, last_name, 
			    email, phone_number)
VALUES ('Mark', 'Zuckerberg',
		'mark@', '010-3333-4444');
        
INSERT INTO vip(first_name, last_name, 
			    email, phone_number)
VALUES ('Sundar', 'Pichai',
		'sundar@', '010_5555-6666');
        
/* # INSERT ERROR

INSERT INTO vip
VALUES (1, 'Suan', 'Lee', 'suan@', 
        '010-1234-1234', '23/01/01');

INSERT INTO vip
VALUES (10, 'Suan', 'Lee', 'suan@', 
        '010-1234-1234', '23/01/01');
        
INSERT INTO vip
VALUES (10, 'Suan', 'Lee', 'suanlee@', 
        '010-1234-1234', '23/01/01');
        
*/

# ALTER TABLE

ALTER TABLE vip
ADD COLUMN ( gender CHAR(1) );

ALTER TABLE vip
ADD COLUMN ( age INT );

ALTER TABLE vip
ADD COLUMN ( dob DATE );

DESC vip;

SELECT * FROM vip;

UPDATE vip
SET gender = 'M', age = 23,
    dob = '2000-01-01'
WHERE vip_id = 1;

UPDATE vip
SET gender = 'M', age = 52,
    dob = '1971-06-28'
WHERE vip_id = 2;

UPDATE vip
SET gender = 'M', age = 39,
    dob = '1984-05-14'
WHERE vip_id = 3;

UPDATE vip
SET gender = 'M', age = 51,
    dob = '1972-07-12'
WHERE vip_id = 4;

ALTER TABLE vip
MODIFY COLUMN gender VARCHAR(10) NOT NULL;

ALTER TABLE vip
MODIFY COLUMN age INT DEFAULT 0;

ALTER TABLE vip
MODIFY COLUMN dob DATE NOT NULL;

DESC vip;

UPDATE vip
SET gender = 'Male'
WHERE vip_id IN (1, 2, 3, 4, 5);

INSERT INTO vip(first_name, last_name, 
				email, phone_number, 
				gender, dob)
VALUES ('Larry', 'Page', 
        '@larry', '010-8888-9999',
        'Male', '1973-03-26');
        
SELECT * FROM vip;

ALTER TABLE vip
CHANGE COLUMN phone_number phone
			  VARCHAR(20) UNIQUE;
              
ALTER TABLE vip
CHANGE COLUMN dob date_of_birth
			  DATE NOT NULL;            
              
ALTER TABLE vip
DROP COLUMN age;

ALTER TABLE vip
DROP COLUMN date_of_birth;

ALTER TABLE vip RENAME vvip;

SHOW TABLES;

ALTER TABLE vvip RENAME vip;

# TRUNCATE/DROP TABLE

TRUNCATE TABLE vip;

SELECT * FROM vip;

DROP TABLE vip;

SHOW TABLES;