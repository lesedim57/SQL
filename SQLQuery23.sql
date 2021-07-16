SELECT  [PurchaseOrderID]
     
      ,[OrderDate]
      
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
    ,SubTotal
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  WHERE SubTotal BETWEEN 10000 AND 30000