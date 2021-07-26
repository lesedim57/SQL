Select distinct BusinessEntityID, PhoneNumber,  [area code] = left(PhoneNumber,3)
,[Phone number len] =len(PhoneNumber)
from AdventureWorks2019.Person.PersonPhone
/*where PhoneNumber not like '%(%'*/
where len(PhoneNumber)=12