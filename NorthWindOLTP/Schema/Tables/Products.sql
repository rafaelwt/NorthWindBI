CREATE TABLE [dbo].[Products]
(
	[ProductID]       [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_Products PRIMARY KEY,
	[ProductName]     [nvarchar](40) NOT NULL,
	[SupplierID]      [int]          NULL,
	[CategoryID]      [int]          NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice]       [money]        NULL CONSTRAINT DF_Products_UnitPrice DEFAULT (0),
	[UnitsInStock]    [smallint]     NULL CONSTRAINT DF_Products_UnitsInStock DEFAULT (0),
	[UnitsOnOrder]    [smallint]     NULL CONSTRAINT DF_Products_UnitsOnOrder DEFAULT (0),
	[ReorderLevel]    [smallint]     NULL CONSTRAINT DF_Products_ReorderLevel DEFAULT (0),
	[Discontinued]    [bit]          NOT NULL CONSTRAINT DF_Products_Discontinued DEFAULT (0),
	[RowVer]   [rowversion]    NOT NULL
);
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT FK_Products_Categories FOREIGN KEY([CategoryID]) REFERENCES [dbo].[Categories] ([CategoryID])
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT FK_Products_Suppliers FOREIGN KEY([SupplierID]) REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
