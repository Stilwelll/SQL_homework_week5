--select customer.first_name, customer.last_name, address.district 
--from customer 
--full join address 
--on customer.address_id = address.address_id 
--where district = 'Texas'

--select customer.first_name, customer.last_name, payment.amount 
--from customer
--full join payment 
--on customer.address_id = address_id 
--where amount > 6.99;

--select first_name, last_name 
--from customer
--where customer_id in(
--	select customer_id 
--	from payment 
--	where amount > 175
--)

--select customer.first_name, customer.last_name, country
--from customer
--full join address
--on customer.address_id = address.address_id
--full join city
--on address.city_id = city.city_id
--full join country
--on city.country_id = country.country_id
--where country = 'Argentina';

--select max(my_count) as total
--from (select category_id, count(category_id) my_count
--		from film_category
--		group by category_id) as wow
		
--select film_id, count(film_id)
--from film_actor
--group by film_id 
--having count(film_id) = (
--	select max(my_count) as total
--		from (select film_id, count(film_id) my_count
--		from film_actor 
--		group by film_id) as wow
--)	

--select actor_id, count(actor_id)
--from film_actor
--group by actor_id 
--having count(actor_id) = (
--	select min(my_count) as total
--		from (select actor_id, count(actor_id) my_count
--		from film_actor 
--		group by actor_id) as wow
--)

--select country_id, count(*) as nun_cities
--from city 
--group by country_id 
--order by nun_cities desc
--limit 1;

--select actor_id, count(actor_id) 
--from film_actor 
--group by actor_id 
--having count(actor_id) between 23 and 25
--order by actor_id desc