DROP DATABASE IF EXISTS hw_sem_2;
CREATE DATABASE hw_sem_2;
USE hw_sem_2;
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    id INT NOT NULL AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO sales (order_date, count_product)
VALUES 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT 
	id AS 'id Заказа',
	order_date AS 'Дата заказа',
	count_product AS 'Ко-во',
	CASE 
		WHEN count_product < 100 THEN 'Маленький заказ'
		WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
		WHEN count_product > 300 THEN 'Большой заказ'
		ELSE 'Не определено'
	END AS 'Тип заказа'	
FROM sales;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    id INT NOT NULL AUTO_INCREMENT,
    employee_id VARCHAR(5) NOT NULL UNIQUE DEFAULT 'e00',
	amount FLOAT(7,2) NOT NULL DEFAULT '0.00',
    order_status VARCHAR(15) NOT NULL DEFAULT 'OPEN',
    PRIMARY KEY (id)
    );
    
INSERT INTO orders (employee_id, amount, order_status)
VALUES 
('e03', 15.0, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

SELECT 
	employee_id AS 'Номер заказа',
	amount AS 'Сумма заказа',
    CASE order_status 
		WHEN 'OPEN' THEN 'Order is in open state'
		WHEN 'CLOSED' THEN 'Order is closed'
		WHEN 'CANCELLED' THEN 'Order is cancelled'
	END AS 'full_order_status'	
FROM orders;