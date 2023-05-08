-- DDL for IT378 04-16-2018 In-Class

DROP TABLE PARTS;
DROP TABLE PART_CATEGORIES;

CREATE TABLE PARTS
    (part_num int, name varchar2(108), part_cat_id int)
;
CREATE TABLE PART_CATEGORIES
   (ID INT CONSTRAINT pc_pk PRIMARY KEY, NAME varchar2(50))
  ;

INSERT ALL 
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47424, 'DUPLO TRUCK BOTTOM 5X9X5,5', 4)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47437, 'Duplo Car with 2 Studs on Roof, Blue Base and ''POLICE'' Print', 4)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47440, 'Pickup Truck 5 X 10 X 4 Assembly', 4)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47448, 'Duplo Trailer Bed with 2 x 4 Studs and Four Sides', 4)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47451, 'Duplo Trailer with Frame and 2 x 4 Studs', 4)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47456, 'Brick Wedged 2 x 3 x 2/3 Two Studs, Wing End', 6)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47458, 'Brick Wedged 1 x 2 x 2/3 No Studs, Wing End', 6)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47431, 'Technic Brick Special 2 x 2 with Axle Hole, Rotation Joint Ball Half [Vertical Side], Vertical Axle Hole End', 26)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47432, 'Technic Brick Special 2 x 3 with Pin Holes, Rotation Joint Ball Half [Vertical Side], Rotation Joint Socket', 26)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47452, 'Technic Brick Special 2 x 2 with Pin Hole, Rotation Joint Ball Half [Horizontal Top], Rotation Joint Socket', 26)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47454, 'Technic Brick Special 2 x 3 with Pin Holes, Rotation Joint Ball Half [Horizontal Top], Rotation Joint Socket', 26)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47457, 'Brick Curved 2 x 2 x 2/3 Two Studs, Curved Slope End', 37)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47430, 'Foot with Rotation Joint Ball Half [Vertical Side]', 41)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47459, 'Sword, Danju - Series 1', 41)
    INTO PARTS (part_num, name, part_cat_id)
         VALUES (47455, 'Technic Rotation Joint Ball Loop with Two Perpendicular Pins with Friction', 53)
SELECT * FROM dual
;

INSERT INTO PART_CATEGORIES VALUES (2, 'Bricks Printed');
INSERT INTO PART_CATEGORIES VALUES (4, 'Duplo, Quatro and Primo');
INSERT INTO PART_CATEGORIES VALUES (6, 'Bricks Wedged');
INSERT INTO PART_CATEGORIES VALUES (26, 'Technic Special');
INSERT INTO PART_CATEGORIES VALUES (28, 'Plants and Animals');
INSERT INTO PART_CATEGORIES VALUES (37, 'Bricks Curved');
INSERT INTO PART_CATEGORIES VALUES (41, 'Bionicle, Hero Factory and Construction');
INSERT INTO PART_CATEGORIES VALUES (53, 'Technic Pins');

SET ECHO ON;
SELECT *
FROM PARTS, PART_CATEGORIES
WHERE PARTS.part_cat_id = PART_CATEGORIES.ID
AND PARTS.NAME LIKE 'Duplo%';