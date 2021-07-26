select 
OrderDate,
[ShipDate],
Processing = datediff(DAY, orderdate, shipdate)
from [Sales].[SalesOrderHeader]
order by Processing 

Select Getdate() +100

Select DATEADD(month,6,getdate())

select * 
from [Sales].[SalesOrderHeader]
where Orderdate between datefromparts(2013,12,18) and datefromparts(2013,12,25)