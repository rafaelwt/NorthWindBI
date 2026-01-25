CREATE TABLE [staging].[customer]
(
	[CustomerKey]   INT           NULL,
	[CustomerID]    NCHAR(5)      NULL,
	[CustomerName]  NVARCHAR(40)  NULL,
	[ContactName]   NVARCHAR(30)  NULL,
	[ContactTitle]  NVARCHAR(30)  NULL,
	[City]          NVARCHAR(15)  NULL,
	[Region]        NVARCHAR(15)  NULL,
	[PostalCode]    NVARCHAR(10)  NULL,
	[Country]       NVARCHAR(15)  NULL,
	[Phone]         NVARCHAR(24)  NULL,
	[Fax]           NVARCHAR(24)  NULL
);
GO
