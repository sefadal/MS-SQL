
--Çalýþmak istenilen veritabaný bu þekilde seçilir
use Deneme

--yeni bir veritabaný oluþturmak için
--create database Deneme

--tablo oluþturmak için
--create table Tablo1
--(
--Id int,
--Adi varchar(50),
--DogumTarihi datetime not null
--)

--Yeni bir kolon eklemek için

alter table Tablo1 add Yas int

--Var olan kolonu silmek için

alter table Tablo1 drop column Yas

--Var olan Kolonun adýný deðiþtirmek için

exec sp_RENAME 'Tablo1.Adi', 'Soyad' , 'COLUMN'

--Tabloyu Silmek için

drop table Tablo1

--Veritabaný silmek için

drop database Deneme