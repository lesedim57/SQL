SELECT FIRSTNAME, LASTNAME 
FROM PERSON.PERSON 
WHERE LEN(LASTNAME) >= 10
ORDER BY LASTNAME DESC