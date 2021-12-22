
--�al��mak istenilen veritaban� bu �ekilde se�ilir
use Deneme

--yeni bir veritaban� olu�turmak i�in
--create database Deneme

--tablo olu�turmak i�in
--create table Tablo1
--(
--Id int,
--Adi varchar(50),
--DogumTarihi datetime not null
--)

--Yeni bir kolon eklemek i�in

alter table Tablo1 add Yas int

--Var olan kolonu silmek i�in

alter table Tablo1 drop column Yas

--Var olan Kolonun ad�n� de�i�tirmek i�in

exec sp_RENAME 'Tablo1.Adi', 'Soyad' , 'COLUMN'

--Tabloyu Silmek i�in

drop table Tablo1

--Veritaban� silmek i�in

drop database Deneme