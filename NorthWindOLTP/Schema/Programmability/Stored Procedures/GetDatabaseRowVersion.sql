CREATE PROCEDURE [dbo].[GetDatabaseRowVersion]
AS
BEGIN
	SELECT CAST(@@DBTS AS BIGINT) AS CurrentRowVersion;
END;
GO
