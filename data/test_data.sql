
USE Inventory_System
GO

INSERT INTO Categories
VALUES
('Snack'),
('Condiment'),
('Produce')

INSERT INTO Items
VALUES
(1, 'Chips', 2, '2027-10-10', 2),
(2, 'Ketchup' ,0.5 ,'2026-06-24' ,2),
(2,'Soy Sauce' ,0.25 ,'2028-03-15',1),
(3, 'Apples', 0.5, '2027-10-10', 1)

INSERT INTO Transactions (FK_Item_ID, Quantity)
VALUES
(1, 4),
(2, 1),
(3, 0.5),
(1, -1),
(2, -0.25)
