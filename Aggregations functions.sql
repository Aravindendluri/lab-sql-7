select MAX(ac.first_name),ac.last_name #we can are filtering the last names column with disctinct values 
from actor as ac
GROUP BY ac.last_name
HAVING COUNT(DISTINCT ac.last_name) = 1;

select ac.last_name,count(*)#we are filtering the values in the last name column which are repeated more than once
from actor as ac
GROUP BY ac.last_name
HAVING COUNT(*) > 1;
#Using the rental table, find out how many rentals were processed by each employee
select STAFF_ID,count(RENTAL_ID)
from RENTAL
GROUP BY STAFF_ID;
#Using the film table, find out how many films were released each year.
select RELEASE_YEAR,count(FILM_ID)
from film
GROUP BY RELEASE_YEAR;

 # Using the film table, find out for each rating how many films were there.

SELECT rating, COUNT(film_id) as films_per_rating
FROM film
GROUP BY rating;

# What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT rating, round(AVG(length),2) as average_length
FROM film
GROUP BY rating;
#-- 7. Which kind of movies (rating) have a mean duration of more than two hours?
SELECT rating, round(AVG(length),1) as average_length
FROM film
GROUP BY rating
HAVING average_length>120;





