-- Dimensión de Productos (Consolida Categories y Suppliers)
CREATE TABLE [dbo].[Dim_Product] (
    ProductKey INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT, -- ID original del OLTP
    ProductName NVARCHAR(40),
    CategoryName NVARCHAR(15),
    SupplierName NVARCHAR(40),
    QuantityPerUnit NVARCHAR(20),
    UnitPrice MONEY,
    Discontinued BIT
)
