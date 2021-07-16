/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
      [PersonType]
      
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,LastName
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE FirstName = 'LAURA' AND LastName ='NORMAN'