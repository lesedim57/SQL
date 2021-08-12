SELECT A.PurchaseOrderID as [OrderId],
A.PurchaseOrderDetailID as OrderdatailID,
A.OrderQty,
A.UnitPrice,
A.LineTotal,
B.ORDERDATE,
[ORDERSIZE CATEGORY]= CASE
WHEN A.OrderQty >500 THEN 'LARGE'
WHEN A.OrderQty >50 THEN 'MEDIUM'
ELSE 'SMALL' END,
[PRODUCT NAME]= C.[NAME],
SUBCATEGORY = ISNULL(D.[Name],'NONE'),
CATEGORY = ISNULL(E.[Name],'NONE'),
[order type] = 'Purchase'

FROM Purchasing.PurchaseOrderDetail A LEFT JOIN Purchasing.PurchaseOrderHeader B ON A.PurchaseOrderID = B.PurchaseOrderID
LEFT JOIN Production.Product C ON C.ProductID = A.ProductID LEFT JOIN Production.ProductSubcategory D ON D.ProductSubcategoryID = C.ProductSubcategoryID
LEFT JOIN Production.ProductCategory E ON E.ProductCategoryID = D.ProductCategoryID

 WHERE MONTH(B.ORDERDATE) > 10 
 --order by b.OrderDate desc
  
  union 

  SELECT A.SalesOrderID as [OrderId],
A.SalesOrderDetailID as OrderdatailID,
A.OrderQty,
A.UnitPrice,
A.LineTotal,
B.ORDERDATE,
[ORDERSIZE CATEGORY]= CASE
WHEN A.OrderQty >500 THEN 'LARGE'
WHEN A.OrderQty >50 THEN 'MEDIUM'
ELSE 'SMALL' END,
[PRODUCT NAME]= C.[NAME],
SUBCATEGORY = ISNULL(D.[Name],'NONE'),
CATEGORY = ISNULL(E.[Name],'NONE'),
[order type] = 'Sale'

FROM Sales.SalesOrderDetail A LEFT JOIN Sales.SalesOrderHeader B ON A.SalesOrderID = B.SalesOrderID
LEFT JOIN Production.Product C ON C.ProductID = A.ProductID LEFT JOIN Production.ProductSubcategory D ON D.ProductSubcategoryID = C.ProductSubcategoryID
LEFT JOIN Production.ProductCategory E ON E.ProductCategoryID = D.ProductCategoryID

 WHERE MONTH(B.ORDERDATE) > 10 

 order by b.OrderDate desc