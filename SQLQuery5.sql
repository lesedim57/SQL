SELECT [CURRENT DATE] = GETDATE()
,fIRSTOFMONTH= DATEFROMPARTS(YEAR(GETDATE()),MONTH(GETDATE()),1)
,[FIRST DAY OF PREVIOUS MONTH]=DATEADD(MONTH,-1,DATEFROMPARTS(YEAR(GETDATE()),MONTH(GETDATE()),1))
,[LAST DAY OF PREVIOUS MONTH] = DATEFROMPARTS(YEAR(GETDATE()),MONTH(GETDATE()),1)-1
sELECT LASTWEEK = GETDATE()-7