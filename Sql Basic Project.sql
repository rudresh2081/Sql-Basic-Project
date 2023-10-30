# 1.	Write a SQL query to count the number of characters except for the spaces for each actor. Return the first 10 actors' name lengths along with their names.

use mavenmovies
select *, length(first_name), length(last_name) from actor
limit 10

#2.List all Oscar awardees(Actors who received the Oscar award) with their full names and the length of their names.
select *,length(first_name), length(last_name) from actor_award
where awards= "oscar"

#3.	Find the actors who have acted in the film ‘Frost Head.’
select * from actor as a
inner join film_actor as fa
on a.actor_id= fa.actor_id
inner join film as f
on fa.film_id= f.film_id
where title="Frost Head"

#4.Pull all the films acted by the actor ‘Will Wilson.’
select first_name, last_name, title from actor as a
inner join film_actor as fa
on a.actor_id= fa.actor_id
inner join film as f
on fa.film_id= f.film_id
where first_name="will" and last_name="wilson"

#5.5.Pull all the films which were rented and return them in the month of May.
select rental_date, title from rental as r
inner join inventory as i
on r.inventory_id= i.inventory_id
inner join film as f
on i.film_id= f.film_id
where month(rental_date)="05"

#6.	Pull all the films with ‘Comedy’ category.
select title, name from film as f
inner join film_category fc
on f.film_id= fc.film_id
inner join category as c
on fc.category_id= c.category_id
where name= "Comedy"

