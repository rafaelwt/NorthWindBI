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
	[Revenue]           MONEY    NULL,
	[Cost]              MONEY    NULL,
	[Profit]            MONEY    NULL
);
GO
