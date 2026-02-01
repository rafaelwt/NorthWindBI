CREATE PROCEDURE [dbo].[GetEmployeeChangesByRowVersion]
	@startRowVersion BIGINT,
	@endRowVersion BIGINT
AS
BEGIN
	SELECT
		EmployeeID,
		FirstName + ' ' + LastName AS SalesPersonName,
		Title,
		City,
		Region,
		Country,
		HireDate,
		ReportsTo
	FROM [dbo].[Employees]
	WHERE CAST([rowversion] AS BIGINT) > @startRowVersion
	  AND CAST([rowversion] AS BIGINT) <= @endRowVersion;
END;
GO
