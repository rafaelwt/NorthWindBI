SET IDENTITY_INSERT dbo.Products ON;
GO

INSERT INTO dbo.Products (ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
(1, N'Chai', 1, 1, N'10 boxes x 20 bags', 18.00, 39, 0, 10, 0),
(2, N'Chang', 1, 1, N'24 - 12 oz bottles', 19.00, 17, 40, 25, 0),
(3, N'Aniseed Syrup', 1, 2, N'12 - 550 ml bottles', 10.00, 13, 70, 25, 0),
(4, N'Chef Anton''s Cajun Seasoning', 2, 2, N'48 - 6 oz jars', 22.00, 53, 0, 0, 0),
(5, N'Chef Anton''s Gumbo Mix', 2, 2, N'36 boxes', 21.35, 0, 0, 0, 1),
(6, N'Grandma''s Boysenberry Spread', 3, 2, N'12 - 8 oz jars', 25.00, 120, 0, 25, 0),
(7, N'Uncle Bob''s Organic Dried Pears', 3, 7, N'12 - 1 lb pkgs.', 30.00, 15, 0, 10, 0),
(8, N'Northwoods Cranberry Sauce', 3, 2, N'12 - 12 oz jars', 40.00, 6, 0, 0, 0),
(9, N'Mishi Kobe Niku', 4, 6, N'18 - 500 g pkgs.', 97.00, 29, 0, 0, 1),
(10, N'Ikura', 4, 8, N'12 - 200 ml jars', 31.00, 31, 0, 0, 0),
(11, N'Queso Cabrales', 5, 4, N'1 kg pkg.', 21.00, 22, 30, 30, 0),
(12, N'Queso Manchego La Pastora', 5, 4, N'10 - 500 g pkgs.', 38.00, 86, 0, 0, 0),
(13, N'Konbu', 6, 8, N'2 kg box', 6.00, 24, 0, 5, 0),
(14, N'Tofu', 6, 7, N'40 - 100 g pkgs.', 23.25, 35, 0, 0, 0),
(15, N'Genen Shouyu', 6, 2, N'24 - 250 ml bottles', 15.50, 39, 0, 5, 0),
(16, N'Pavlova', 7, 3, N'32 - 500 g boxes', 17.45, 29, 0, 10, 0),
(17, N'Alice Mutton', 7, 6, N'20 - 1 kg tins', 39.00, 0, 0, 0, 1),
(18, N'Carnarvon Tigers', 7, 8, N'16 kg pkg.', 62.50, 42, 0, 0, 0),
(19, N'Teatime Chocolate Biscuits', 8, 3, N'10 boxes x 12 pieces', 9.20, 25, 0, 5, 0),
(20, N'Sir Rodney''s Marmalade', 8, 3, N'30 gift boxes', 81.00, 40, 0, 0, 0),
(21, N'Sir Rodney''s Scones', 8, 3, N'24 pkgs. x 4 pieces', 10.00, 3, 40, 5, 0),
(22, N'Gustaf''s Knackebrod', 9, 5, N'24 - 500 g pkgs.', 21.00, 104, 0, 25, 0),
(23, N'Tunnbrod', 9, 5, N'12 - 250 g pkgs.', 9.00, 61, 0, 25, 0),
(24, N'Guarana Fantastica', 10, 1, N'12 - 355 ml cans', 4.50, 20, 0, 0, 1),
(25, N'NuNuCa Nuss-Nougat-Creme', 1, 3, N'20 - 450 g glasses', 14.00, 76, 0, 30, 0),
(26, N'Gumbar Gummibarchen', 1, 3, N'100 - 250 g bags', 31.23, 15, 0, 0, 0),
(27, N'Schoggi Schokolade', 1, 3, N'100 - 100 g pieces', 43.90, 49, 0, 30, 0),
(28, N'Rossle Sauerkraut', 2, 7, N'25 - 825 g cans', 45.60, 26, 0, 0, 0),
(29, N'Thuringer Rostbratwurst', 2, 6, N'50 bags x 30 sausgs.', 123.79, 0, 0, 0, 1),
(30, N'Nord-Ost Matjeshering', 3, 8, N'10 - 200 g glasses', 25.89, 10, 0, 15, 0);
GO

SET IDENTITY_INSERT dbo.Products OFF;
GO
