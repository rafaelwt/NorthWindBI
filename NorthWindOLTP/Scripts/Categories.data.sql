SET IDENTITY_INSERT dbo.Categories ON;
GO

INSERT INTO dbo.Categories (CategoryID, CategoryName, Description) VALUES
(1, N'Beverages', N'Soft drinks, coffees, teas, beers, and ales'),
(2, N'Condiments', N'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, N'Confections', N'Desserts, candies, and sweet breads'),
(4, N'Dairy Products', N'Cheeses and dairy products'),
(5, N'Grains/Cereals', N'Breads, crackers, pasta, and cereal'),
(6, N'Meat/Poultry', N'Prepared meats and poultry'),
(7, N'Produce', N'Dried fruit and bean curd'),
(8, N'Seafood', N'Seaweed and fish');
GO

SET IDENTITY_INSERT dbo.Categories OFF;
GO
