--select ct count(last_name)
--from actor
--where last_name = 'Wahlberg' 

--select film_id, count(film_id) as filmed
--from inventory 
--group by film_id 
--order by filmed desc
--limit 1

--select count(last_name)
--from customer 
--where last_name like 'William'

--select staff_id, count(rental_id)
--from rental
--group by staff_id
--limit 1

--select count(distinct district)
--from address

--select film_id, count(actor_id) as actor
--from film_actor 
--group by film_id 
--order by actor desc
--limit 1

--select count(customer_id)
--from customer
--where store_id = 1 and last_name like '%es'

--select amount
--from payment
--where customer_id between 380 and 430
--group by amount
--having count (rental_id) > 250

--select count(distinct rating)
--from film

--select rating, count(rating)
--from film
--group by rating 
--order by count(rating) desc
--limit 1         