select 
cast(getdate()-1 as date)

select 
cast(getdate() + datediff(day,getdate(),datefromparts(2021,12,31))as date) 

select 
[BusinessEntityID],[Title],[FirstName],MiddleName,[LastName],[Suffix], [PersonalID] = [PersonType] + '-' + cast(businessEntityID as varchar)
from [Person].[Person]
where MiddleName is not null and (Title is not null or Suffix is not null)