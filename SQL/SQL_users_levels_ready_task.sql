Задание SQL новое

Создание таблиц, внесение данных в таблицы:

CREATE TABLE users
(
    Id SERIAL PRIMARY KEY,
    user_name VARCHAR(30),
    level_id INTEGER,
    skill INTEGER
);

INSERT INTO users (user_name, level_id, skill) 
VALUES ('Anton', 1, 900000), ('Denis', 3, 4000), ('Petr', 2, 50000), ('Andrey', 4, 20), ('Olga', 1, 600000), ('Anna', 1, 1600000);


CREATE TABLE levels
(
    Id SERIAL PRIMARY KEY,
    level_name VARCHAR(30),
 );

INSERT INTO levels (level_name) 
VALUES ('admin'), ('power_user'), ('user'), ('guest');

Задания:


1. Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а:

SELECT * FROM users WHERE level_id = 1 and skill > 799000 AND user_name LIKE '%a%';

2. Удалить всех пользователей, у которых skill меньше 100000:

DELETE FROM users
WHERE skill < 100000;

3. Вывести все данные из таблицы user в порядке убывания по полю skill:

SELECT * FROM users ORDER BY skill DESC;

4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10:

INSERT INTO users (user_name, level_id, skill) 
VALUES ('Oleg', 4, 10);

5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000:

UPDATE users
SET skill = 2000000 WHERE level_id < 2;

6. Выбрать user_name всех пользователей уровня admin используя подзапрос:

SELECT user_name
FROM users
WHERE level_id IN (seLECT id FROM levels WHERE level_name = 'admin');

7. Выбрать user_name всех пользователей уровня admin используя join:

SELECT user_name FROM users JOIN levels
ON users.level_id = levels.Id WHERE levels.level_name = 'admin';



