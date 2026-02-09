IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[DimDate]
			  WHERE [DateKey] = 0)
BEGIN

    INSERT INTO [dbo].[DimDate]
               ([DateKey]
               ,[FullDate]
               ,[Year]
               ,[Quarter] 
               ,[Month]
               ,[Day]
               ,[DayNumberOfWeek]
               ,[DayNameOfWeek]
               ,[MonthName]
               ,[WeekNumberOfYear])          
         VALUES
               (0
               ,'0001-01-01'
               ,0
               ,0
               ,0
               ,0
               ,0
               ,''
               ,''
               ,0);

END
GO