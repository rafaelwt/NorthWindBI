DELETE FROM dbo.OrderDetails;
GO
DELETE FROM dbo.Orders;
GO
DBCC CHECKIDENT ('dbo.Orders', RESEED);
GO
DELETE FROM dbo.EmployeeTerritories;
GO
DELETE FROM dbo.CustomerCustomerDemo;
GO
DELETE FROM dbo.Products;
GO
DBCC CHECKIDENT ('dbo.Products', RESEED);
GO
DELETE FROM dbo.Employees;
GO
DBCC CHECKIDENT ('dbo.Employees', RESEED);
GO
DELETE FROM dbo.Territories;
GO
DELETE FROM dbo.Customers;
GO
DELETE FROM dbo.Suppliers;
GO
DBCC CHECKIDENT ('dbo.Suppliers', RESEED);
GO
DELETE FROM dbo.Categories;
GO
DBCC CHECKIDENT ('dbo.Categories', RESEED);
GO
DELETE FROM dbo.Shippers;
GO
DBCC CHECKIDENT ('dbo.Shippers', RESEED);
GO
DELETE FROM dbo.Region;
GO
DELETE FROM dbo.CustomerDemographics;
GO
