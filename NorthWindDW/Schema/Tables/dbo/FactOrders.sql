CREATE TABLE [dbo].[FactOrders]
(
	-- Foreign Keys (Dimensions)
	[CustomerKey]       INT      NOT NULL,
	[SalesPersonKey]    INT      NOT NULL,
	[ProductKey]        INT      NOT NULL,
	[ShippingAgentKey]  INT      NOT NULL,
	[TimeKey]           INT      NOT NULL,

	-- Degenerate Dimensions
	[OrderNo]           INT      NOT NULL,
	[LineItemNo]        INT      NOT NULL,

	-- Measures
	[Quantity]          SMALLINT NOT NULL,
	[UnitPrice]			MONEY NOT NULL,
	[Discount]			REAL NOT NULL,
	[Revenue]           MONEY NOT NULL,

	-- Primary Key
	CONSTRAINT PK_FactOrders PRIMARY KEY ([OrderNo], [LineItemNo])
);
GO

-- Foreign Key Constraints
ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT FK_FactOrders_DimCustomer
	FOREIGN KEY([CustomerKey]) REFERENCES [dbo].[DimCustomer]([CustomerKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT FK_FactOrders_DimSalesPerson
	FOREIGN KEY([SalesPersonKey]) REFERENCES [dbo].[DimSalesPerson]([SalesPersonKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT FK_FactOrders_DimProduct
	FOREIGN KEY([ProductKey]) REFERENCES [dbo].[DimProduct]([ProductKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT FK_FactOrders_DimShippingAgent
	FOREIGN KEY([ShippingAgentKey]) REFERENCES [dbo].[DimShippingAgent]([ShippingAgentKey]);
GO

ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT FK_FactOrders_DimDate
	FOREIGN KEY([TimeKey]) REFERENCES [dbo].[DimDate]([DateKey]);
GO
