CREATE DATABASE Sale
GO

USE Sale

CREATE TABLE Users(
ID int IDENTITY PRIMARY KEY,
FirstName nvarchar(50),
LastName nvarchar(50),
Email nvarchar(50) UNIQUE,
[Password] nvarchar(30),
IsActive bit
)

INSERT INTO Users VALUES
('Sanan','Ibragimov','sananai@gmail.com','ASDasdasdasd_213',1),
('Taleh','Aliyev','tako@gmail.com','Prodsyta12',1),
('Ruslan','Valizade','rusko@gmail.com','beatssidiiuf',0),
('Mahir','Madatli','mako@code.edu.az','Makomano666',1),
('Tural','Ibragimov','turalsp@code.edu.az','tarttaiue510',1),
('Rauf','Pashayev','rafoac@code.edu.az','Rusiudoofh_3456',0),
('Ahmed','Badalov','ahmed1@gmail.com','Rastorai_666',1)

CREATE TABLE UserDetails(
ID int IDENTITY PRIMARY KEY,
UserID int NOT NULL UNIQUE FOREIGN KEY REFERENCES Users(ID),
PhoneNumber nvarchar (20),
Address nvarchar(50)
)

INSERT INTO UserDetails VALUES
(2, '055-459-90-34', 'Nasimi d, Javadkhan street'),
(4, '055-612-40-22', 'Ganjlik d, Neymetulla street'),
(1, '050-600-90-30', 'Yasamal d, Inshaatchilar street'),
(7, '070-700-07-70', 'Nizami d, Neftchilar street'),
(5, '050-444-43-42', 'Binagadi d, Aliyev street')

CREATE TABLE Products(
ID int IDENTITY PRIMARY KEY,
Name nvarchar(30),
Price numeric
)

INSERT INTO Products VALUES
('Iphone11', 799.99),
('IphoneX', 500.00),
('Xiaomi', 649.99),
('USBCable', 10.99),
('Flash32', 25.00),
('SamsungTablet', 350.00),
('Flash128', 89.99),
('Television4K', 999.99)

CREATE TABLE Orders(
ID int IDENTITY PRIMARY KEY,
UserID int FOREIGN KEY REFERENCES Users(ID),
ExecutedDate datetime
)

INSERT INTO Orders VALUES
(1, GETDATE()),
(2, '2023-11-09'),
(4, GETDATE()),
(5, GETDATE()),
(7, '2023-11-14'),
(1, '2023-11-11'),
(2, GETDATE()),
(4, '2022-02-05'),
(5, '2023-10-13'),
(7, GETDATE())


CREATE TABLE ProductOrder(
ID int IDENTITY,
ProductID int FOREIGN KEY REFERENCES Products(ID),
OrderID int FOREIGN KEY REFERENCES Orders(ID),
)

INSERT INTO ProductOrder VALUES
(1,1),
(3,4),
(1,5),
(2,1),
(6,7),
(8,3),
(4,6),
(5,8)

select * from Users where FirstName LIKE 'T%'
select * from Products where Price > 30
select * from Orders where YEAR(ExecutedDate) = 2023 AND MONTH(ExecutedDate) = 11

