-- создаём базу данных
DROP DATABASE IF EXISTS HW_sem_1;
CREATE DATABASE HW_sem_1;
USE HW_sem_1;

-- 1. Создайте таблицу с мобильными телефонами (mobile_phones), используя графический интерфейс (не использовал).
CREATE TABLE mobile_phones(
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	product_name VARCHAR(45) NOT NULL, 
	manufacturer VARCHAR(45) NOT NULL,    
	product_count INT(45) NOT NULL,
    price INT(45) NOT NULL
);

-- Заполните БД данными.
INSERT INTO mobile_phones (id, product_name, manufacturer, product_count, price)
VALUES 
(1, 'iPhone X', 'Apple', 3, 76000),
(2, 'iPhone 8', 'Apple', 2, 51000),
(3, 'Galaxy S9', 'Samsung', 2, 56000),
(4, 'Galaxy S8', 'Samsung', 1, 41000),
(5, 'P20 Pro ', 'Huawei', 5, 36000);

-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT product_name, manufacturer, price FROM mobile_phones WHERE product_count > 2;

-- 3. Выведите весь ассортимент товаров марки “Samsung”
SELECT id, product_name, manufacturer, product_count, price FROM mobile_phones WHERE manufacturer = 'Samsung';

-- 4. (по желанию)* С помощью регулярных выражений найти:
-- 4.1. Товары, в которых есть упоминание "Iphone"
SELECT id, product_name, manufacturer, product_count, price FROM mobile_phones WHERE product_name REGEXP 'Iphone' || manufacturer REGEXP 'Iphone';

-- 4.2. Товары, в которых есть упоминание "Samsung"
SELECT id, product_name, manufacturer, product_count, price FROM mobile_phones WHERE product_name REGEXP 'Samsung' || manufacturer REGEXP 'Samsung';

-- 4.3. Товары, в которых есть ЦИФРЫ
SELECT id, product_name, manufacturer, product_count, price FROM mobile_phones WHERE product_name REGEXP '[[:digit:]]' = 1 || manufacturer REGEXP '[[:digit:]]' = 1;

-- 4.4. Товары, в которых есть ЦИФРА "8"
SELECT id, product_name, manufacturer, product_count, price FROM mobile_phones WHERE product_name REGEXP '[[8]]' = 1 || manufacturer REGEXP '[[8]]' = 1;



