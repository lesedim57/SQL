SELECT [BusinessEntityID]
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
   
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE FirstName like 'Tom%' and LastName like 'B%'