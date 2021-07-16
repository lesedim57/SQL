SELECT TOP (1000) 
      [PersonType]
      
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,LastName
  FROM [AdventureWorks2019].[Person].[Person]
  WHERE PersonType = 'SP' OR [PersonType] ='EM' OR [PersonType] = 'VC'