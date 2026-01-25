CREATE PROCEDURE [dbo].[DW_MergeDimCustomer]
AS
BEGIN
	UPDATE c
	SET c.CustomerName = s.CustomerName,
		c.ContactName = s.ContactName,
		c.ContactTitle = s.ContactTitle,
		c.City = s.City,
		c.Region = s.Region,
		c.PostalCode = s.PostalCode,
		c.Country = s.Country,
		c.Phone = s.Phone,
		c.Fax = s.Fax
	FROM [dbo].[DimCustomer] c
	INNER JOIN [staging].[customer] s ON c.CustomerKey = s.CustomerKey;
END;
GO
