CREATE PROCEDURE [dbo].[GetProductChangesByRowVersion]
	@startRowVersion BIGINT,
	@endRowVersion BIGINT
AS
BEGIN
	SELECT
		p.ProductID,
		p.ProductName,
		c.CategoryName AS ProductLine,
		s.CompanyName AS SupplierName,
		p.QuantityPerUnit,
		p.UnitPrice,
		p.Discontinued
	FROM [dbo].[Products] p
	LEFT JOIN [dbo].[Categories] c ON p.CategoryID = c.CategoryID
	LEFT JOIN [dbo].[Suppliers] s ON p.SupplierID = s.SupplierID
	WHERE CAST(p.[rowversion] AS BIGINT) > @startRowVersion
	  AND CAST(p.[rowversion] AS BIGINT) <= @endRowVersion;
END;
GO
