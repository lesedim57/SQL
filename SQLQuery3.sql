select BusinessEntityID,
VacationHours,
SickLeaveHours,
[total time off] = VacationHours + SickLeaveHours,
[total days off]  = VacationHours + SickLeaveHours/8.0


from adventureworks2019.HumanResources.Employee
Where [SalariedFlag] = 0
order by [total days off] desc