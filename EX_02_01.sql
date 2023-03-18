-- create a table
CREATE TABLE people (
  person_id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE phones (
  phone_id INT PRIMARY KEY,
  person_id INT,
  number VARCHAR(20),
  FOREIGN KEY (person_id) REFERENCES people(person_id)
);

CREATE TABLE addresses (
  address_id INT PRIMARY KEY,
  person_id INT,
  street VARCHAR(50),
  city VARCHAR(50),
  FOREIGN KEY (person_id) REFERENCES people(person_id)
);

-- insert some values
INSERT INTO people (person_id, name)
VALUES (1, 'John'), (2, 'Jane'), (3, 'Bob');

INSERT INTO phones (phone_id, person_id, number)
VALUES (1, 1, '123-456-7890'), (2, 2, '987-654-3210'), (3, 3, '555-555-5555'),(4,1,'895-8654-545');

INSERT INTO addresses (address_id, person_id, street, city)
VALUES (1, 1, '123 Lenina', 'Moscow'), (2, 2, '456 Pyshkina', 'Rostov'), (3, 3, '789 Turgenevskaya', 'Sankt Peterburg');

-- fetch some values
-- SELECT * FROM people WHERE 1 = 1;
SELECT * FROM people INNER JOIN phones ON people.person_id = phones.person_id;
