/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
      [OrderDate]
	  ,orderyear= YEAR(ORDERDATE)
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
where YEAR(ORDERDATE) = 2011