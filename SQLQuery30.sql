/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [SalesOrderID]
   ,OrderDate
      ,[SalesPersonID]
      ,[TerritoryID]
    
      ,[SubTotal]
     
      ,[TotalDue]
    
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
  WHERE TotalDue>10000
  ORDER BY TotalDue DESC