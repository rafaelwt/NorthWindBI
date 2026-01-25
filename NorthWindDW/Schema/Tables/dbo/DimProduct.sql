CREATE TABLE [dbo].[DimProduct]
(
	[ProductKey]      INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimProduct PRIMARY KEY,
	[ProductID]       INT           NOT NULL,  -- Business key
	[ProductName]     NVARCHAR(40)  NOT NULL,
	[ProductLine]     NVARCHAR(15)  NULL,  -- CategoryName denormalized
	[SupplierName]    NVARCHAR(40)  NULL,  -- Supplier.CompanyName denormalized
	[QuantityPerUnit] NVARCHAR(20)  NULL,
	[UnitPrice]       MONEY         NULL,
	[Discontinued]    BIT           NOT NULL
);
GO
