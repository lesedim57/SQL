
SELECT [SalesOrderID]
      ,[ordertype] = 'customer order'
      ,[OrderDate]
      
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
  Where year(OrderDate) = 2013
  union 
  Select purchaseorderid, [ordertype] = 'vendor type'
  ,orderdate
  
  from [Purchasing].[PurchaseOrderHeader]
  where year(OrderDate) = 2013
