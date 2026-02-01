SET IDENTITY_INSERT dbo.Employees ON;
GO

INSERT INTO dbo.Employees (EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, ReportsTo) VALUES
(1, N'Davolio', N'Nancy', N'Sales Representative', N'Ms.', '1968-12-08', '1992-05-01', N'507 - 20th Ave. E. Apt. 2A', N'Seattle', N'WA', N'98122', N'USA', N'(206) 555-9857', N'5467', 2),
(2, N'Fuller', N'Andrew', N'Vice President, Sales', N'Dr.', '1952-02-19', '1992-08-14', N'908 W. Capital Way', N'Tacoma', N'WA', N'98401', N'USA', N'(206) 555-9482', N'3457', NULL),
(3, N'Leverling', N'Janet', N'Sales Representative', N'Ms.', '1963-08-30', '1992-04-01', N'722 Moss Bay Blvd.', N'Kirkland', N'WA', N'98033', N'USA', N'(206) 555-3412', N'3355', 2),
(4, N'Peacock', N'Margaret', N'Sales Representative', N'Mrs.', '1958-09-19', '1993-05-03', N'4110 Old Redmond Rd.', N'Redmond', N'WA', N'98052', N'USA', N'(206) 555-8122', N'5176', 2),
(5, N'Buchanan', N'Steven', N'Sales Manager', N'Mr.', '1955-03-04', '1993-10-17', N'14 Garrett Hill', N'London', NULL, N'SW1 8JR', N'UK', N'(71) 555-4848', N'3453', 2),
(6, N'Suyama', N'Michael', N'Sales Representative', N'Mr.', '1963-07-02', '1993-10-17', N'Coventry House Miner Rd.', N'London', NULL, N'EC2 7JR', N'UK', N'(71) 555-7773', N'428', 5),
(7, N'King', N'Robert', N'Sales Representative', N'Mr.', '1960-05-29', '1994-01-02', N'Edgeham Hollow Winchester Way', N'London', NULL, N'RG1 9SP', N'UK', N'(71) 555-5598', N'465', 5),
(8, N'Callahan', N'Laura', N'Inside Sales Coordinator', N'Ms.', '1958-01-09', '1994-03-05', N'4726 - 11th Ave. N.E.', N'Seattle', N'WA', N'98105', N'USA', N'(206) 555-1189', N'2344', 2),
(9, N'Dodsworth', N'Anne', N'Sales Representative', N'Ms.', '1969-07-02', '1994-11-15', N'7 Houndstooth Rd.', N'London', NULL, N'WG2 7LT', N'UK', N'(71) 555-4444', N'452', 5);
GO

SET IDENTITY_INSERT dbo.Employees OFF;
GO
