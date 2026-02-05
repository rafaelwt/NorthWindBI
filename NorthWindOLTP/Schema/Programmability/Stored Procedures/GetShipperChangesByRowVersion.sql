CREATE PROCEDURE [dbo].[GetShipperChangesByRowVersion]
(
	@startRowVersion BIGINT,
	@endRowVersion BIGINT
)
AS
BEGIN
	SELECT
		ShipperID,
		CompanyName AS ShippingAgentName,
		Phone
	FROM [dbo].[Shippers]
	WHERE ((CAST([RowVer] AS BIGINT) > @startRowVersion) AND (CAST([RowVer] AS BIGINT) <= @endRowVersion));
END;
GO
