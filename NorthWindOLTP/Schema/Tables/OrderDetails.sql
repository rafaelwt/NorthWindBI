CREATE TABLE [dbo].[OrderDetails]
(
	[OrderID]    [int]      NOT NULL,
	[ProductID]  [int]      NOT NULL,
	[UnitPrice]  [money]    NOT NULL CONSTRAINT DF_OrderDetails_UnitPrice DEFAULT (0),
	[Quantity]   [smallint] NOT NULL CONSTRAINT DF_OrderDetails_Quantity DEFAULT (1),
	[Discount]   [real]     NOT NULL CONSTRAINT DF_OrderDetails_Discount DEFAULT (0),
	[RowVer]   [rowversion]    NOT NULL,
	CONSTRAINT PK_OrderDetails PRIMARY KEY ([OrderID], [ProductID])
);
GO

ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY([OrderID]) REFERENCES [dbo].[Orders] ([OrderID])
GO

ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT FK_OrderDetails_Products FOREIGN KEY([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
GO
