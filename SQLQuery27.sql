SELECT 
      
      [NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      
      ,[AdditionalContactInfo]
      ,[Demographics]
     
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE FirstName LIKE 'T%' and MiddleName LIKE 'l%' AND LastName LIKE 'C%'