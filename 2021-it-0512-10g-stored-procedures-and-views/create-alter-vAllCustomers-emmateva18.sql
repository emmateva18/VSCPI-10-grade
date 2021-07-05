/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[FirstName]
      ,[LastName]
      ,[City]
      ,[Country]
      ,[Phone]
  FROM [store-db-emmateva18].[dbo].[vAllCustomers]