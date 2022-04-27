create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

create table movie(
	movie_id SERIAL primary key,
	movie_name VARCHAR(50)
);

create table ticket(
	ticket_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key(customer_id) REFERENCES customer(customer_id),
	movie_id INTEGER not null,
	foreign key(movie_id) REFERENCES movie(movie_id),
	ticket_price numeric(4,2)
);

insert into customer(
	first_name,
	last_name
)values(
	'Kelvin',
	'Azcuy'
),(
	'Oliver',	'Azcuy'
);

insert into movie(
	movie_name
) values (
	'Billy Bob the Movie'
)

insert into ticket(
	customer_id,
	movie_id,
	ticket_price
) values (
 	1,
	1,
	8.25
),(
	2,
	1,
	8.25
);

select *
from customer;

select *
from ticket;

select *
from movie;
