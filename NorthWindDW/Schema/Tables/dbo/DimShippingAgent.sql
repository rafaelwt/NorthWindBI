CREATE TABLE [dbo].[DimShippingAgent]
(
	[ShippingAgentKey]  INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimShippingAgent PRIMARY KEY,
	[ShipperID]         INT           NOT NULL,  -- Business key
	[ShippingAgentName] NVARCHAR(40)  NOT NULL,
	[Phone]             NVARCHAR(24)  NULL
);
GO
