CREATE TABLE [staging].[orders]
(
	[CustomerKey]       INT      NULL,
	[SalesPersonKey]    INT      NULL,
	[ProductKey]        INT      NULL,
	[ShippingAgentKey]  INT      NULL,
	[TimeKey]           INT      NULL,
	[OrderNo]           INT      NULL,
	[LineItemNo]        INT      NULL,
	[Quantity]          SMALLINT NULL,
	[UnitPrice]         MONEY    NULL,
	[Discount]          REAL     NULL,
	[Revenue]           MONEY    NULL

);
GO
