--Select Tablodan kayýtlarý çekmek için kullanýlýr
-- * tüm kolonlarý getirir
select * from Person.Person

--istedimiz kolonlarý getirmesi için
select 
FirstName,
MiddleName,
LastName,
Title
from
Person.Person

--where listelenecek olan veririnin hangi koþula veya kritere göre getirmesini saðlar

select FirstName,MiddleName,LastName,Title from Person.Person where Title = 'Ms.'

--PersonId'si 65 olan Kiþi

select FirstName,MiddleName,LastName,Title from Person.Person 
where BusinessEntityID = 65

--like kullanýmý (içerisinde belirli bir karakter olan veya baþlayan 
--veya biten ile ilgili sorgularý çalýþtýrýr)

--'R%' ile baþlayanlarý getirir
select FirstName,MiddleName,LastName,Title from Person.Person 
where FirstName like 'R%'

--'%R' ile bitenleri getirir
select FirstName,MiddleName,LastName,Title from Person.Person 
where FirstName like '%R'

--'%R%' ile içeriðin herhangi bir yerinde varsa getirir
select FirstName,MiddleName,LastName,Title from Person.Person 
where FirstName like '%R%'

--in kullanýmý

select FirstName,MiddleName,LastName,Title from Person.Person 
where BusinessEntityID in (65,66,67,68)

--not in

select FirstName,MiddleName,LastName,Title from Person.Person 
where BusinessEntityID not in (65,66,67,68)

--and "ve" anlamýndadýr

select FirstName,MiddleName,LastName,Title from Person.Person 
where Title = 'Mr.' and FirstName like 'Se%'

--or "veya" anlamýndadýr

select FirstName,MiddleName,LastName,Title from Person.Person 
where FirstName like '%Re%' Or LastName like '%Re%'

--order by asc(A-Z VEYA 0-9) desc (Z-A VEYA 9-0) doðru sýralama gerçekleþtirir

select FirstName,MiddleName,LastName,Title from Person.Person
order by FirstName

select FirstName,MiddleName,LastName,Title from Person.Person
order by FirstName desc

--order by hem ad hem soyada göre sýralama

select FirstName,MiddleName,LastName,Title from Person.Person
order by FirstName,LastName