DROP TABLE BEARS;
DROP TABLE CUBS;

CREATE TABLE BEARS
    (Day date, Location varchar2(13), Opponent varchar2(7))
;

INSERT ALL 
    INTO BEARS (Day, Location, Opponent)
         VALUES ('11-Sep-2016 ', 'Houston, TX', 'Texans')
    INTO BEARS (Day, Location, Opponent)
         VALUES ('19-Sep-2016 ', 'Chicago, IL', 'Eagles')
    INTO BEARS (Day, Location, Opponent)
         VALUES ('25-Sep-2016 ', 'Arlington, TX', 'Cowboys')
    INTO BEARS (Day, Location, Opponent)
         VALUES ('02-Oct-2016 ', 'Chicago, IL', 'Lions')
SELECT * FROM dual
;

CREATE TABLE CUBS
    (Day date, Location varchar2(14), VS varchar2(9))
;

INSERT ALL 
    INTO CUBS (Day, Location, VS)
         VALUES ('11-Sep-2016 ', 'Houston, TX', 'Astros')
    INTO CUBS (Day, Location, VS)
         VALUES ('12-Sep-2016 ', 'St. Louis, MO', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('13-Sep-2016 ', 'St. Louis, MO', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('14-Sep-2016 ', 'St. Louis, MO', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('15-Sep-2016 ', 'Chicago, IL', 'Brewers')
    INTO CUBS (Day, Location, VS)
         VALUES ('16-Sep-2016 ', 'Chicago, IL', 'Brewers')
    INTO CUBS (Day, Location, VS)
         VALUES ('17-Sep-2016 ', 'Chicago, IL', 'Brewers')
    INTO CUBS (Day, Location, VS)
         VALUES ('18-Sep-2016 ', 'Chicago, IL', 'Brewers')
    INTO CUBS (Day, Location, VS)
         VALUES ('19-Sep-2016 ', 'Chicago, IL', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('20-Sep-2016 ', 'Chicago, IL', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('21-Sep-2016 ', 'Chicago, IL', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('23-Sep-2016 ', 'Chicago, IL', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('24-Sep-2016 ', 'Chicago, IL', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('25-Sep-2016 ', 'Chicago, IL', 'Cardinals')
    INTO CUBS (Day, Location, VS)
         VALUES ('26-Sep-2016 ', 'Pittsburgh, PA', 'Pirates')
    INTO CUBS (Day, Location, VS)
         VALUES ('27-Sep-2016 ', 'Pittsburgh, PA', 'Pirates')
    INTO CUBS (Day, Location, VS)
         VALUES ('28-Sep-2016 ', 'Pittsburgh, PA', 'Pirates')
    INTO CUBS (Day, Location, VS)
         VALUES ('29-Sep-2016 ', 'Pittsburgh, PA', 'Pirates')
    INTO CUBS (Day, Location, VS)
         VALUES ('30-Sep-2016 ', 'Cincinnati, OH', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('01-Oct-2016 ', 'Cincinnati, OH', 'Reds')
    INTO CUBS (Day, Location, VS)
         VALUES ('02-Oct-2016 ', 'Cincinnati, OH', 'Reds')
SELECT * FROM dual
;