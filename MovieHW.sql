INSERT INTO customer (
	name,
	phone_number,
	email
) VALUES (
	'Miguel Avila',
	'281-330-8004',
	'flcl@gmail.com'
);

SELECT * 
FROM customer;

INSERT INTO movies (
	name_of_movie,
	description,
	duration,
	genre
) VALUES (
	'The Exorcist',
	'Little girl gets possessed for playing with an OUIJA board',
	'1:30',
	'Horror'
);
SELECT *
FROM movies;

INSERT INTO ticket (
	customer_id,
	movies_id,
	pricing,
	quantity,
	seating

) VALUES (
	2,
	3,
	5.89,
	5,
	'F4'
);

SELECT *
FROM ticket;

INSERT INTO Billing (
	payment_type,
	customer_id
) VALUES (
	'Debit',
	2
);

SELECT *
FROM Billing;

INSERT INTO concessions (
	price,
	goodies_name,
	customer_id,
	payment_type
) VALUES (
	8.00,
	'Swedish Fish'
	2,
	'Debit'
);

SELECT *
FROM concessions;

