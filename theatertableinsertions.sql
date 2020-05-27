--Insert customer info into customer table
INSERT INTO customer(
	customer_id,
	first_name,
	email
)

VALUES(
	1,
	'Lauren',
	'lauren123@me.com'
);

INSERT INTO customer(
	customer_id,
	first_name,
	email
)

VALUES(
	2,
	'Marley',
	'marleys@thebomb.com'
);

SELECT*
FROM customer;

INSERT INTO movie(
	movie_id,
	title,
	rating,
	order_id
)

VALUES(
	1,
	'Cloudy With a Chance of Meatballs',
	'G',
	NULL
);

INSERT INTO tickets(
	order_id,
	order_date,
	amount,
	customer_id,
	movie_id
)

VALUES(
	1,
	'5/27/2020',
	'8.00',
	2,
	1
);

INSERT INTO products(
	item_id,
	amount,
	prod_name,
	order_id
)

VALUES(
	1,
	'6.00',
	'small popcorn',
	NULL
);

INSERT INTO products(
	item_id,
	amount,
	prod_name,
	order_id
)

VALUES(
	2,
	'5.50',
	'small drink',
	NULL
)

INSERT INTO concessions(
	order_id,
	order_date,
	amount,
	customer_id,
	item_id
)

VALUES(
	1,
	'5/27/2020',
	'5.50',
	2,
	1
)

SELECT*
FROM products
	