--COUNT OF GENDERS IN PROGRAMS

SELECT 
*
FROM 
	(	
		SELECT 
		B.GENDER
		--,b.ETHNIC
		--,B.RACE
		,A.CIP
		,A.PROGRAM
		--,A.DEGREE_TYPE
		  FROM [LMDW].[lmg].[SA_CREDENTIALS] A join lmg.SA_DEMOGRAPHICS B
		  on A.PERSON_ID = B.PERSON_ID 		  
	) A
	Pivot(
	COUNT(program)
	FOR GENDER IN([F],[M])
	) B
	

	

