use sakila;
-- 1.Select all the actors with the first name ‘Scarlett’.
select * from actor where first_name = 'Scarlett';

-- 2.Select all the actors with the last name ‘Johansson’.
select * from actor where last_name = 'Johansson';

-- 3.How many films (movies) are available for rent?
select count(*) from sakila.rental;

-- 4 How many films have been rented?
select count(*) from sakila.film where rental = 'Yes';
-- or the other option is 
select count(distinct return_date)
from rental;
-- 5. What is the shortest and longest rental period?
select min(rental_duration) from film;
select max(rental_duration) from film;

-- 6.What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) from film as min_duration;
select max(length) from film as max_duration;

-- 7. what's the avarage movie duration?
select avg(length) from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select date_format(sec_to_time(115.2720 * 60), "%H,%I");

-- 9. How many movies longer than 3 hours?
select count(film_id) from sakila.film where length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select *, concat(upper(substring(first_name,1,1)), lower(substring(first_name, 2)), ' ', last_name, ' ', '-', ' ', lower(email)) as 'concat' from sakila.customer;

-- 11. What's the length of the longest film title?
select max(length) as longest_film from film;
