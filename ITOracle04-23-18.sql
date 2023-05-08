DROP TABLE downloads;
DROP TABLE users;
DROP TABLE prods;


CREATE TABLE users(
 user_id NUMBER PRIMARY KEY,
 email_address VARCHAR2(20),
 first_name VARCHAR2(20),
 last_name VARCHAR2(20)
);

CREATE TABLE prods(
 prod_id NUMBER PRIMARY KEY,
 prod_name  VARCHAR2(20)
);

CREATE TABLE downloads(
 download_id NUMBER PRIMARY KEY,
 user_id  NUMBER REFERENCES users (user_id),
 download_date NUMBER,
 filename VARCHAR2(20),
 prod_id NUMBER REFERENCES prods (prod_id)
);
