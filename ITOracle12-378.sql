-- Diving in to SQL
-- Exercise for 01-22-2018
-- Here is the DDL to load the needed tables

SET ECHO ON; 
DROP TABLE Subs; 
DROP Table ships;


CREATE TABLE Subs
(SUB_ID varchar2(5))
;

INSERT ALL
INTO Subs (SUB_ID) VALUES ('I-166')
INTO Subs (SUB_ID) VALUES ('I-176')
INTO Subs (SUB_ID) VALUES ('I-177')
INTO Subs (SUB_ID) VALUES ('I-180')
INTO Subs (SUB_ID) VALUES ('I-182')
SELECT * FROM dual
;

CREATE TABLE ships
(Ship varchar2(13), Country varchar2(2), SUB_ID varchar2(5))
;

INSERT ALL
INTO ships (Ship, Country, SUB_ID) VALUES ('SS Fingal', 'NL', 'I-180') 
INTO ships (Ship, Country, SUB_ID) VALUES ('AHS Centaur', 'AU', 'I-177') 
INTO ships (Ship, Country, SUB_ID) VALUES ('HNLMS K XVI', 'NL', 'I-166') 
INTO ships (Ship, Country, SUB_ID) VALUES ('USAT Liberty', 'US', 'I-166')
INTO ships (Ship, Country, SUB_ID) VALUES ('USS Seadragon', 'US', NULL)
SELECT * FROM dual
;

-- Here are the tables

SELECT * FROM ships; 
SELECT * FROM subs;