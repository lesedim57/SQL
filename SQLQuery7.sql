/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
      [PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[Person]
  where [PersonType] != 'IN'