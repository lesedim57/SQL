
SELECT TOP (1000) [BusinessEntityID]
      ,[PersonType]
      
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE PersonType IN ('EM','SP') AND (Title IS NULL OR MiddleName IS NULL)