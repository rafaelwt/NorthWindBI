CREATE PROCEDURE [dbo].[GetOrdersChangesByRowVersion]
	@startRowVersion BIGINT,
	@endRowVersion BIGINT
AS
BEGIN
	SELECT
		o.OrderID AS OrderNo,
		ROW_NUMBER() OVER (PARTITION BY o.OrderID ORDER BY od.ProductID) AS LineItemNo,
		o.CustomerID,
		o.EmployeeID,
		od.ProductID,
		o.ShipVia AS ShipperID,
		CONVERT(INT, CONVERT(VARCHAR, o.OrderDate, 112)) AS TimeKey,
		od.Quantity,
		CAST(od.UnitPrice * od.Quantity * (1 - od.Discount) AS MONEY) AS Revenue,
		NULL AS Cost,
		NULL AS Profit
	FROM [dbo].[Orders] o
	INNER JOIN [dbo].[OrderDetails] od ON o.OrderID = od.OrderID
	WHERE CAST(o.[rowversion] AS BIGINT) > @startRowVersion
	  AND CAST(o.[rowversion] AS BIGINT) <= @endRowVersion;
END;
GO
