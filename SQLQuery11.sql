/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
	[My Name or Query author]='Sedi'
	,[DepartmentID]
      ,[Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Department]