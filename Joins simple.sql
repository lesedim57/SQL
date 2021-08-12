/****** Script for SelectTopNRows command from SSMS  ******/
SELECT B.Salesquota,B.Bonus,B.SalesLastYear,
      A.[Title]
      ,A.[FirstName]
      ,A.[MiddleName]
	  ,A.LastName
	  ,c.CountryRegionCode
	  ,c.[Group]
     
  FROM [AdventureWorks2019].[Person].[Person] A 
  join [Sales].[SalesPerson] B
  on A.BusinessEntityID = b.BusinessEntityID
  join [AdventureWorks2019].[Sales].[SalesTerritory] C
  on C.TerritoryID = b.TerritoryID
  where c.[Group] = 'Europe' 
  AND b.SalesLastYear > 1500000

  Select C.FirstName,C.LastName,D.EmailAddress
  from Person.Person C 
  join Person.EmailAddress D
  on C.BusinessEntityID = D.BusinessEntityID

  select E.[Name], E.[ListPrice],F.[Reviewername], F.[Comments]
  from Production.Product E join Production.ProductReview F on E.ProductID = F.ProductID

  SELECT a.FirstName,
A.LastName,B.EmailAddress,C.PhoneNumber,E.City
From Person.Person A join Person.EmailAddress b on A.BusinessEntityID = B.BusinessEntityID
JOIN PersoN.PersonPhone c ON C.BusinessEntityID = A.BusinessEntityID
JOIN PERSON.BusinessEntityAddress D ON D.BusinessEntityID = C.BusinessEntityID
JOIN Person.[Address] E ON E.AddressID = D.AddressID
WHERE LEFT(C.PhoneNumber,3) = '713' 