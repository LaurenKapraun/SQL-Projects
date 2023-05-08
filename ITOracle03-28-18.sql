-- drop tables if exists.

drop table Reserves;
drop table Sailors;
drop table Boats;

-- create tables 

create table Sailors(
       sid       int not null constraint sailors_pk primary key,
       sname     varchar2(20),
       rating    int,
       age       decimal(4,1)
);
create table Boats(
       bid       int not null constraint boat_pk primary key,
       bname     varchar2(20),
       color     varchar2(20)
);
create table Reserves(
       sid       int,
       bid       int,
       day       date,
       primary key (sid,bid,day),
       foreign key (sid) references Sailors(sid)
               ON DELETE CASCADE,
       foreign key (bid) references Boats(bid)
               ON DELETE CASCADE 
);

-- initialize the tables 

insert into Sailors (sid,sname,rating,age)
values(22,'Dustin',7,45.0);
insert into Sailors (sid,sname,rating,age)
values(29,'Brutus',1,33.0);
insert into Sailors (sid,sname,rating,age)
values(31,'Lubber',8,55.5);
insert into Sailors (sid,sname,rating,age)
values(32,'Andy',8,25.5);
insert into Sailors (sid,sname,rating,age)
values(58,'Rusty',10,35.0);
insert into Sailors (sid,sname,rating,age)
values(64,'Horataio',7,35.0);
insert into Sailors (sid,sname,rating,age)
values(71,'Zorba',10,16.0);
insert into Sailors (sid,sname,rating,age)
values(74,'Horataio',9,35.0);
insert into Sailors (sid,sname,rating,age)
values(85,'Art',3,25.5);
insert into Sailors (sid,sname,rating,age)
values(95,'Bob',3,63.5);

insert into Boats (bid,bname,color)
values(101,'Interlake','blue');
insert into Boats (bid,bname,color)
values(102,'Interlake','red');
insert into Boats (bid,bname,color)
values(103,'Clipper','green');
insert into Boats (bid,bname,color)
values(104,'Marine','red');


insert into Reserves(sid,bid,day)
values(22,101,'10-OCT-16');
insert into Reserves(sid,bid,day)
values(22,102,'10-OCT-16');
insert into Reserves(sid,bid,day)
values(22,103,'8-OCT-16');
insert into Reserves(sid,bid,day)
values(32,104,'7-OCT-16');
insert into Reserves(sid,bid,day)
values(31,102,'10-Nov-16');
insert into Reserves(sid,bid,day)
values(31,103,'6-NOV-16');
insert into Reserves(sid,bid,day)
values(58,104,'12-NOV-16');
insert into Reserves(sid,bid,day)
values(64,101,'5-SEP-16');
insert into Reserves(sid,bid,day)
values(64,102,'8-SEP-16');
insert into Reserves(sid,bid,day)
values(74,103,'8-SEP-16');

--Q1 Find the names and ages of sailors with a rating above 7
SET ECHO ON;
SELECT sname, age
FROM Sailors
WHERE RATING > 7;

--Q2 Find the average age of sailors with a rating above 7
SET ECHO ON;
SELECT AVG(age) "Average Age"
FROM Sailors
WHERE RATING > 7;

--Q3 Find the total number of sailors with a rating above 7
SET ECHO ON;
SELECT COUNT(*) "Number of Sailors"
FROM Sailors
WHERE RATING > 7;

--Q4 Find the age of the oldest and youngest sailors.
SET ECHO ON;
SELECT MAX(age) "Oldest Sailor", MIN(age) "Youngest Sailor"
FROM Sailors;

--Q5 For each rating, find the age of the oldest and youngest sailors. Order by rating in ascending order. 
SET ECHO ON;
SELECT rating,  MAX(age) "Oldest Sailor", MIN(age) "Youngest Sailor"
FROM Sailors
GROUP BY rating
ORDER BY rating;

--Q6 Count the number of sailors for each rating. Order by rating descending.
SET ECHO ON;
SELECT rating,  COUNT(*) "Number of Sailors"
FROM Sailors
GROUP BY rating
ORDER BY rating DESC;

--Q7 Count the number of sailors for each rating as Total. Order by the total count of sailors.
SET ECHO ON;
SELECT rating,  COUNT(*) "Number of Sailors"
FROM Sailors
GROUP BY rating
ORDER BY COUNT(*);

--Q8 Count the number of sailors for each rating as Total. ONLY SHOW THOSE RATINGS WITH 2 OR MORE SAILRS. Order by rating. 
SET ECHO ON;
SELECT rating,  COUNT(*) "Number of Sailors"
FROM Sailors
GROUP BY rating
HAVING rating >= 2
ORDER BY rating;

--Q9 Count the number of different sailor names
SET ECHO ON;
SELECT COUNT(DISTINCT sname)  "Number of Different Names" 
FROM Sailors;

--Q10 For each red boat, find the number of reservations for this boat--Use an Explicit join
SET ECHO ON;
SELECT bname, COUNT(*)  "Number of Reservations" 
FROM Reserves r, Boats b
WHERE r.BID = b.BID
AND (color = 'red')
GROUP BY bname;

--Q11 Find the average age of sailors for each rating level that has at least two sailors
SET ECHO ON;
SELECT rating,  AVG(age) "Average Age"
FROM Sailors
GROUP BY rating
HAVING COUNT(*) >= 2
ORDER BY rating;

--Q12 Find the average rating for the sailor reserving each boat--Use an Implicit join
SET ECHO ON;
SELECT AVG(rating) "Average Rating", b.BID
FROM Sailors s, Boats b, Reserves r
WHERE  r.BID = b.BID AND r.SID = s.SID
GROUP BY b.BID;

