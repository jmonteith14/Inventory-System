import os
import pyodbc

connection = "{ODBC Driver 17 for SQL Server}"
server = os.getenv("DB_SERVER", "localhost")
database = "Inventory_System"
trusted_connection = "yes"

connection_string = 