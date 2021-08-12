select 

--[first of the month] = datefromparts(year(getdate()),month(getdate()),1),
--[Last day of month] = dateadd(day,-1,dateadd(month,1,datefromparts(year(getdate()),month(getdate()),1))),
--[first day of next month] =  dateadd(month,1,datefromparts(year(getdate()),month(getdate()),1)),
[Days until last day of the month] = datediff(day,getdate(),dateadd(day,-1,dateadd(month,1,datefromparts(year(getdate()),month(getdate()),1))))
