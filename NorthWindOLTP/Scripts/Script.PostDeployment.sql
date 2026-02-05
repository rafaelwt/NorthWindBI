/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

:r .\Clean.data.sql
:r .\Categories.data.sql
:r .\Suppliers.data.sql
:r .\Shippers.data.sql
:r .\Region.data.sql
:r .\Customers.data.sql
:r .\Products.data.sql
:r .\Territories.data.sql
:r .\Employees.data.sql
:r .\EmployeeTerritories.data.sql
:r .\Orders.data.sql
:r .\OrderDetails.data.sql
