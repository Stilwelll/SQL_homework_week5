-- Need to research how to implement more entity relationships 4/25

create table salesperson(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	salary NUMERIC(8,2)
);

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50) unique,
	bought_car_from_us BOOL default false,
	car_id INTEGER
--	foreign key(car_id) REFERENCES cars(car_id)
);

create table mechanic(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

create table cars(
	car_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key(customer_id) REFERENCES customer(customer_id),
	car_make VARCHAR(50),
	car_model VARCHAR(50),
	car_year INTEGER not null,
	car_bought_from_us BOOL default false
);

create table invoice(
	invoice_id SERIAL primary key,
	salesperson_id INTEGER not null,
	foreign key(salesperson_id) REFERENCES salesperson(salesperson_id),
	customer_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	invoice_amount NUMERIC(8,2)
);

create table service_ticket(
	service_ticket_id SERIAL primary key,
	customer_id INTEGER not null,
	foreign key(customer_id) REFERENCES customer(customer_id),
	car_id INTEGER not null,
	foreign key(car_id) REFERENCES cars(car_id)
);

create table service_record(
	service_id SERIAL primary key,
	service_ticket_id INTEGER not null,
	foreign key(service_ticket_id) references service_ticket(service_ticket_id),
	mechanic_id INTEGER not null,
	foreign key(mechanic_id) references mechanic(mechanic_id),
	date_done timestamp default current_timestamp,
	needed_new_parts BOOL default FALSE
);

alter table customer 
drop column car_id;

alter table customer 
add car_id integer;

insert into salesperson(
	first_name,
	last_name,
	salary
) values (
	'Billy',
	'Bob',
	60000
),(
	'John',
	'Doe',
	55000
),(
	'Jane',
	'Smith',
	46000
);

insert into customer(
	first_name,
	last_name,
	email,
	bought_car_from_us
) values (
	'Jackson',
	'Duke',
	'blank1@test.com',
	true
),(
	'Daniel',
	'Figuriedo',
	'blank21@test.com',
	true
),(
	'Khara',
	'Manchin',
	'blank123@test.com',
	false
);

insert into mechanic(
	first_name,
	last_name 
) values (
	'John',
	'Smith'
),(
	'Tyler',
	'Brown'
),(
	'Jackson',
	'Pope'
);

insert into cars(
	customer_id,
	car_make,
	car_model,
	car_year,
	car_bought_from_us 
) values (
	5,
	'Toyota',
	'Highlander',
	2012,
	TRUE
),(
	6,
	'Toyota',
	'Corolla',
	2015,
	TRUE
),(
	7,
	'Chevy',
	'Silverado',
	2019,
	FALSE
);

insert into invoice(
	salesperson_id,
	customer_id,
	invoice_amount
) values (
	1,
	5,
	550.02
),(
	3,
	7,
	60.05
);

insert into service_ticket(
	customer_id,
	car_id
) values (
	5,
	10
),(
	7,
	12
);

insert into service_record(
	service_ticket_id,
	mechanic_id,
	needed_new_parts
) values (
	3,
	1,
	TRUE
),(
	4,
	2,
	FALSE
);

update customer 
set car_id = 10
where customer_id = 5;

update customer 
set car_id = 11
where customer_id = 6;

update customer 
set car_id = 12
where customer_id = 7;
