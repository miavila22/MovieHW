CREATE TABLE Customer (
  customer_id SERIAL,
  name VARCHAR(30),
  phone_number VARCHAR(30),
  email VARCHAR(50),
  PRIMARY KEY (customer_id)
);

CREATE TABLE movies (
  movies_id SERIAL,
  name_of_movie VARCHAR(30),
  description VARCHAR(200),
  duration TIME,
  genre VARCHAR(20),
  PRIMARY KEY (movies_id)
);

CREATE TABLE ticket (
  ticket_id SERIAL,
  customer_id INTEGER,
  movies_id INTEGER,
  pricing DECIMAL,
  quantity INTEGER,
  seating VARCHAR(10),
  PRIMARY KEY (ticket_id),
  	FOREIGN KEY (customer_id) 
		REFERENCES customer(customer_id),
  	FOREIGN KEY (movies_id) 
		REFERENCES movies(movies_id)
);

CREATE TABLE Billing (
  billing_id SERIAL,
  payment_type VARCHAR(30),
  customer_id INTEGER,
  PRIMARY KEY (billing_id),
  	FOREIGN KEY (customer_id) 
		REFERENCES customer(customer_id)
);

CREATE TABLE concesssion (
  concession_id SERIAL,
  price DECIMAL,
  goodies_name VARCHAR(20),
  customer_id INTEGER,
  payment_type INTEGER,
  PRIMARY KEY (concession_id),
  	FOREIGN KEY (customer_id) 
		REFERENCES customer(customer_id),
  	FOREIGN KEY (payment_type) 
		REFERENCES Billing(payment_type)
);