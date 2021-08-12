
SELECT [order id] = [PurchaseOrderID]
      ,[order detail id] = [PurchaseOrderDetailID]
      ,[OrderQty]
      ,[LineTotal]
	  ,[Order Type]= 'Purchase'
	  , [Run Date] = getdate()
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]
  where LineTotal > 10000
 
 Union 
select [SalesOrderID]
,SalesOrderDetailID
,[OrderQty]
,[LineTotal]
,[Order Type]= 'Sale'
, [Run Date] = getdate()
from [Sales].[SalesOrderDetail]
where LineTotal >10000
order by LineTotal desc