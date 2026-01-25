CREATE PROCEDURE [dbo].[DW_MergeFactOrders]
AS
BEGIN
	UPDATE f
	SET f.CustomerKey = s.CustomerKey,
		f.SalesPersonKey = s.SalesPersonKey,
		f.ProductKey = s.ProductKey,
		f.ShippingAgentKey = s.ShippingAgentKey,
		f.TimeKey = s.TimeKey,
		f.Quantity = s.Quantity,
		f.Revenue = s.Revenue,
		f.Cost = s.Cost,
		f.Profit = s.Profit
	FROM [dbo].[FactOrders] f
	INNER JOIN [staging].[orders] s ON f.OrderNo = s.OrderNo AND f.LineItemNo = s.LineItemNo;
END;
GO
