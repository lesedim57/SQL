Select
PurchaseOrderID,
	VendorID,
	OrderDate,
	TaxAmt,
	Freight,
	TotalDue
	from
(select 
PurchaseOrderID,
VendorID,
OrderDate,
TaxAmt,
Freight,
TotalDue,
[RankedVendor] = rank() over(partition by VendorID order by totaldue desc)
from Purchasing.PurchaseOrderHeader
--order by VendorID, TotalDue desc
) A

where RankedVendor <= 3