-- Dimensión de Clientes
CREATE TABLE [dbo].[Dim_Customer] (
    CustomerKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID NCHAR(5), -- ID original
    CompanyName NVARCHAR(40),
    City NVARCHAR(15),
    Region NVARCHAR(15),
    Country NVARCHAR(15)
)
