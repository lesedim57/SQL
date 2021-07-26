
SELECT DISTINCT
      
      [JobTitle]
      ,JOBCATEGORY= 
	  CASE 
	  WHEN JobTitle LIKE '%PRODUCTION%' THEN 'PRODUCTION'
	  WHEN JobTitle LIKE '%MANAGER%' THEN 'MANAGER'
	  ELSE 'OTHER'
	  END
  FROM [AdventureWorks2019].[HumanResources].[Employee]

  SELECT 
  [ListPrice],
  [NAME]
  ,[PRICE CATEGORY] = CASE
  WHEN ListPrice > 1000 THEN 'PREMMIUM'
  WHEN ListPrice > 100 THEN 'MIDRANGE'
  ELSE 'VALUE'
  END
  FROM [Production].[Product]
  ORDER BY ListPrice DESC

  SELECT [BusinessEntityID],[HireDate],[SalariedFlag]
  ,[EMPLOYEE TENURE]=  CASE
  WHEN SalariedFlag = 1 AND (DATEDIFF(YEAR,[HireDate],GETDATE()) > 10) THEN 'NON-EXEMPT - 10+ YEARS'
  WHEN SalariedFlag = 1 AND (DATEDIFF(YEAR,[HireDate],GETDATE()) BETWEEN 0 AND 10) THEN 'NON-EXEMPT - <10 YEARS'
  WHEN SalariedFlag = 0 AND (DATEDIFF(YEAR,[HireDate],GETDATE()) > 10) THEN ' EXEMPT - 10+ YEARS'
  WHEN SalariedFlag = 0 AND (DATEDIFF(YEAR,[HireDate],GETDATE()) BETWEEN 0 AND 10) THEN 'EXEMPT - < 10 YEARS'
  ELSE 'TOUGH'
  END 
  FROM HUMANRESOURCES.Employee