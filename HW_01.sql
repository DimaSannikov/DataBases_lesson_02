-- create a table
CREATE TABLE FullList (
  FIO VARCHAR(255) NOT NULL,
  DateBirth CHAR(120) NOT NULL,
  StateS VARCHAR(128),
  PhNum INTEGER(20),
  PhType VARCHAR(128),
  City VARCHAR(128),
  Groupps VARCHAR(128)
);

-- insert some values
INSERT INTO FullList VALUES ('Иванов И. И.', '02/12/1990', 'женат', 126, 'интернет', 'Можга', 'Работа');
INSERT INTO FullList VALUES ('Иванов И. И.', '02/12/1990', 'женат', 127, 'старый', 'Можга', 'Работа');
INSERT INTO FullList VALUES ('Иванов И. И.', '09/18/2001', 'холост', 527, 'личный', 'Санкт-Петербург', 'Школа');
INSERT INTO FullList VALUES ('Петров П. П.', '04/23/1983', 'женат', 234, 'личный', 'Москва', 'Родня');
INSERT INTO FullList VALUES ('Петров П. П.', '04/23/1983', 'женат', 235, 'рабочий', 'Москва', 'Родня');
INSERT INTO FullList VALUES ('Васильев В. В.', '05/21/1998', 'холост', 456, 'личный', 'Белгород', 'Друзья');
INSERT INTO FullList VALUES ('Сидоров С.С.', '07/13/2007', 'холост', 643, 'личный', 'Киров', 'Родня');
INSERT INTO FullList VALUES ('Сидоров С.С.', '07/13/2007', 'холост', 654, 'старый', 'Киров', 'Родня');
INSERT INTO FullList VALUES ('Александров А.А.', '03/05/1987', 'женат', 412, 'рабочий', 'Уфа', 'Друзья');
INSERT INTO FullList VALUES ('Борисов Б.Б.', '08/16/1989', 'холост', 723, 'рабочий', 'Москва', 'Работа');
INSERT INTO FullList VALUES ('Михайлов М.М.', '01/08/1997', 'женат', 876, 'личный', 'Сочи', 'Университет');
INSERT INTO FullList VALUES ('Михайлов М.М.', '01/08/1997', 'женат', 875, 'рабочий', 'Сочи', 'Университет');
INSERT INTO FullList VALUES ('Кириллов К.К.', '12/03/1996', 'холост', 933, 'личный', 'Киров', 'Работа');

-- fetch some values
-- SELECT * FROM FullList WHERE 1 = 1;
-- 1.SELECT ФИО, Д/р, Адрес FROM Общий список
-- SELECT FIO, DateBirth, City FROM FullList;
-- 2.SELECT ФИО, Статус FROM Общий список WHERE Адрес = «Можга»
-- SELECT FIO, StateS FROM FullList WHERE City = 'Можга';
-- 3.SELECT ФИО FROM Общий список WHERE Адрес = «Москва» AND Группа = «Работа»
-- SELECT FIO FROM FullList WHERE City = 'Москва' AND Groupps = 'Работа';
-- 4.SELECT Д/р FROM Общий список WHERE Адрес = «Москва» OR Группа = «Работа»
SELECT DateBirth FROM FullList WHERE City = 'Москва' OR Groupps = 'Работа';