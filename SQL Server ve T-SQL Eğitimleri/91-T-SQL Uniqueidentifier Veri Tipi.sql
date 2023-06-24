-- UNIQUEIDENTIFIER Veri Tipi
-- INT VARCHAR vs. gibi bir veri tipidir.
-- Aldýðý deðer, rakamlar ve harflerden oluþan çok büyük bir sayýdýr.
-- Bundan dolayý bu kolona ayný deðerin birden fazla kez gelmesi neredeyse imkansýzdýr.
-- O yüzden tekil bir veri oluþturmak için kullanýlýr.
-- Genellikle biz bu türü yazmýþ olduðun bir sistemde kullanýcý kayýt yaptýðý zaman ilgili kullanýcýdan mail onayý istiyorsak UNIQUEIDENTIFIER'la bir linki kullanýcýya göndeririz. O link o kullanýcýya özel olur kullanýcý linke týkladýðýnda ilgili UNIQUEIDENTIFIER'a özel kullanýcýyý kýyaslarýz eðer öyle bir kullanýcý varsa o kullanýcýyý aktifleþtiririz.

CREATE TABLE ORNEKTABLO2
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
	KOLON3 UNIQUEIDENTIFIER
)
--NEWID Fonksiyonu
--NEWID Fonksiyonu anlýk olarak random yani rastgele bir þekilde UNIQUEIDENTIFIER tipinde veri üretmemizi saðlamakta 

SELECT NEWID()
INSERT ORNEKTABLO2 VALUES('X','Y',NEWID())

SELECT * FROM ORNEKTABLO2