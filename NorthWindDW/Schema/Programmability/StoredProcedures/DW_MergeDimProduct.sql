CREATE PROCEDURE [dbo].[DW_MergeDimProduct]
AS
BEGIN
	UPDATE p
	SET p.ProductName = s.ProductName,
		p.ProductLine = s.ProductLine,
		p.SupplierName = s.SupplierName,
		p.QuantityPerUnit = s.QuantityPerUnit,
		p.UnitPrice = s.UnitPrice,
		p.Discontinued = s.Discontinued
	FROM [dbo].[DimProduct] p
	INNER JOIN [staging].[product] s ON p.ProductKey = s.ProductKey;
END;
GO
