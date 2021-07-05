CREATE OR ALTER PROCEDURE GetAllCustomers 
AS
SELECT [Id]
      ,[FirstName]
      ,[LastName]
      ,[Country]
      ,[Phone]
  FROM [store-db-emmateva18].[dbo].[Customer]