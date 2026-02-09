CREATE PROCEDURE [dbo].[GetProductChangesByRowVersion]
(
	@startRowVersion BIGINT,
	@endRowVersion BIGINT
)
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
	INNER JOIN [dbo].[Categories] c ON (p.CategoryID = c.CategoryID)
	INNER JOIN [dbo].[Suppliers] s ON (p.SupplierID = s.SupplierID)
	WHERE ((CAST(p.[RowVer] AS BIGINT) > @startRowVersion) AND (CAST(p.[RowVer] AS BIGINT) <= @endRowVersion))
	   OR ((CAST(c.[RowVer] AS BIGINT) > @startRowVersion) AND (CAST(c.[RowVer] AS BIGINT) <= @endRowVersion))
	   OR ((CAST(s.[RowVer] AS BIGINT) > @startRowVersion) AND (CAST(s.[RowVer] AS BIGINT) <= @endRowVersion));

END;
GO
