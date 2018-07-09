### Schema

DROP DATABASE IF EXISTS item_db;
CREATE DATABASE item_db;
USE item_db;

CREATE TABLE items
(
	id int NOT NULL AUTO_INCREMENT,
	item_name varchar(255) NOT NULL,
	price INT(11) NOT NULL,
	purchased BOOLEAN DEFAULT false,
	PRIMARY KEY (id)
);

CREATE TABLE user_accounts (
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  password VARCHAR(20) NOT NULL,
  street_address VARCHAR(45) NOT NULL,
  city VARCHAR(20) NOT NULL,
  state VARCHAR(2) NOT NULL,
  email VARCHAR(45) NOT NULL,
  PRIMARY KEY (user_id)
);



INSERT INTO items (item_name, price, purchased) VALUES ('Stroller', '20.00', false);
INSERT INTO items (item_name, price, purchased) VALUES ('Crib', '15.00', false);
INSERT INTO items (item_name, price, purchased) VALUES ('Tickle Me Elmo', '20.00', false);

INSERT INTO user_accounts (first_name, last_name, password, street_address, city, state, email)
VALUES ("Steve", "Smith", "password1", "1 Main Street", "Dover", "NH", "email@yahoo.com"),
("Mike", "Smith", "password2", "2 Main Street", "Dover", "NH", "email2@yahoo.com"),
("Dave", "Smith", "password3", "3 Main Street", "Dover", "NH", "email3@yahoo.com");