CREATE DATABASE Market

USE Market

CREATE TABLE Products
(
	Id int Primary Key Identity,
	Name nvarchar(50),
	Price money
)

ALTER TABLE Products
ADD Brand nvarchar(50)

INSERT INTO Products(Name, Brand, Price)
VALUES('Xiaomi 11T', 'Xiaomi', 1299.99),
('Samsung Galaxy A22', 'Samsung', 529.99),
('Xiaomi Poco X3 GT', 'Xiaomi', 849.99),
('Xiaomi Poco M4 Pro', 'Xiaomi', 649.99),
('Huawei Y6P', 'Huawei', 309.99),
('Samsung Galaxy A03 Core', 'Samsung', 239.99),
('Huawei Y5P', 'Huawei', 219.99),
('Samsung Galaxy M52 D S', 'Samsung', 929.99),
('Xiaomi Mi 11 Lite 5G NE', 'Xiaomi', 899.99),
('Samsung Galaxy A30', 'Samsung', 549.99)

--SELECT AVG(Price) 'Average Price' FROM Products
SELECT * FROM Products WHERE Price < (SELECT AVG(Price) FROM Products)

-- 10 qiymeti telefon qiymetleri ile muqayisede cox kicik olduguna gore basqa bir deyer verib command-in islediyine emin ola bilerik
--SELECT * FROM Products WHERE Price > 800
SELECT * FROM Products WHERE Price > 10

SELECT Id, CONCAT(Name,' / ',Brand) 'Product Info', Price FROM Products WHERE LEN(Brand) > 5