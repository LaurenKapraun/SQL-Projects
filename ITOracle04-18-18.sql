DROP TABLE five;
DROP TABLE first_pay;

CREATE TABLE five (
 numb NUMBER PRIMARY KEY,
 spelling VARCHAR2(20)
);

CREATE TABLE first_pay(
pay_id  VARCHAR2(4) PRIMARY KEY,
name VARCHAR2(20),
jobcode CHAR(2) ,
startdate DATE,
salary NUMBER(9,2) ,
bonus NUMBER(5)
);


--five table
INSERT INTO five (numb, spelling) VALUES (1, 'one' );
INSERT INTO five (numb, spelling) VALUES (2, 'two' );
INSERT INTO five (numb, spelling) VALUES (3, 'three');
INSERT INTO five VALUES (4, 'four' );
INSERT INTO five (spelling, numb) VALUES ('five', 5);

--first_pay table
INSERT INTO first_pay VALUES (1111, 'Linda Costa', 'CI', '15-JAN-97', 45000, 1000);
INSERT INTO first_pay VALUES (2222, 'John Davidson', 'IN', '25-SEP-92', 40000, 1500);
INSERT INTO first_pay VALUES (3333, 'Susan Ash', 'AP', '05-FEB-00', 25000, 500);
INSERT INTO first_pay VALUES (4444, 'Stephen York', 'CM', '03-JUL-97', 42000, 2000);

describe five;
select * from five;

describe first_pay;
select * from first_pay;