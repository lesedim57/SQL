
SELECT TOP (1000) [BusinessEntityID]
      
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      
  FROM [AdventureWorks2019].[HumanResources].[Employee]

  WHERE OrganizationLevel=4 AND (SalariedFlag=1 OR JobTitle='SENIOR TOOL DESIGNER')