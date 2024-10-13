/*
Описание задания.
 1 уровень сложности: Домашка для повтора команд создания таблицы, изменения, добавления данных.



    Создайте таблицу goods (id, title, quantity)

    Добавьте несколько строк

    Добавьте поле price (integer) со значением по умолчанию 0

    Проверьте содержимое таблицы

    Измените тип на numeric(8, 2)

    Измените тип обратно на integer

    Переименуйте поле на item_price

    Удалите это поле


2 уровень сложности: 
*/
CREATE DATABASE Homework_6;
USE Homework_6;
-- Создайте таблицу goods (id, title, quantity)
CREATE TABLE goods (
id INTEGER(10) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
title VARCHAR(32), 
quantity INTEGER);
SELECT
*
FROM goods;
--  Добавьте несколько строк
INSERT INTO goods(id,title,quantity) VALUES(1,'diod',50),
(2,'triack',80),
(3,'Zener',40),
(4,'LED',4650);
-- Добавьте поле price (integer) со значением по умолчанию 0
ALTER TABLE goods
ADD price INTEGER;
UPDATE goods
SET price = 0;
-- Измените тип на numeric(8, 2)
ALTER TABLE goods
MODIFY COLUMN price  numeric(8, 2);
-- Измените тип обратно на integer
ALTER TABLE goods
MODIFY COLUMN price  INTEGER;
-- Переименуйте поле на item_price
ALTER TABLE goods
RENAME COLUMN price TO item_price;
-- Удалите это поле
ALTER TABLE goods
DROP COLUMN item_price;
