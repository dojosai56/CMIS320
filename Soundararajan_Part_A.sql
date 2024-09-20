/* Drop Tables */

DROP TABLE dvd CASCADE CONSTRAINTS;
DROP TABLE video CASCADE CONSTRAINTS;
DROP TABLE movies CASCADE CONSTRAINTS;
DROP TABLE actors_actresses CASCADE CONSTRAINTS;
DROP TABLE actors_movies CASCADE CONSTRAINTS;
DROP TABLE academy_awards CASCADE CONSTRAINTS;
DROP TABLE distributors CASCADE CONSTRAINTS;
DROP TABLE charges CASCADE CONSTRAINTS;
DROP TABLE transaction_fees CASCADE CONSTRAINTS;
DROP TABLE customers CASCADE CONSTRAINTS;
DROP TABLE electronic_catalog CASCADE CONSTRAINTS;
DROP TABLE rental CASCADE CONSTRAINTS;
DROP TABLE shop CASCADE CONSTRAINTS;

/* Create Tables */

CREATE TABLE dvd
(
	id number(5,0) NOT NULL,
	movie_id number(5,0) NOT NULL,
	copy_amount(15,0) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO dvd (id, movie_id, copy_amount)
             VALUES ('16172', '11111', '67');





CREATE TABLE video
(
	id number(5,0) NOT NULL,
	movie_id number(5,0) NOT NULL,
	copy_amount(15,0) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO video (id, movie_id, copy_amount)
             VALUES ('00000', '11111', '0');

CREATE TABLE movies
(
	id number(5,0) NOT NULL,
	distributer_id number(3,0) NOT NULL,
	movie_name varchar(255) NOT NULL,
	movie_genre varchar(255) NOT NULL,
	-- thriller
	-- drama
	-- comedy
	-- romance
	-- musical
	-- documentary
	-- other
	time_length number(5,0)) NOT NULL,
	rating varchar(25),
	year_released number(5,0) NOT NULL,
	is_dvdformat boolean(1) NOT NULL,
	is_vcrformat boolean(1) NOT NULL,
	PRIMARY KEY (id)
	
);

INSERT INTO movie (id, title, distributor_id, movie_name, movie_genre,
                     movie_genre, time_length, rating, year_released,
                     is_dvdformat, is_vcrformat)
             VALUES ('11111', 'Disney Channel', 'Geek Charming', 'romance', '94',
                     'Not Rated', '2011', 'true', 'false');

CREAT TABLE actors_actresses
(
	id number(5,0) NOT NULL,
	name varchar2(30) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO actors_actresses (id, name)
             VALUES ('11990', 'Sarah Hyland');
			 
INSERT INTO actors_actresses (id, name)
             VALUES ('41990', 'Matt Prokop');

CREATE TABLE actors_movies
(
	id number(7,0) NOT NULL,
	actor_id number(5,0) NOT NULL,
	movie_id number(5,0) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO actors_actresses (id, name)
             VALUES ('6834201', '41990', '11111');

INSERT INTO actors_actresses (id, name)
             VALUES ('5703426', '41990', '11111');

CREATE TABLE academy_awards
(
	id number(10,0) NOT NULL,
	academy_award_id number(5,0) NOT NULL,
	movie_id number(5,0) NOT NULL,
	year_won number(4,0) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO academy_awards (id, academy_award_id, movie_id, year_won)
             VALUES ('111120110', '01122', '11111', '2011');

CREATE TABLE distributors
(
	id number(3,0) NOT NULL,
	distributor_name varchar(255) NOT NULL,
	road_address varchar(255) NOT NULL,
	city varchar(30) NOT NULL,
	state varchar(3) NOT NULL,
	zip_code number(5,0) NOT NULL,
	phone_number varchar(16) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO distributors (id, distributor_name, road_address, city, state, zip_code, phone_number)
             VALUES ('056', 'Disney Channel', '500 South Buena Vista Street FGW #3052', 'Burbank' 'CA' '91521', '1-818-460-7477');

CREATE TABLE charges
(
	id number(3,0) NOT NULL,
	-- late_charge
	-- damage_charge
	-- rewind_fail_charge
	-- tax_rate
	PRIMARY KEY (id)
);

INSERT INTO charges (id)
             VALUES ('543');

CREATE TABLE transaction_fees
(
	dvd_id number(5,0) NOT NULL,
	-- dvd_charge
	video_id number(5,0) NOT NULL,
	-- video_charge
	charges_id number(3,0) NOT NULL,
);

INSERT INTO transaction_fees (dvd_id, video_id, charges_id)
             VALUES ('16172', '0000', '543');

CREATE TABLE customers
(
	id number(5,0) NOT NULL,
	name varchar(30) NOT NULL,
	road_address varchar(30) NOT NULL,
	city varchar(30) NOT NULL,
	state varchar(3) NOT NULL,
	zip_code number(5,0) NOT NULL,
	phone_number varchar(16) NOT NULL,
	birthday date NOT NULL,
	PRIMARY KEY (id)
);


INSERT INTO customers (id, name, road_address, city, state, zip_code, phone_number, birthday)
             VALUES ('92499', 'Nicole Delgado', '501 Hungerford Dr.', 'Rockville,', 'MD', '20850', '1-702-601-7888', '09/24/1999');
			 
UPDATE customers
   SET phone_number='301-911-9111'
WHERE client_id='92499';


INSERT INTO customers (id, name, road_address, city, state, zip_code, phone_number, birthday)
             VALUES ('71995', 'Sahleen Deol', '57324 Blur St.', 'Germantown,', 'MD', '20876', '1-240-356-7480', '07/17/1995');
	
	
INSERT INTO customers (id, name, road_address, city, state, zip_code, phone_number, birthday)
             VALUES ('51995', 'Precila Dessai', '15476 Monacomy Blvd', 'Loudoun,', 'VA', '03263', '1-240-750-4621', '05/17/1995');
	
SELECT name FROM customers;	


DELETE FROM Customers WHERE CustomerName='Nicole Delgado';

CREATE TABLE electronic_catalog
(
	id number(5,0) NOT NULL,
	calatog_number number(5,0) NOT NULL,
	distributer_id(3,0) NOT NULL,
	movie_id(5,0) NOT NULL,
	shop_id(3,0) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO electronic_catalog (id, electronic_catalog, distributer_id, movie_id, shop_id)
             VALUES ('95735', '99110', '056', '11111,', '');

CREATE TABLE rental
(
	dvd_id number(3,0) NOT NULL,
	video_id number(3,0) NOT NULL,
	charges_id number(3,0) NOT NULL,
	rental_date date,
	return_date date
);

INSERT INTO rental (dvd_id, video_id, charges_id, movie_id, shop_id)
             VALUES ('16172', '00000', '543', '11111,', '');

CREATE TABLE shop
(
	id number(3,0) NOT NULL,
	shop_name varchar(255) NOT NULL,
	shop_address varchar(255) NOT NULL,
	shop_city varchar(255) NOT NULL,
	shop_state varchar(3) NOT NULL,
	shop_zip number(5,0) NOT NULL,
	shop_phone varchar(16) NOT NULL,
	customer_id number(5,0) NOT NULL,
	distributor_id number(3, 0) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO rental (id, shop_name, shop_address, shop_city, shop_state, shop_zip, shop_phone, customer_id, distributor_id)
             VALUES ('054', 'Mom & Pop Video Store', '741 Sigma St.', 'Newark,', 'NJ', '07101', '1-426-856-4397', '92499', '056');

/* Create Foreign Keys */

ALTER TABLE actors_movies
	ADD FOREIGN KEY (actor_id)
	REFERENCES actors (id)
;


ALTER TABLE rentals
	ADD FOREIGN KEY (dvd_id)
	REFERENCES dvd (id)
;

ALTER TABLE rental
	ADD FOREIGN KEY (video_id)
	REFERENCES video (id)
;

ALTER TABLE rental
	ADD FOREIGN KEY (charges_id)
	REFERENCES charges (id)
;

ALTER TABLE movies
	ADD FOREIGN KEY (distributor_id)
	REFERENCES distributors (id)
;



ALTER TABLE actors_movies
	ADD FOREIGN KEY (movie_id)
	REFERENCES movies (id)
;


ALTER TABLE academy_awards_movies
	ADD FOREIGN KEY (movie_id)
	REFERENCES movies (id)
;


ALTER TABLE electronic_catalog
	ADD FOREIGN KEY (distributor_id)
	REFERENCES distributors (id)
;

ALTER TABLE electronic_catalog
	ADD FOREIGN KEY (movie_id)
	REFERENCES movies (id)
;

ALTER TABLE electronic_catalog
	ADD FOREIGN KEY (shop_id)
	REFERENCES shop (id)
;

ALTER TABLE transaction_fees
	ADD FOREIGN KEY (dvd_id)
	REFERENCES dvd (id)
;

ALTER TABLE transaction_fees
	ADD FOREIGN KEY (video_id)
	REFERENCES video (id)
;

ALTER TABLE transaction_fees
	ADD FOREIGN KEY (charges_id)
	REFERENCES charges (id)
;