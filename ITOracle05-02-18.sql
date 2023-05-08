-- IT378 05-02-18 In-Class


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

COMMIT;

-- Here are the tables

SELECT * FROM ships; 
SELECT * FROM subs;


-- 1 Do a FULL OUTER JOIN subs and ships using USING(SUB_ID); 
SELECT *
FROM subs FULL JOIN ships
USING(sub_id)
ORDER BY ship;
-- 2 Do a FULL OUTER JOIN subs and ships using ON
SELECT *
FROM subs FULL JOIN ships
ON ships.sub_id = subs.sub_id
ORDER BY ship;
-- 3 Do a RIGHT OUTER JOIN subs and ships using ON...But only for US ships
SELECT *
FROM subs RIGHT JOIN ships
ON ships.sub_id = subs.sub_id
WHERE ships.country = 'US'
ORDER BY ship;
-- 4 Do a RIGHT OUTER JOIN ships and subs using ON But only for US ships
SELECT *
FROM ships RIGHT JOIN subs
ON ships.sub_id = subs.sub_id
WHERE ships.country = 'US'
ORDER BY ship;

-- 5 try this query
SELECT *
FROM ships, subs
where subs.SUB_ID(+) = ships.sub_id;

-- What kind of join is it? Implicit Right Outer Join

-- 6 try this query
SELECT *
FROM ships, subs
where subs.SUB_ID = ships.sub_id(+);

-- What kind of join is it? Implicit Left Outer Join
 
-- Only for Kage-level SQL Ninjas
--7 Do a RIGHT OUTER JOIN ships and subs using ON...But only for NON-US ships
SELECT *
FROM ships RIGHT JOIN subs
ON ships.sub_id = subs.sub_id
WHERE ships.country != 'US'
ORDER BY ship;

--8 Show all subs and the number of ships they have sank. Even if the number is zero.
SELECT subs.SUB_ID, COUNT(ships.SUB_ID)
FROM subs Right JOIN ships
ON ships.sub_id = subs.sub_id 
GROUP BY subs.SUB_ID
ORDER BY COUNT(ships.SUB_ID) DESC;

--9 Show all subs and the number of ships they have sank. Only if they have sank 1 or more.
SELECT subs.SUB_ID, COUNT(ships.SUB_ID)
FROM subs Right JOIN ships
ON ships.sub_id = subs.sub_id 
GROUP BY subs.SUB_ID
HAVING COUNT(ships.SUB_ID) > 0
ORDER BY COUNT(ships.SUB_ID) DESC;