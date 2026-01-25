-- Hecho de Ventas
CREATE TABLE [dbo].[Fact_Sales] (
    SalesKey INT IDENTITY(1,1) PRIMARY KEY,
    -- Llaves foráneas a dimensiones
    ProductKey INT REFERENCES Dim_Product(ProductKey),
    CustomerKey INT REFERENCES Dim_Customer(CustomerKey),
    EmployeeKey INT REFERENCES Dim_Employee(EmployeeKey),
    OrderDateKey INT REFERENCES Dim_Date(DateKey),
    
    -- Métricas (Hechos)
    OrderID INT, -- Para trazabilidad (Degenerated Dimension)
    UnitPrice MONEY,
    Quantity SMALLINT,
    Discount REAL,
    Freight MONEY,
    TotalRevenue AS (UnitPrice * Quantity * (1 - Discount)) -- Cálculo derivado
)
