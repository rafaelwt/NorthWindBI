CREATE TABLE [dbo].[Region]
(
	[RegionID]          [int]        NOT NULL CONSTRAINT PK_Region PRIMARY KEY,
	[RegionDescription] [nchar](50)  NOT NULL,
	[rowversion]        [timestamp]  NOT NULL
);
