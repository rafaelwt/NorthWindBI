CREATE PROCEDURE [dbo].[DW_MergeDimSalesPerson]
AS
BEGIN
	UPDATE sp
	SET sp.SalesPersonName = s.SalesPersonName,
		sp.Title = s.Title,
		sp.City = s.City,
		sp.Region = s.Region,
		sp.Country = s.Country,
		sp.HireDate = s.HireDate,
		sp.ReportsTo = s.ReportsTo
	FROM [dbo].[DimSalesPerson] sp
	INNER JOIN [staging].[salesperson] s ON sp.SalesPersonKey = s.SalesPersonKey;
END;
GO
