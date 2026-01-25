CREATE TABLE [dbo].[DimDate]
(
	[DateKey]          INT          NOT NULL CONSTRAINT PK_DimDate PRIMARY KEY,  -- YYYYMMDD format
	[FullDate]         DATE         NOT NULL,
	[Year]             INT          NOT NULL,
	[Quarter]          INT          NOT NULL,
	[Month]            INT          NOT NULL,
	[Day]              INT          NOT NULL,
	[DayNumberOfWeek]  INT          NOT NULL,
	[DayNameOfWeek]    NVARCHAR(10) NOT NULL,
	[MonthName]        NVARCHAR(10) NOT NULL,
	[WeekNumberOfYear] INT          NOT NULL
);
GO
