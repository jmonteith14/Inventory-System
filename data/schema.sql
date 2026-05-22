
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Inventory_System')
BEGIN
	CREATE DATABASE Inventory_System;
END;
GO

USE Inventory_System
GO

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
