CREATE PROCEDURE [dbo].[GetShipperChangesByRowVersion]
	@startRowVersion BIGINT,
	@endRowVersion BIGINT
AS
BEGIN
	SELECT
		ShipperID,
		CompanyName AS ShippingAgentName,
		Phone
	FROM [dbo].[Shippers]
	WHERE CAST([rowversion] AS BIGINT) > @startRowVersion
	  AND CAST([rowversion] AS BIGINT) <= @endRowVersion;
END;
GO
