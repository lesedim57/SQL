select A.[BusinessEntityID]
      ,A.[PersonType]
	  ,[FullName] = 
			A.[FirstName] + ' ' +
			CASE WHEN A.[MiddleName] IS NULL THEN '' ELSE A.[MiddleName] + ' ' END +
			A.[LastName]
	  ,[Address] = C.[AddressLine1]
	  ,C.[City]
	  ,C.[PostalCode]
	  ,[State] = D.[Name]
	  ,[Country] = E.[Name]
	  ,isnull(f.JobTitle,'NONE') as [job title]
	  ,[job category] = case 
	  when f.JobTitle like '%Manager%' then 'Management'
	  when f.JobTitle like '%President%' then 'Management'
	  when f.JobTitle like '%Executive%' then 'Management'
	  when f.JobTitle like '%Engineering%' then 'Engineering'
	  when f.JobTitle like '%Production%' then 'Production'
	  when f.JobTitle like '%Marketing%' then 'Marketing'
	  when f.JobTitle in ('Recruiter','Benefits Specialist','Human Resources Administrative Assistant') then 'Human Resources'
	  else 'Broke'
	  end 

FROM [AdventureWorks2019].[Person].[Person] A
JOIN [AdventureWorks2019].[Person].[BusinessEntityAddress] B
	ON A.[BusinessEntityID] = B.[BusinessEntityID]
JOIN [AdventureWorks2019].[Person].[Address] C
	ON B.[AddressID] = C.[AddressID]
JOIN [AdventureWorks2019].[Person].[StateProvince] D
	ON C.[StateProvinceID] = D.[StateProvinceID]
JOIN [AdventureWorks2019].[Person].[CountryRegion] E
	ON D.[CountryRegionCode] = E.[CountryRegionCode]
JOIN AdventureWorks2019.HumanResources.Employee F
	on F.BUSINESSENTITYID = A.BUSINESSENTITYID

WHERE (LEFT(C.[PostalCode], 1) = '9' AND LEN(C.[PostalCode]) = 5 AND E.[Name] = 'United States')
	OR A.[PersonType] = 'SP'