select BusinessEntityID,
[weekly pay] =rate/40

from HumanResources.EmployeePayHistory
order by [weekly pay]desc
