CREATE TABLE [dbo].[Categories]
(
	[CategoryID]   [int] IDENTITY(1,1) NOT NULL CONSTRAINT PK_Categories PRIMARY KEY,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description]  [ntext]        NULL,
	[Picture]      [image]        NULL,
	[RowVer]   [rowversion]    NOT NULL
);
