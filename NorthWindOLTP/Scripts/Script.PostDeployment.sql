/*
Post-Deployment Script Template
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.
 Use SQLCMD syntax to include a file in the post-deployment script.
 Example:      :r .\myfile.sql
--------------------------------------------------------------------------------------
*/

-- Limpiar tablas existentes (en orden inverso de dependencias)
:r .\clean.data.sql

-- Cargar datos (en orden de dependencias)
:r .\Region.data.sql
:r .\Categories.data.sql
:r .\Suppliers.data.sql
:r .\Shippers.data.sql
:r .\Customers.data.sql
:r .\Employees.data.sql
:r .\Territories.data.sql
:r .\Products.data.sql
:r .\Orders.data.sql
:r .\OrderDetails.data.sql
