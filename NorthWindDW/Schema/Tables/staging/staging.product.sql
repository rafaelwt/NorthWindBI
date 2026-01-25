CREATE TABLE [staging].[product]
(
	[ProductKey]      INT          NULL,
	[ProductID]       INT          NULL,
	[ProductName]     NVARCHAR(40) NULL,
	[ProductLine]     NVARCHAR(15) NULL,
	[SupplierName]    NVARCHAR(40) NULL,
	[QuantityPerUnit] NVARCHAR(20) NULL,
	[UnitPrice]       MONEY        NULL,
	[Discontinued]    BIT          NULL
);
GO
