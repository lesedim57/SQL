/****** Script for SelectTopNRows command from SSMS  ******/
SELECT[ProductID]
      ,[Name]
     
      ,[Color] = isnull([Color], 'none')
     
      ,[Size]
     
      ,[Weight]
 ,[Nweight]= isnull([weight],0)
  FROM [AdventureWorks2019].[Production].[Product]
  where isnull([Weight],0) <=10

  SELECT  
      [Title]
   ,[FirstName],[MiddleName],[LastName],ModifiedTitle=isnull(title, 'No title')
  FROM [AdventureWorks2019].[Person].[Person]
  where modifiedtitle is 