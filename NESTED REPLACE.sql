/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [ReviewerName]
      
      ,[Comments]
      ,CLEANED = REPLACE(REPLACE([Comments], ',', ''), '.', '')
  FROM [AdventureWorks2019].[Production].[ProductReview]