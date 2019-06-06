SET SCHEMA DB2MOVIES;

--1
SELECT name
FROM movieexec
where networth>10000000 and name in (SELECT name
									 FROM moviestar
                                     WHERE gender='F');

                                  
--2

SELECT name
FROM movieexec
WHERE name NOT IN (SELECT name
                   FROM moviestar);
                   
--3
SELECT title 
FROM movie
WHERE length > (SELECT length
                FROM movie
                WHERE title='Gone With the Wind');
                
--4
SELECT title,t.name
FROM movie, (SELECT cert#,name
             FROM movieexec
             WHERE networth > (SELECT networth
                               FROM movieexec
                               WHERE name ='Mery Griffin')) t
WHERE producerc#=t.cert#;

--5

select studioname,title,length
from movie m
where length >= all (SELECT length
                     FROM movie
                     WHERE studioname=m.studioname);
                     
                     
                     
                     

                                  
                                

