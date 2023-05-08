--1st Run the following

DROP TABLE Subs; 
DROP Table ships;


CREATE TABLE Subs
(SUB_ID varchar2(5), 
CAPTAIN varchar2(25))
;

INSERT ALL
INTO Subs (SUB_ID, CAPTAIN) VALUES ('I-166', 'Suwa Koichiro')
INTO Subs (SUB_ID, CAPTAIN) VALUES ('I-176', 'Okada Hideo')
INTO Subs (SUB_ID, CAPTAIN) VALUES ('I-177', 'Matsumura Kanji')
INTO Subs (SUB_ID, CAPTAIN) VALUES ('I-180', 'Fujita Hidenori')
INTO Subs (SUB_ID, CAPTAIN) VALUES ('I-182', 'Yonehara Minoru')
SELECT * FROM dual
;

CREATE TABLE ships
(Ship varchar2(13), 
Country varchar2(2), 
SUB_ID varchar2(5))
;

INSERT ALL
INTO ships (Ship, Country, SUB_ID) VALUES ('SS Fingal', 'NL', 'I-180') 
INTO ships (Ship, Country, SUB_ID) VALUES ('AHS Centaur', 'AU', 'I-177') 
INTO ships (Ship, Country, SUB_ID) VALUES ('HNLMS K XVI', 'NL', 'I-166') 
INTO ships (Ship, Country, SUB_ID) VALUES ('USAT Liberty', 'US', 'I-166')
INTO ships (Ship, Country, SUB_ID) VALUES ('USS Seadragon', 'US', NULL)
SELECT * FROM dual
;

-- 2nd Look at the tables
-- Here are the tables
SET ECHO ON; 
SELECT * FROM ships; 
SELECT * FROM subs;


-- 3rd answer the following
-- send me both the code and the results via email. 


-- Questions for today's in-class (all of these can be done without a join)
--1. Find all the ship names in the SHIPS table
SET ECHO ON;
SELECT * FROM ships;

--2. Find the number of ships in the SHIPS table
SET ECHO ON;
SELECT COUNT(*) FROM ships;

--3. Find the ship names and the number of the sub that sank them
SET ECHO ON;
SELECT Ship, SUB_ID FROM ships;

--4. Find the number of ships sank by sub I-166
SET ECHO ON;
SELECT  COUNT(*)
FROM ships
WHERE SUB_ID='I-166';

--5. Find the ship names and the number of the sub that sank them -- ONLY for US ships
SET ECHO ON;
SELECT Ship,  SUB_ID
FROM ships
WHERE Country='US';

--6. Find the number of US ships NOT attacked/sank in the SHIPS table
SET ECHO ON;
SELECT COUNT(*)
FROM ships
WHERE Country='US' AND SUB_ID IS null;