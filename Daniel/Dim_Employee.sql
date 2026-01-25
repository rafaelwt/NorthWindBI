-- Dimensión de Empleados (Jerarquía aplanada)
CREATE TABLE [dbo].[Dim_Employee] (
    EmployeeKey INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    FullName NVARCHAR(40),
    Title NVARCHAR(30),
    City NVARCHAR(15),
    Country NVARCHAR(15)
)
