Select 
a.PurchaseOrderID,
A.OrderDate,
a.TotalDue,
b.[Name],
[Prev Order From Vendor Amount] = lag(a.TotalDue,1) over(partition by a.vendorID order by a.orderdate),
[Next Order By Employee Vendor] = lead(b.[Name],1) over(partition by a.employeeID order by a.orderdate ),
Next2OrderByEmployeeVendor = LEAD(B.Name,2) OVER(PARTITION BY A.EmployeeID ORDER BY A.OrderDate)
from Purchasing.PurchaseOrderHeader A join Purchasing.Vendor B on a.VendorID = b.BusinessEntityID

Where year(a.OrderDate) > 2013 and a.TotalDue>500
order by a.EmployeeID, a.OrderDate