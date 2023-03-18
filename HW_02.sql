-- create a table
CREATE TABLE people (
  person_id INTEGER PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  birthdate VARCHAR (20) NOT NULL,
  statuss CHAR(20) NOT NULL
);

CREATE TABLE phones (
  person_id INTEGER(10) NOT NULL,
  phone INTEGER(10) NOT NULL,
  commentt CHAR(100) NOT NULL
);

CREATE TABLE addresses (
  person_id INTEGER(10) NOT NULL,
  address VARCHAR(50) NOT NULL,
  commentt CHAR(100) NOT NULL
);

-- insert some values
INSERT INTO people VALUES (1, 'Иванов И. И.', '02/12/1990', 'женат');
INSERT INTO people VALUES (2, 'Иванов И. И.', '09/18/2001', 'холост');
INSERT INTO people VALUES (3, 'Петров П. П.', '04/23/1983', 'женат');
INSERT INTO people VALUES (4, 'Васильев В. В.', '05/21/1998', 'холост');
INSERT INTO people VALUES (25, 'Кузьмин К.К.', '05/21/2020', 'холост');

INSERT INTO phones VALUES (1, 123, 'личный');
INSERT INTO phones VALUES (1, 124, 'рабочий');
INSERT INTO phones VALUES (1, 125, 'для поездок');
INSERT INTO phones VALUES (1, 126, 'интернет');
INSERT INTO phones VALUES (1, 127, 'старый');
INSERT INTO phones VALUES (2, 527, 'личный');
INSERT INTO phones VALUES (3, 234, 'личный');
INSERT INTO phones VALUES (3, 235, 'рабочий');
INSERT INTO phones VALUES (4, 456, 'личный');
INSERT INTO phones VALUES (11, 999, 'личный');
INSERT INTO phones VALUES (12, 997, 'рабочий');
INSERT INTO phones VALUES (13, 995, 'личный');
INSERT INTO phones VALUES (14, 993, 'для поездок');
INSERT INTO phones VALUES (15, 991, 'для поездок');

INSERT INTO addresses VALUES (1, 'Можга', 'Место рождения');
INSERT INTO addresses VALUES (1, 'Казань', 'По прописке');
INSERT INTO addresses VALUES (1, 'Москва', 'Рабочий');
INSERT INTO addresses VALUES (2, 'Санкт-Петербург', 'По прописке');
INSERT INTO addresses VALUES (3, 'Москва', 'По прописке');
INSERT INTO addresses VALUES (4, 'Белгород', 'По прописке');
INSERT INTO addresses VALUES (5, 'Уфа', 'По прописке');
INSERT INTO addresses VALUES (6, 'Сочи', 'По прописке');
INSERT INTO addresses VALUES (7, 'Киров', 'Рабочий');
INSERT INTO addresses VALUES (8, 'Владивосток', 'Место рождения');
INSERT INTO addresses VALUES (9, 'Рязань', 'Рабочий');
INSERT INTO addresses VALUES (10, 'Хабаровск', 'Место рождения');

-- fetch some values
-- SELECT * FROM people WHERE 1 = 1;
-- SELECT * FROM phones WHERE 1 = 1;
-- SELECT * FROM addresses WHERE 1 = 1;

-- 1. INNER JOIN Люди, Адреса ON id = Чей адрес
-- SELECT * FROM people INNER JOIN addresses ON people.person_id = addresses.person_id

-- 2. LEFT JOIN Люди, Адреса ON id = Чей адрес
-- SELECT * FROM people LEFT JOIN addresses ON people.person_id = addresses.person_id

-- 3. RIGHT JOIN Люди, Адреса ON id = Чей адрес
-- SELECT * FROM people RIGHT JOIN addresses ON people.person_id = addresses.person_id

-- 4. FULL JOIN Люди, Адреса ON id = Чей адрес
-- (SELECT * FROM people LEFT JOIN addresses ON people.person_id = addresses.person_id)
-- UNION
-- (SELECT * FROM people RIGHT JOIN addresses ON people.person_id = addresses.person_id);
(SELECT * FROM people LEFT JOIN phones ON people.person_id = phones.person_id
LEFT JOIN addresses ON people.person_id = addresses.person_id)
UNION
(SELECT * FROM people RIGHT JOIN phones ON people.person_id = phones.person_id
RIGHT JOIN addresses ON people.person_id = addresses.person_id);

-- 5. SELECT ФИО, Адрес, Комментарий FROM Люди RIGHT JOIN Адреса ON id = Чей Адрес
-- SELECT name, address, commentt FROM people RIGHT JOIN addresses ON people.person_id = addresses.person_id;