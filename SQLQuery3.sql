--inner join bire bir join olarak anlamýna gelir.
--diðer tablodaki eþleþen verileleri listeler

--as sql de adlandýrma olarak kullanýlýr

select p.BusinessEntityID,FirstName,LastName,PhoneNumber from Person.Person as p
inner join Person.PersonPhone as pp on
p.BusinessEntityID = pp.BusinessEntityID