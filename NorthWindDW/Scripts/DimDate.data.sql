-- Generate DimDate dimension from 1996-01-01 to 1998-12-31 (NorthWind date range)
DECLARE @StartDate DATE = '1996-01-01';
DECLARE @EndDate DATE = '1998-12-31';

WHILE @StartDate <= @EndDate
BEGIN
	DECLARE @DateKey INT = CONVERT(INT, CONVERT(VARCHAR, @StartDate, 112));

	IF NOT EXISTS (SELECT 1 FROM [dbo].[DimDate] WHERE DateKey = @DateKey)
	BEGIN
		INSERT INTO [dbo].[DimDate]
		(
			DateKey,
			FullDate,
			Year,
			Quarter,
			Month,
			Day,
			DayNumberOfWeek,
			DayNameOfWeek,
			MonthName,
			WeekNumberOfYear
		)
		VALUES
		(
			@DateKey,
			@StartDate,
			YEAR(@StartDate),
			DATEPART(QUARTER, @StartDate),
			MONTH(@StartDate),
			DAY(@StartDate),
			DATEPART(WEEKDAY, @StartDate),
			DATENAME(WEEKDAY, @StartDate),
			DATENAME(MONTH, @StartDate),
			DATEPART(WEEK, @StartDate)
		);
	END;

	SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;
GO
