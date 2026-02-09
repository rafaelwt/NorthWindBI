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
		f.UnitPrice = s.UnitPrice,
		f.Discount = s.Discount,
		f.Revenue = s.Revenue
	FROM [dbo].[FactOrders] f
	INNER JOIN [staging].[orders] s ON (f.OrderNo = s.OrderNo) AND (f.LineItemNo = s.LineItemNo);
END;
GO
