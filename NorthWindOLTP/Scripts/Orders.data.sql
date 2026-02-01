SET IDENTITY_INSERT dbo.Orders ON;
GO

INSERT INTO dbo.Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) VALUES
(10248, N'ALFKI', 5, '1996-07-04', '1996-08-01', '1996-07-16', 3, 32.38, N'Alfreds Futterkiste', N'Obere Str. 57', N'Berlin', NULL, N'12209', N'Germany'),
(10249, N'ANATR', 6, '1996-07-05', '1996-08-16', '1996-07-10', 1, 11.61, N'Ana Trujillo Emparedados', N'Avda. de la Constitucion 2222', N'Mexico D.F.', NULL, N'05021', N'Mexico'),
(10250, N'ANTON', 4, '1996-07-08', '1996-08-05', '1996-07-12', 2, 65.83, N'Antonio Moreno Taqueria', N'Mataderos 2312', N'Mexico D.F.', NULL, N'05023', N'Mexico'),
(10251, N'AROUT', 3, '1996-07-08', '1996-08-05', '1996-07-15', 1, 41.34, N'Around the Horn', N'120 Hanover Sq.', N'London', NULL, N'WA1 1DP', N'UK'),
(10252, N'BERGS', 4, '1996-07-09', '1996-08-06', '1996-07-11', 2, 51.30, N'Berglunds snabbkop', N'Berguvsvagen 8', N'Lulea', NULL, N'S-958 22', N'Sweden'),
(10253, N'BLAUS', 3, '1996-07-10', '1996-07-24', '1996-07-16', 2, 58.17, N'Blauer See Delikatessen', N'Forsterstr. 57', N'Mannheim', NULL, N'68306', N'Germany'),
(10254, N'BLONP', 5, '1996-07-11', '1996-08-08', '1996-07-23', 2, 22.98, N'Blondel pere et fils', N'24, place Kleber', N'Strasbourg', NULL, N'67000', N'France'),
(10255, N'BOLID', 9, '1996-07-12', '1996-08-09', '1996-07-15', 3, 148.33, N'Bolido Comidas preparadas', N'C/ Araquil, 67', N'Madrid', NULL, N'28023', N'Spain'),
(10256, N'BONAP', 3, '1996-07-15', '1996-08-12', '1996-07-17', 2, 13.97, N'Bon app''', N'12, rue des Bouchers', N'Marseille', NULL, N'13008', N'France'),
(10257, N'BOTTM', 4, '1996-07-16', '1996-08-13', '1996-07-22', 3, 81.91, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', N'Canada'),
(10258, N'BSBEV', 1, '1996-07-17', '1996-08-14', '1996-07-23', 1, 140.51, N'B''s Beverages', N'Fauntleroy Circus', N'London', NULL, N'EC2 5NT', N'UK'),
(10259, N'CACTU', 4, '1996-07-18', '1996-08-15', '1996-07-25', 3, 3.25, N'Cactus Comidas para llevar', N'Cerrito 333', N'Buenos Aires', NULL, N'1010', N'Argentina'),
(10260, N'CENTC', 4, '1996-07-19', '1996-08-16', '1996-07-29', 1, 55.09, N'Centro comercial Moctezuma', N'Sierras de Granada 9993', N'Mexico D.F.', NULL, N'05022', N'Mexico'),
(10261, N'CHOPS', 4, '1996-07-19', '1996-08-16', '1996-07-30', 2, 3.05, N'Chop-suey Chinese', N'Hauptstr. 29', N'Bern', NULL, N'3012', N'Switzerland'),
(10262, N'COMMI', 8, '1996-07-22', '1996-08-19', '1996-07-25', 3, 48.29, N'Comercio Mineiro', N'Av. dos Lusiadas, 23', N'Sao Paulo', N'SP', N'05432-043', N'Brazil'),
(10263, N'CONSH', 9, '1996-07-23', '1996-08-20', '1996-07-31', 3, 146.06, N'Consolidated Holdings', N'Berkeley Gardens 12 Brewery', N'London', NULL, N'WX1 6LT', N'UK'),
(10264, N'DRACD', 6, '1996-07-24', '1996-08-21', '1996-08-23', 3, 3.67, N'Drachenblut Delikatessen', N'Walserweg 21', N'Aachen', NULL, N'52066', N'Germany'),
(10265, N'DUMON', 2, '1996-07-25', '1996-08-22', '1996-08-12', 1, 55.28, N'Du monde entier', N'67, rue des Cinquante Otages', N'Nantes', NULL, N'44000', N'France'),
(10266, N'EASTC', 3, '1996-07-26', '1996-09-06', '1996-07-31', 3, 25.73, N'Eastern Connection', N'35 King George', N'London', NULL, N'WX3 6FW', N'UK'),
(10267, N'ERNSH', 4, '1996-07-29', '1996-08-26', '1996-08-06', 1, 208.58, N'Ernst Handel', N'Kirchgasse 6', N'Graz', NULL, N'8010', N'Austria'),
(10268, N'ALFKI', 8, '1996-07-30', '1996-08-27', '1996-08-02', 3, 66.29, N'Alfreds Futterkiste', N'Obere Str. 57', N'Berlin', NULL, N'12209', N'Germany'),
(10269, N'ANATR', 5, '1996-07-31', '1996-08-14', '1996-08-09', 1, 4.56, N'Ana Trujillo Emparedados', N'Avda. de la Constitucion 2222', N'Mexico D.F.', NULL, N'05021', N'Mexico'),
(10270, N'ANTON', 1, '1996-08-01', '1996-08-29', '1996-08-02', 1, 136.54, N'Antonio Moreno Taqueria', N'Mataderos 2312', N'Mexico D.F.', NULL, N'05023', N'Mexico'),
(10271, N'AROUT', 6, '1996-08-01', '1996-08-29', '1996-08-30', 2, 4.54, N'Around the Horn', N'120 Hanover Sq.', N'London', NULL, N'WA1 1DP', N'UK'),
(10272, N'BERGS', 6, '1996-08-02', '1996-08-30', '1996-08-06', 2, 98.03, N'Berglunds snabbkop', N'Berguvsvagen 8', N'Lulea', NULL, N'S-958 22', N'Sweden'),
(10273, N'BLAUS', 3, '1996-08-05', '1996-09-02', '1996-08-12', 3, 76.07, N'Blauer See Delikatessen', N'Forsterstr. 57', N'Mannheim', NULL, N'68306', N'Germany'),
(10274, N'BLONP', 6, '1996-08-06', '1996-09-03', '1996-08-16', 1, 6.01, N'Blondel pere et fils', N'24, place Kleber', N'Strasbourg', NULL, N'67000', N'France'),
(10275, N'BOLID', 1, '1996-08-07', '1996-09-04', '1996-08-09', 1, 26.93, N'Bolido Comidas preparadas', N'C/ Araquil, 67', N'Madrid', NULL, N'28023', N'Spain'),
(10276, N'BONAP', 8, '1996-08-08', '1996-08-22', '1996-08-14', 3, 13.84, N'Bon app''', N'12, rue des Bouchers', N'Marseille', NULL, N'13008', N'France'),
(10277, N'BOTTM', 2, '1996-08-09', '1996-09-06', '1996-08-13', 3, 125.77, N'Bottom-Dollar Markets', N'23 Tsawassen Blvd.', N'Tsawassen', N'BC', N'T2F 8M4', N'Canada');
GO

SET IDENTITY_INSERT dbo.Orders OFF;
GO
