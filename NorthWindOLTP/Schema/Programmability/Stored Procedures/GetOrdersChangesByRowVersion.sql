CREATE PROCEDURE [dbo].[GetOrdersChangesByRowVersion]
(
	@startRowVersion BIGINT,
	@endRowVersion BIGINT
)
AS
BEGIN
	SELECT
		o.OrderID AS OrderNo,
		CAST(ROW_NUMBER() OVER (PARTITION BY o.OrderID ORDER BY od.ProductID) AS INT) AS LineItemNo,
		o.CustomerID,
		o.EmployeeID,
		od.ProductID,
		o.ShipVia AS ShipperID,
		CONVERT(INT, CONVERT(VARCHAR, o.OrderDate, 112)) AS TimeKey,
		od.Quantity,
		od.UnitPrice,
		od.Discount,
		CAST(od.UnitPrice * od.Quantity * (1 - od.Discount) AS MONEY) AS Revenue

	FROM [dbo].[Orders] o
	INNER JOIN [dbo].[OrderDetails] od ON o.OrderID = od.OrderID
	WHERE ((CAST(o.[RowVer] AS BIGINT) > @startRowVersion) AND (CAST(o.[RowVer] AS BIGINT) <= @endRowVersion))
	   OR ((CAST(od.[RowVer] AS BIGINT) > @startRowVersion) AND (CAST(od.[RowVer] AS BIGINT) <= @endRowVersion));
END;
GO
