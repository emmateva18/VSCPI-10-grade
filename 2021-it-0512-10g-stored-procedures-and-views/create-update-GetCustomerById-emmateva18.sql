CREATE OR ALTER PROCEDURE GetCustomerById 
@Id int
AS
SELECT [Id]
      ,[FirstName]
      ,[LastName]
      ,[City]
      ,[Country]
      ,[Phone]
  FROM [store-db-emmateva18].[dbo].[Customer]
  WHERE Id = @Id