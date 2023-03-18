-- create a table
CREATE TABLE people (
  person_id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE phones (
  phone_id INT PRIMARY KEY,
  person_id INT,
  number VARCHAR(20),
  customer_comment VARCHAR(128),
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
VALUES (1, 'John'), (2, 'Jane'), (3, 'Bob'), (4, 'Sara');

INSERT INTO phones (phone_id, person_id, number, customer_comment)
VALUES (1, 1, '123-456-7890', 'home'), (2, 2, '987-654-3210', 'home'), (3, 3, '555-555-5555', 'home'),(4,1,'895-8654-545', 'work');

INSERT INTO addresses (address_id, person_id, street, city)
VALUES (1, 1, '123 Lenina', 'Moscow'), (2, 2, '456 Pyshkina', 'Rostov'), (3, 3, '789 Turgenevskaya', 'Sankt Peterburg');

-- fetch some values
-- SELECT * FROM people WHERE 1 = 1;
-- SELECT * FROM people INNER JOIN phones ON people.person_id = phones.person_id;
-- SELECT * FROM people LEFT JOIN phones ON people.person_id = phones.person_id;
-- SELECT * FROM phones RIGHT JOIN people ON phones.person_id = people.person_id;
-- SELECT ФИО, Тел, Коммент FROM Люди LEFT JOIN Телефоны ON id = Чей телефон
SELECT people.name as 'ФИО', phones.number as 'Тел', phones.customer_comment as 'Коммент' FROM people LEFT JOIN phones ON people.person_id = phones.person_id;