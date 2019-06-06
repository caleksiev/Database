SET SCHEMA DB2MOVIES;

SELECT title,year
FROM movie
WHERE title LIKE '%Star%Trek%'
OR title LIKE '%Trek%Star%'
ORDER BY year DESC,title;

SELECT movietitle,movieyear
FROM starsin JOIN  moviestar
ON starname = name
WHERE birthdate BETWEEN '1.1.1970' AND  '1.7.1980' ;


