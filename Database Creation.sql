
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Inventory_System')
BEGIN
	CREATE DATABASE Inventory_System;
END;

USE Inventory_System

CREATE TABLE Categories (
Category_ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Category_Name nvarchar(255) NOT NULL
);

CREATE TABLE Items (
Item_ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
FK_Category_ID int NOT NULL,
Item_Name nvarchar(255) NOT NULL,
Min_Stock_Level decimal(20,2),
[Expiry_Date] date,
Item_Importance int,
FOREIGN KEY (FK_Category_ID) REFERENCES Categories(Category_ID)
);

CREATE TABLE Transactions (
Transaction_ID int IDENTITY (1,1) PRIMARY KEY NOT NULL,
FK_Item_ID int NOT NULL,
Quantity decimal(20,2),
Created_Date datetime2 DEFAULT GETDATE(),
FOREIGN KEY (FK_Item_ID) REFERENCES Items(Item_ID)
);


INSERT INTO Categories
VALUES ('Snack'), ('Condiment')

INSERT INTO Items
VALUES
(1, 'Chips', 2, '2027-10-10', 2),
(2, 'Ketchup' ,0.5 ,'2026-06-24' ,2),
(2,'Soy Sauce' ,0.25 ,'2028-03-15',1)

INSERT INTO Transactions (FK_Item_ID, Quantity)
VALUES
(1, 4),
(2, 1),
(3, 0.5),
(1, -1),
(2, -0.25)

INSERT INTO Categories
VALUES ('Produce')

INSERT INTO Items
VALUES
(3, 'Apples', 0.5, '2027-10-10', 1)

USE Inventory_System
SELECT * FROM Items