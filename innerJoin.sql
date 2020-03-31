/* 
SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person as P
INNER JOIN Person.EmailAddress PE ON p.BusinessEntityID = pe.BusinessEntityID;

*/

/*

SELECT TOP 10*
FROM Person.PhoneNumberType as PH

SELECT TOP 10*
FROM Person.PersonPhone

--BusinessEnityId, Name, PhoneNumberTypeId, PhoneNumber

SELECT  PP.Name, PP.PhoneNumberTypeId, P.BusinessEntityID, P.PhoneNumber
FROM Person.PhoneNumberType PP
INNER JOIN person.PersonPhone P ON PP.PhoneNumberTypeID = P.PhoneNumberTypeID

*/


/*
LEFT JOIN -

SELECT * 
FROM person.person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID

--WHERE PC.BusinessEntityID IS NULL (Para ver apenas as pessoas que não tem um cartão de crédrito cadastrado no sistema)

*/

/* 
UNION -

SELECT FirstName,LastName,MiddleName
FROM Person.Person
WHERE LastName = '%Gold%'
UNION
SELECT FirstName,LastName,MiddleName 
FROM Person.Person
WHERE  MiddleName = 'A'

*/
