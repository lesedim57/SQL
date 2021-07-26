/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName],
      NEW =UPPER([FirstName]) + LOWER([FirstName])
  FROM [AdventureWorks2019].[Person].[Person]