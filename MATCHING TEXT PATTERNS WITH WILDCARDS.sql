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
  WHERE FirstName NOT LIKE '[A,E,I,O,U]%'