Select 
a.FirstName,
a.LastName,
b.JobTitle,
c.Rate,
[average rate] = avg(c.rate)over(),
[max rate] = max(c.rate)over(),
[diff from avg rate] = (c.Rate-avg(c.rate)over()),
[Percent of Max Rate] = (c.rate/max(c.rate)over())
from person.Person A join HumanResources.Employee b on a.BusinessEntityID = b.BusinessEntityID
join HumanResources.EmployeePayHistory c on c.BusinessEntityID=a.BusinessEntityID
order by c.Rate desc

select [product name] = b.[Name],
b.ListPrice,
c.[Name] as [Product Subcategory],
d.[name] as [Product Category],
[Average price by category] = avg(b.listprice) over(partition by d.[name]),
[Average price by category and subcategory] = avg(b.listprice) over(partition by d.[name],c.name),
[product Vs Category Delta] = (b.ListPrice-avg(b.listprice) over(partition by d.[name]))

from Production.Product B join Production.ProductSubcategory c on c.ProductSubcategoryID=b.ProductSubcategoryID
join Production.ProductCategory d on d.ProductCategoryID = c.ProductCategoryID

