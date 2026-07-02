CREATE DATABASE NetflixDB;
USE NetflixDB;

--                                      >>>>>>>  SQL Analysis for Netflix Content Strategy <<<<<<                        --

#-1 Total Movies

SELECT COUNT(*)
FROM netflix
WHERE type='Movie';

#-2 Total TV Shows

SELECT COUNT(*)
FROM netflix
WHERE type='TV Show';

#-3 Top 10 Countries

SELECT country,
COUNT(*) Total
FROM netflix
GROUP BY country
ORDER BY Total DESC;

#-4 Most Common Rating

SELECT rating,
COUNT(*)
FROM netflix
GROUP BY rating
ORDER BY COUNT(*) DESC;

#-5 Movies Added Every Year

SELECT YEAR(date_added),
COUNT(*)
FROM netflix
GROUP BY YEAR(date_added);

#-6 Top Directors
SELECT director,
COUNT(*)
FROM netflix
GROUP BY director
ORDER BY COUNT(*) DESC;

#-7 Longest Movie
SELECT director,
COUNT(*)
FROM netflix
GROUP BY director
ORDER BY COUNT(*) DESC;

#-8 Content by Genre

SELECT listed_in,
COUNT(*)
FROM netflix
GROUP BY listed_in;








