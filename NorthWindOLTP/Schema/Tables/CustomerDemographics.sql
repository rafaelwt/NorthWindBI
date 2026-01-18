CREATE TABLE [dbo].[CustomerDemographics]
(
	[CustomerTypeID] [nchar](10) NOT NULL CONSTRAINT PK_CustomerDemographics PRIMARY KEY,
	[CustomerDesc]   [ntext]     NULL,
	[rowversion]     [timestamp] NOT NULL
);
