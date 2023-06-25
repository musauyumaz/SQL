-- @@IDENTITY, SCOPE_IDENTITY() ve IDENT_CURRENT() Komutlarý

-- == @@IDENTITY
-- Açýlmýþ olan baðlantýda(connection); tablo yahut sorgunun çalýþtýðý scope'a bakmaksýzýn son üretilen identity deðerini vermektedir.
-- Dikkat ! ! !
-- Trigger kullanýlan sorgularda yanlýþ sonuç alma ihtimalinden dolayý kullanýlmasý tavsiye edilmez.

INSERT Personeller(Adi,SoyAdi) VALUES('MUÝDDÝN','ÝMPATRÝNO') 
SELECT @@IDENTITY

-- == SCOPE_IDENTITY()
-- Açýlmýþ olan baðlantýda(connection) ve sorgunun çalýþtýðý scope'ta son üretilen identity deðerini döndürür.
-- Dikkat ! ! !
-- Trigger kullanýlan sorgularda @@IDENTITY yerine bu fonksiyonun kullanýlmasý tavsiye edilir.

INSERT Personeller(Adi,SoyAdi) VALUES('MUÝDDÝN','ÝMPATRÝNO') 
SELECT SCOPE_IDENTITY()

-- == IDENT_CURRENT('TabloAdi')
-- Baðlantý ve sorgunun çalýþtýrýldýðý scope'a bakmaksýzýn parametre olarak verilen tabloda üretilen sonuncu identity deðerini döndürür.

CREATE DATABASE ORNEKVERITABANI
GO
CREATE TABLE ORNEKTABLO1
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
)
GO 
CREATE TABLE ORNEKTABLO2
(
	ID INT PRIMARY KEY IDENTITY,
	KOLON1 NVARCHAR(MAX),
	KOLON2 NVARCHAR(MAX),
)

USE ORNEKVERITABANI

CREATE TRIGGER KONTROL
ON ORNEKTABLO1 FOR INSERT 
AS 
INSERT ORNEKTABLO2 VALUES('','')

INSERT ORNEKTABLO2 VALUES('1','1')
INSERT ORNEKTABLO2 VALUES('2','2')
INSERT ORNEKTABLO2 VALUES('3','3')
INSERT ORNEKTABLO2 VALUES('4','4')
INSERT ORNEKTABLO2 VALUES('5','5')

INSERT ORNEKTABLO1 VALUES('6','6')

SELECT @@IDENTITY
UNION ALL
SELECT SCOPE_IDENTITY()
UNION ALL
SELECT IDENT_CURRENT('ORNEKTABLO1')
