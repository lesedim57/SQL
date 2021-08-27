select firstname,
[count] = count(firstname)
from Person.Person
 group by firstname
 having count(*)>50
 order by [count] desc

 select a.[Name],
 [count of sales] = count(*),
 [total sales] = sum(b.linetotal)
 from Production.Product a join Purchasing.PurchaseOrderDetail b on a.ProductID = b.ProductID
 where a.[Name] not like '%[0-9]%'
 group by a.[name] 
  having sum(b.linetotal) <10000
  order by [count of sales] desc
  select count([PurchaseOrderID])

from purchasing.purchaseorderheader
where TotalDue >20000

Select [Total Sum] = sum(totaldue)*1.0
from purchasing.purchaseorderheader

Select max(totaldue)
from purchasing.purchaseorderheader
 
 select 
[count of products] = count(ProductID),
Color = isnull(Color,'No Color'),
Style = isnull(Style,'NA')
from [Production].[Product]
group by Color,Style