CREATE TABLE [dbo].[Territories]
(
	[TerritoryID]          [nvarchar](20) NOT NULL CONSTRAINT PK_Territories PRIMARY KEY,
	[TerritoryDescription] [nchar](50)    NOT NULL,
	[RegionID]             [int]          NOT NULL,
	[RowVer]   [rowversion]    NOT NULL
);
GO

ALTER TABLE [dbo].[Territories] ADD CONSTRAINT FK_Territories_Region FOREIGN KEY([RegionID]) REFERENCES [dbo].[Region] ([RegionID])
GO
