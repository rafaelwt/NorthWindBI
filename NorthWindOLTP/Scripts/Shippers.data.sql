SET IDENTITY_INSERT dbo.Shippers ON;
GO

INSERT INTO dbo.Shippers (ShipperID, CompanyName, Phone) VALUES
(1, N'Speedy Express', N'(503) 555-9831'),
(2, N'United Package', N'(503) 555-3199'),
(3, N'Federal Shipping', N'(503) 555-9931');
GO

SET IDENTITY_INSERT dbo.Shippers OFF;
GO
