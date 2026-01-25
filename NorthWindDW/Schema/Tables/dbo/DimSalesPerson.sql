CREATE TABLE [dbo].[DimSalesPerson]
(
	[SalesPersonKey]  INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimSalesPerson PRIMARY KEY,
	[EmployeeID]      INT           NOT NULL,  -- Business key
	[SalesPersonName] NVARCHAR(50)  NOT NULL,
	[Title]           NVARCHAR(30)  NULL,
	[City]            NVARCHAR(15)  NULL,  -- Employee city (substitute for StoreCity)
	[Region]          NVARCHAR(15)  NULL,  -- Employee region (substitute for StoreRegion)
	[Country]         NVARCHAR(15)  NULL,
	[HireDate]        DATETIME      NULL,
	[ReportsTo]       INT           NULL   -- Manager EmployeeID
);
GO
