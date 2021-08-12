select 
a.BusinessEntityID,a.SalesQuota, a.SalesYTD, b.[Name] TerritoryName

from sales.SalesPerson a left join Sales.SalesTerritory b 
on a.TerritoryID= b.TerritoryID
where a.SalesYTD <2000000

Select A.SalesOrderID,A.OrderDate,A.TotalDue,
[PCT OF SALES YTD] = ((A.TotalDue/B.SalesYTD)*100),B.SalesYTD,C.SalesOrderDetailID,C.LineTotal

from Sales.SalesOrderHeader A LEFT JOIN Sales.SalesPerson B 
ON A.SalesPersonID = B.BusinessEntityID AND B.SalesYTD < 2000000
JOIN SALES.SalesOrderDetail C ON C.SalesOrderID = A.SalesOrderID
WHERE A.TotalDue > 2000
ORDER BY A.SalesOrderID
