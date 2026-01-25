-- Dimensión de Tiempo (Crucial para análisis histórico)
CREATE TABLE [dbo].[Dim_Date] (
    DateKey INT PRIMARY KEY, -- Formato YYYYMMDD
    FullDate DATE,
    Year INT,
    Quarter INT,
    Month INT,
    MonthName NVARCHAR(15),
    Day INT
)
