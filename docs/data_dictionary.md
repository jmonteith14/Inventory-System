# Data Dictonary - Inventory System

## Categories Table
| Attribute | Data Type | Constraint | Description |
| ----- | ----- | ----- | ----- |
| Categories | Category_ID | int | PK, Auto-increment, Not null | ID number for each category type.
| Category_Name | nvarchar(255) | Not null | Category type in text.

---

## Items Table
| Attribute | Data Type | Constraint | Description |
| ----- | ----- | ----- | ----- |
| Item_ID | int | PK, Auto-increment, Not null | ID number for each item type. |
| FK_Category_ID | int | FK, Not null | Foreign Key ID from the categories table. |
| Item_Name | nvarchar(255) | Not null | Item type in text. |
| Min_Stock_Level | decimal(20,2) | --- | The minimum stock level that will be used to give a warning when stock is low. |
| Expiry_Date | date | --- | The earliest expiry date for the item type |
| Item_Importance | int | --- | The level of personal importance for an item to be restocked, from 1-3 (1 = low, 2 = medium, 3 = high) |

---

## Transactions Table
| Attribute | Data Type | Constraint | Description |
| ----- | ----- | ----- | ----- |
| Transaction_ID | int | PK, Auto-increment, Not null | ID number for each transaction |
| FK_Item_ID | int | FK, Not null | Foreign Key ID from the items table |
| Quantity | decimal(20,2) | --- | The total quantity of a transactions, either + for added (purchased, initial add, etc/) items or - for removed items (used, garbage, etc.) |
| Created_Date | datetime2 | default getdate() | The date the transaction was made (inputed) |

---