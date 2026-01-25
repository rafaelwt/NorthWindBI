CREATE TABLE [staging].[salesperson]
(
	[SalesPersonKey]  INT          NULL,
	[EmployeeID]      INT          NULL,
	[SalesPersonName] NVARCHAR(50) NULL,
	[Title]           NVARCHAR(30) NULL,
	[City]            NVARCHAR(15) NULL,
	[Region]          NVARCHAR(15) NULL,
	[Country]         NVARCHAR(15) NULL,
	[HireDate]        DATETIME     NULL,
	[ReportsTo]       INT          NULL
);
GO
