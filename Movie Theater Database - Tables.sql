create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(150)
);

create table movie_theater (
	theater_id SERIAL primary key,
	theater_name VARCHAR(100)
);

create table employee (
	employee_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table ticket (
	ticket_id SERIAL primary key,
	ticket_price numeric (5,2),
	movie_date DATE default CURRENT_DATE,
	seat_row VARCHAR (10),
	seat_number VARCHAR (10),
	foreign key (customer_id) references customer (customer_id),
	foreign key (employee_id) references employee (employee_id),
	foreign key (theater_id) references movie_theater (theater_id)
);

create table movie(
	movie_id SERIAL primary key,
	movie_title VARCHAR(150),
	rating VARCHAR (50)
	foreign key (customer_id) references customer (customer_id),
	foreign key (theater_id) references movie_theater (theater_id)
);

create table concessions (
	concession_id SERIAL primary key,
	popcorn_price NUMERIC(5,2),
	soda_price  NUMERIC(5,2),
	candy_price NUMERIC(5,2),
	nachos_price NUMERIC(5,2),
	hotdog_price NUMERIC(5,2),
	pretzel_price NUMERIC(5,2),
	concession_total NUMERIC(10,2),
	foreign key (ticket_id) references ticket (ticket_id)
);

