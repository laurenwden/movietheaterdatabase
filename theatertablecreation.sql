--Create customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	email VARCHAR(150)
);


--Create movie table
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(300),
	rating VARCHAR(10),
	order_id INTEGER NOT NULL
);

--Create tickets table
CREATE TABLE tickets(
	order_id SERIAL PRIMARY KEY,
	order_date DATE,
	amount NUMERIC(8,2),
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

--Create concessions table
CREATE TABLE concessions(
	order_id SERIAL PRIMARY KEY,
	order_date DATE,
	amount NUMERIC(8,2),
	customer_id INTEGER NOT NULL,
	item_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
	
--Create products table
CREATE TABLE products(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	prod_name VARCHAR(150),
	order_id INTEGER NOT NULL,
	FOREIGN KEY(order_id) REFERENCES concessions(order_id)
);

--Alter statement to add foreign key order_id to movie table
ALTER TABLE movie
ADD FOREIGN KEY(order_id) REFERENCES tickets(order_id);

--Alter statement to add foreign key item_id to concessions table
ALTER TABLE concessions
ADD FOREIGN KEY(item_id) REFERENCES products(item_id);


--ALter Statement for movie
ALTER TABLE movie
ALTER COLUMN order_id
DROP NOT NULL;


--ALter Statement for product 
ALTER TABLE products
ALTER COLUMN order_id
DROP NOT NULL;