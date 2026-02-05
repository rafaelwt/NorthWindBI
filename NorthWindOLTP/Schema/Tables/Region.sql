CREATE TABLE [dbo].[Region]
(
	[RegionID]          [int]        NOT NULL CONSTRAINT PK_Region PRIMARY KEY,
	[RegionDescription] [nchar](50)  NOT NULL,
	[RowVer]   [rowversion]    NOT NULL
);
