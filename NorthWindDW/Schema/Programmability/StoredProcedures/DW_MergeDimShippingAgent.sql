CREATE PROCEDURE [dbo].[DW_MergeDimShippingAgent]
AS
BEGIN
	UPDATE sa
	SET sa.ShippingAgentName = s.ShippingAgentName,
		sa.Phone = s.Phone
	FROM [dbo].[DimShippingAgent] sa
	INNER JOIN [staging].[shippingagent] s ON sa.ShippingAgentKey = s.ShippingAgentKey;
END;
GO
