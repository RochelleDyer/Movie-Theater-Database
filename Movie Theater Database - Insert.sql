insert into customer (
	customer_id,
	first_name,
	last_name,
	email
) values (
	1,
	'John',
	'Doe',
	'johndoe@gmail.com'
);

insert into movie_theater (
	theater_id,
	theater_name
) values (
	1,
	'Megaplex'
);

insert into employee (
	employee_id,
	first_name,
	last_name
) values (
	1,
	'Melissa',
	'Frasier'
);

insert into ticket (
	ticket_id,
	ticket_price,
	seat_row,
	seat_number	
) values (
	1,
	15.99,
	'A',
	1
);

insert into movie (
	movie_id,
	movie_title,
	rating
) values (
	1,
	'Forrest Gump',
	'PG-13'
);

insert into concessions (
	concession_id,
	popcorn_price,
	soda_price,
	candy_price,
	hotdog_price,
	pretzel_price,
	concession_total
) values (
	1,
	2.00,
	1.00,
	2.50,
	1.00,
	1.00,
	7.50	
);