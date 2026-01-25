-- Initialize PackageConfig for ETL tracking
IF NOT EXISTS (SELECT 1 FROM [dbo].[PackageConfig] WHERE TableName = 'Customer')
	INSERT INTO [dbo].[PackageConfig] (TableName, LastRowVersion) VALUES ('Customer', 0);

IF NOT EXISTS (SELECT 1 FROM [dbo].[PackageConfig] WHERE TableName = 'SalesPerson')
	INSERT INTO [dbo].[PackageConfig] (TableName, LastRowVersion) VALUES ('SalesPerson', 0);

IF NOT EXISTS (SELECT 1 FROM [dbo].[PackageConfig] WHERE TableName = 'Product')
	INSERT INTO [dbo].[PackageConfig] (TableName, LastRowVersion) VALUES ('Product', 0);

IF NOT EXISTS (SELECT 1 FROM [dbo].[PackageConfig] WHERE TableName = 'ShippingAgent')
	INSERT INTO [dbo].[PackageConfig] (TableName, LastRowVersion) VALUES ('ShippingAgent', 0);

IF NOT EXISTS (SELECT 1 FROM [dbo].[PackageConfig] WHERE TableName = 'Orders')
	INSERT INTO [dbo].[PackageConfig] (TableName, LastRowVersion) VALUES ('Orders', 0);
GO
