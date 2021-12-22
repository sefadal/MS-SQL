--Select Tablodan kay�tlar� �ekmek i�in kullan�l�r
-- * t�m kolonlar� getirir
select * from Person.Person

--istedimiz kolonlar� getirmesi i�in
select 
FirstName,
MiddleName,
LastName,
Title
from
Person.Person

--where listelenecek olan veririnin hangi ko�ula veya kritere g�re getirmesini sa�lar

select FirstName,MiddleName,LastName,Title from Person.Person where Title = 'Ms.'

--PersonId'si 65 olan Ki�i

select FirstName,MiddleName,LastName,Title from Person.Person 
where BusinessEntityID = 65

--like kullan�m� (i�erisinde belirli bir karakter olan veya ba�layan 
--veya biten ile ilgili sorgular� �al��t�r�r)

--'R%' ile ba�layanlar� getirir
select FirstName,MiddleName,LastName,Title from Person.Person 
where FirstName like 'R%'

--'%R' ile bitenleri getirir
select FirstName,MiddleName,LastName,Title from Person.Person 
where FirstName like '%R'

--'%R%' ile i�eri�in herhangi bir yerinde varsa getirir
select FirstName,MiddleName,LastName,Title from Person.Person 
where FirstName like '%R%'

--in kullan�m�

select FirstName,MiddleName,LastName,Title from Person.Person 
where BusinessEntityID in (65,66,67,68)

--not in

select FirstName,MiddleName,LastName,Title from Person.Person 
where BusinessEntityID not in (65,66,67,68)

--and "ve" anlam�ndad�r

select FirstName,MiddleName,LastName,Title from Person.Person 
where Title = 'Mr.' and FirstName like 'Se%'

--or "veya" anlam�ndad�r

select FirstName,MiddleName,LastName,Title from Person.Person 
where FirstName like '%Re%' Or LastName like '%Re%'

--order by asc(A-Z VEYA 0-9) desc (Z-A VEYA 9-0) do�ru s�ralama ger�ekle�tirir

select FirstName,MiddleName,LastName,Title from Person.Person
order by FirstName

select FirstName,MiddleName,LastName,Title from Person.Person
order by FirstName desc

--order by hem ad hem soyada g�re s�ralama

select FirstName,MiddleName,LastName,Title from Person.Person
order by FirstName,LastName