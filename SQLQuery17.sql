SELECT [BusinessEntityID]
      ,Gender
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

  WHERE Gender='F' AND JobTitle IN('NETWORK MANAGER','APPLICATION SPECIALIST')