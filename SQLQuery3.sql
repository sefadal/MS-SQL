--inner join bire bir join olarak anlam�na gelir.
--di�er tablodaki e�le�en verileleri listeler

--as sql de adland�rma olarak kullan�l�r

select p.BusinessEntityID,FirstName,LastName,PhoneNumber from Person.Person as p
inner join Person.PersonPhone as pp on
p.BusinessEntityID = pp.BusinessEntityID