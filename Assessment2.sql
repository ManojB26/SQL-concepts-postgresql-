--use excersises datatable for querying not dvdrental

SELECT * FROM cd.bookings;
--here SELECT * FROM bookings; can't be used as it throws below error
--ERROR:  relation "bookings" does not exist
--LINE 3: SELECT * FROM bookings

--Assement question link: "https://docs.google.com/document/d/1wiuYbTQslmfolQWgeVPB356csjK6yqOUBhgC7fM44o8/edit"
--Sloution link: "https://docs.google.com/document/d/1swGZ0RG3KKqWqzmsI_qrMgjJ3lt39mtAJqRSMZy6Z-8/edit?usp=sharing"

SELECT name, membercost FROM cd.facilities
WHERE name LIKE '%Tennis%';

SELECT * FROM cd.facilities
WHERE membercost!=0;

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost<(monthlymaintenance/50) and membercost>0;

SELECT * FROM cd.facilities
WHERE facid IN (1,5);

SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate>='2012-09-01';

SELECT surname FROM cd.members
ORDER BY surname LIMIT 10;

SELECT max(joindate) as latest_signup FROM cd.members;

SELECT COUNT(*) FROM cd.facilities
WHERE guestcost>=10;

SELECT facid, SUM(slots) as "Total_slots"  FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' and '2012-09-30'
GROUP BY facid ORDER BY SUM(slots) ASC;

SELECT facid, SUM(slots) as "Total_slots"  FROM cd.bookings
GROUP BY facid 
HAVING SUM(slots)>1000;

SELECT name,b.starttime as start FROM cd.facilities as f
INNER JOIN cd.bookings as b ON b.facid=f.facid
WHERE name ILIKE '%Tennis COURT%' 
AND b.starttime>='2012-09-21' 
AND b.starttime<='2012-09-22';

SELECT cd.bookings.starttime 
FROM cd.bookings 
INNER JOIN cd.members ON 
cd.members.memid = cd.bookings.memid 
WHERE cd.members.firstname='David' 
AND cd.members.surname='Farrell';
