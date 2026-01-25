CREATE TABLE [dbo].[DimCustomer]
(
	[CustomerKey]   INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimCustomer PRIMARY KEY,
	[CustomerID]    NCHAR(5)      NOT NULL,  -- Business key
	[CustomerName]  NVARCHAR(40)  NOT NULL,
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
