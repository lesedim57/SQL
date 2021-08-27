Select 
[Product name] = a.[Name],
a.ListPrice,
[Product Sub Category] = b.[Name],
[Product Category] = c.[Name],
[Price rank] = row_number() over(order by a.listprice desc),
[Category Price rank] = row_number() over(partition by c.[Name] order by a.listprice desc),
[Top 5 price in Category]= Case 
when rank() over(partition by c.[Name] order by a.listprice desc)<6 then 'Yes'
else 'No' 
END,
[Category price by rank] =  Rank() over(partition by c.[Name] order by a.listprice desc)
from AdventureWorks2019.Production.Product A 
join AdventureWorks2019.Production.ProductSubcategory b on a.ProductSubcategoryID= b.ProductSubcategoryID
join AdventureWorks2019.Production.ProductCategory c on c.ProductCategoryID=b.ProductCategoryID

