CREATE PROCEDURE [dbo].[GetCustomerChangesByRowVersion]
(
	@startRowVersion BIGINT,
	@endRowVersion BIGINT
)
AS
BEGIN
	SELECT
		CustomerID,
		CompanyName,
		ContactName,
		ContactTitle,
		[Address],
		City,
		Region,
		PostalCode,
		Country,
		Phone,
		Fax
	FROM [dbo].[Customers]
	WHERE (CAST([RowVer] AS BIGINT) > @startRowVersion) AND (CAST([RowVer] AS BIGINT) <= @endRowVersion);
END;
GO
